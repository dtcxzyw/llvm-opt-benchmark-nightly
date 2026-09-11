Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 721
loop-unroll.NumUnrolled: 859
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_154Btree_HeterogeneousLookupDoesntDegradePerformance_Test8TestBodyEv:bb.a
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411: ; preds = %bb.ed
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !813
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rv, i64 noundef %i.rz) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411
  call void @_ZdlPvm(ptr noundef nonnull %i.ru, i64 noundef 32) #36
  br label %._crit_edge.i.i.i415

._crit_edge.i.i.i415:                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, %.critedge133
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #37
  %i.sa = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.sa, ptr %36, align 8, !tbaa !814
  store i16 12341, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 2, ptr %i.sb, align 8, !tbaa !811
  %i.sc = getelementptr inbounds nuw i8, ptr %36, i64 18
  store i8 0, ptr %i.sc, align 2, !tbaa !813
  store i32 1, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_110StringLike18constructor_calls_E, align 4, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE11equal_rangeIS5_EESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSD_EESG_ERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %1, ptr %.val141, ptr %.val142, ptr nonnull readonly %i.sa, i64 2)
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8 ; 7 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 8 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.sd, align 8 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 4 uses
  %i.se = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.01.0.copyload.i ; 2 uses
  br i1 %i.se, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %._crit_edge.i.i.i415
  %i.sf = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 11
  %.val.i.i.i429 = load i8, ptr %i.sf, align 1, !tbaa !813, !noalias !9443
  %.not.i.i.i430 = icmp eq i8 %.val.i.i.i429, 0
  br i1 %.not.i.i.i430, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.sg = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i
  %i.sh = sext i32 %i.sg to i64
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmiENS2_IKS8_SA_SB_EE.exit.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.si = icmp eq i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i
  br i1 %i.si, label %.loopexit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i.i.i415
  %i.sj = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 11
  %.val62.i.i.i.i = load i8, ptr %i.sj, align 1, !tbaa !813, !noalias !9443
  %.not4.i.i.i.i = icmp eq i8 %.val62.i.i.i.i, 0
  %i.sk = sub nsw i32 0, %.sroa.22.0.copyload.i
  %i.sl = sext i32 %i.sk to i64
  br i1 %.not4.i.i.i.i, label %bb.ei, label %._crit_edge.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 240
  %i.sn = add i32 %.sroa.22.0.copyload.i, 1
  %i.so = and i32 %i.sn, 255
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.sp
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !1341, !noalias !9443 ; 3 uses
  %.phi.trans.insert.i.i.i.i427 = getelementptr i8, ptr %i.sr, i64 11
  %.148.val6818.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i427, align 1, !tbaa !813, !noalias !9443
  %i.ss = icmp eq i8 %.148.val6818.pre.i.i.i.i, 0
  br i1 %i.ss, label %.lr.ph.i.i.i.i428, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i428:                                ; preds = %bb.ei, %.lr.ph.i.i.i.i428
  %.14820.i.i.i.i = phi ptr [ %.148.val72.i.i.i.i, %.lr.ph.i.i.i.i428 ], [ %i.sr, %bb.ei ]
  %i.st = getelementptr i8, ptr %.14820.i.i.i.i, i64 240
  %.148.val72.i.i.i.i = load ptr, ptr %i.st, align 8, !tbaa !1341, !noalias !9443 ; 3 uses
  %i.su = getelementptr i8, ptr %.148.val72.i.i.i.i, i64 11
  %.148.val68.i.i.i.i = load i8, ptr %i.su, align 1, !tbaa !813, !noalias !9443
  %.not.i73.i.i.i.i = icmp eq i8 %.148.val68.i.i.i.i, 0
  br i1 %.not.i73.i.i.i.i, label %.lr.ph.i.i.i.i428, label %._crit_edge.i.i.i.i, !llvm.loop !9433

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i428, %bb.ei, %bb.eh
  %.04442.i.i.i.i = phi i64 [ 1, %bb.ei ], [ %i.sl, %bb.eh ], [ 1, %.lr.ph.i.i.i.i428 ]
  %.148.lcssa.i.i.i.i = phi ptr [ %i.sr, %bb.ei ], [ %.sroa.01.0.copyload.i, %bb.eh ], [ %.148.val72.i.i.i.i, %.lr.ph.i.i.i.i428 ] ; 2 uses
  %i.sv = getelementptr i8, ptr %.148.lcssa.i.i.i.i, i64 8
  %.148.val.i.i.i.i = load i8, ptr %i.sv, align 1, !tbaa !813, !noalias !9443
  %i.sw = zext i8 %.148.val.i.i.i.i to i64
  %.148.val65.i.i.i.i = load ptr, ptr %.148.lcssa.i.i.i.i, align 8, !tbaa !1341, !noalias !9443
  %i.sx = sext i32 %.sroa.2.0.copyload.i to i64   ; 3 uses
  br label %bb.ej

bb.ej:                                            ; preds = %.backedge, %._crit_edge.i.i.i.i
  %.246.i.i.i.i = phi i64 [ %.04442.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.tm, %.backedge ] ; 2 uses
  %.142.i.i.i.i = phi i64 [ %i.sw, %._crit_edge.i.i.i.i ], [ %.142.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.1.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 240
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %.142.i.i.i.i
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !1341, !noalias !9443 ; 3 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 11
  %.val67.i.i.i.i = load i8, ptr %i.tb, align 1, !tbaa !813, !noalias !9443
  %.not.i74.i.i.i.i = icmp eq i8 %.val67.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.ek

.lr.ph24.i.i.i.i:                                 ; preds = %bb.ej, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.ta, %bb.ej ]
  %i.tc = getelementptr i8, ptr %.24923.i.i.i.i, i64 240
  %.249.val71.i.i.i.i = load ptr, ptr %i.tc, align 8, !tbaa !1341, !noalias !9443 ; 5 uses
  %i.td = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val66.i.i.i.i = load i8, ptr %i.td, align 1, !tbaa !813, !noalias !9443
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !9434

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.te = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val.i.i.i.i = load i8, ptr %i.te, align 1, !tbaa !813, !noalias !9443
  %i.tf = zext i8 %.249.val.i.i.i.i to i64
  %.249.val64.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !1341, !noalias !9443
  br label %bb.ek

bb.ek:                                            ; preds = %._crit_edge25.i.i.i.i, %bb.ej
  %.350.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %i.ta, %bb.ej ] ; 2 uses
  %.243.i.i.i.i = phi i64 [ %i.tf, %._crit_edge25.i.i.i.i ], [ %.142.i.i.i.i, %bb.ej ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %.249.val64.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %.1.i.i.i.i, %bb.ej ] ; 4 uses
  %i.tg = icmp eq ptr %.350.i.i.i.i, %.sroa.0.0.copyload.i
  br i1 %i.tg, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.th = icmp eq ptr %.2.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ti = icmp eq i64 %.243.i.i.i.i, %i.sx
  %or.cond.i.i.i.i = select i1 %i.th, i1 %i.ti, i1 false
  %i.tj = getelementptr i8, ptr %.350.i.i.i.i, i64 10
  %.350.val70.i.i.i.i = load i8, ptr %i.tj, align 1, !tbaa !813, !noalias !9443
  %i.tk = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tl = add i64 %.246.i.i.i.i, 1
  %i.tm = add i64 %i.tl, %i.tk
  %i.tn = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.tn, align 1, !tbaa !813, !noalias !9443
  %i.to = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.to
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.en, %bb.em
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.em ], [ %i.tq, %bb.en ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.em ], [ %.3.val63.i.i.i.i, %bb.en ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.ej, !llvm.loop !9435

.preheader5.i.i.i.i:                              ; preds = %bb.em, %bb.en
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.en ], [ %.2.i.i.i.i, %bb.em ] ; 2 uses
  %i.tp = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.tp, align 1, !tbaa !813, !noalias !9443 ; 2 uses
  %i.tq = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !1341, !noalias !9443 ; 4 uses
  %i.tr = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ts = icmp eq i64 %i.tq, %i.sx
  %or.cond61.i.i.i.i = select i1 %i.tr, i1 %i.ts, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %.preheader5.i.i.i.i
  %i.tt = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i419 = load i8, ptr %i.tt, align 1, !tbaa !813, !noalias !9443
  %.not.i.i.i.i420 = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i419
  br i1 %.not.i.i.i.i420, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !9436

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i: ; preds = %bb.ek, %bb.el, %.preheader5.i.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.tk, %.preheader5.i.i.i.i ], [ %i.sx, %bb.ek ], [ %i.tk, %bb.el ]
  %.051.i.i.i.i = add i64 %.pn.i.i.i.i, %.246.i.i.i.i
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmiENS2_IKS8_SA_SB_EE.exit.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmiENS2_IKS8_SA_SB_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, %bb.ef
  %.0.i.i.i421 = phi i64 [ %i.sh, %bb.ef ], [ %.051.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i ] ; 5 uses
  %i.tu = icmp eq i64 %.0.i.i.i421, 0
  br i1 %i.tu, label %.loopexit, label %bb.eo

bb.eo:                                            ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmiENS2_IKS8_SA_SB_EE.exit.i.i
  %i.tv = icmp eq i64 %.0.i.i.i421, %i.gl
  br i1 %i.tv, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5clearEv.exit.i.i, label %bb.ep

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5clearEv.exit.i.i: ; preds = %bb.eo
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE16clear_and_deleteEPS7_PSaIS5_E(ptr noundef %.val141), !noalias !9443
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE9EmptyNodeEvE10empty_node, ptr %4, align 8, !tbaa !1341, !noalias !9443
  store i64 0, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  br label %.loopexit

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.se, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.tw = trunc i32 %.sroa.22.0.copyload.i to i8
  %i.tx = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i
  %i.ty = trunc i32 %i.tx to i8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13remove_valuesEhhPSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.01.0.copyload.i, i8 noundef zeroext %i.tw, i8 noundef zeroext %i.ty), !noalias !9443
  %i.tz = sub i64 %i.gl, %.0.i.i.i421
  store i64 %i.tz, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  %i.ua = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !9443 ; 0 uses
  br label %.loopexit

bb.er:                                            ; preds = %bb.ep
  %i.ub = sub i64 %i.gl, %.0.i.i.i421             ; 2 uses
  %.not124.i.i = icmp ult i64 %i.gl, %.0.i.i.i421
  br i1 %.not124.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.er, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i
  %i.uc = phi i64 [ %i.xu, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i ], [ %i.gl, %bb.er ]
  %.sroa.13.091.i.i = phi i32 [ %.sroa.13.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i ], [ %.sroa.22.0.copyload.i, %bb.er ] ; 9 uses
  %.sroa.063.090.i.i = phi ptr [ %.sroa.063.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i ], [ %.sroa.01.0.copyload.i, %bb.er ] ; 9 uses
  %i.ud = getelementptr i8, ptr %.sroa.063.090.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.ud, align 1, !tbaa !813, !noalias !9443
  %.not.i.i422 = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i422, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.lr.ph.i.i
  %i.ue = sub nuw i64 %i.uc, %i.ub
  %i.uf = getelementptr i8, ptr %.sroa.063.090.i.i, i64 10
  %.val.i.i423 = load i8, ptr %i.uf, align 1, !tbaa !813, !noalias !9443
  %i.ug = zext i8 %.val.i.i423 to i32
  %i.uh = sub nsw i32 %i.ug, %.sroa.13.091.i.i
  %i.ui = sext i32 %i.uh to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ue, i64 %i.ui) ; 2 uses
  %i.uj = trunc i64 %.sroa.speculated.i.i to i8
  %i.uk = trunc i32 %.sroa.13.091.i.i to i8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13remove_valuesEhhPSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.063.090.i.i, i8 noundef zeroext %i.uk, i8 noundef zeroext %i.uj), !noalias !9443
  %i.ul = and i64 %.sroa.speculated.i.i, 255
  %i.um = load i64, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  %i.un = sub i64 %i.um, %i.ul
  store i64 %i.un, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  %i.uo = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %.sroa.063.090.i.i, i32 %.sroa.13.091.i.i), !noalias !9443 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.uo, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.uo, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i

bb.et:                                            ; preds = %.lr.ph.i.i
  %i.up = trunc i32 %.sroa.13.091.i.i to i8
  %.mask.i.i.i = and i32 %.sroa.13.091.i.i, 255
  %i.uq = zext nneg i32 %.mask.i.i.i to i64       ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i, i64 16 ; 4 uses
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.uq ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !810, !noalias !9443 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 16 ; 2 uses
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %.thread.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i: ; preds = %bb.et
  %i.uw = load i64, ptr %i.uu, align 8, !tbaa !813, !noalias !9443
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.ux) #36, !noalias !9443
  %.val10.i.pre.i.i = load i8, ptr %i.ud, align 1, !tbaa !813, !noalias !9443
  %i.uy = icmp eq i8 %.val10.i.pre.i.i, 0
  br i1 %i.uy, label %.thread.i.i.i.i.i, label %bb.ev

.thread.i.i.i.i.i:                                ; preds = %bb.et, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i, i64 240
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.uq
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.va, align 8, !tbaa !1341, !noalias !9443 ; 3 uses
  %i.vb = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.vb, align 1, !tbaa !813, !noalias !9443
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %i.vc = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.vc, align 1, !tbaa !813, !noalias !9443
  %i.vd = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 240
  %i.ve = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.ve
  %.117.i.i.i.i.i.i = load ptr, ptr %i.vf, align 8, !tbaa !1341, !noalias !9443 ; 3 uses
  %i.vg = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.vg, align 1, !tbaa !813, !noalias !9443
  %.not.i.i.i.i.i.i.i425 = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i425, label %.lr.ph31.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i, !llvm.loop !9437

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.vh = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.vh, align 1, !tbaa !813, !noalias !9443
  %i.vi = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.vj = add nsw i32 %i.vi, -1                   ; 2 uses
  %i.vk = sext i32 %.sroa.13.091.i.i to i64
  %i.vl = sext i32 %i.vj to i64
  %i.vm = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.vk ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 16
  %i.vo = getelementptr inbounds nuw [32 x i8], ptr %i.vn, i64 %i.vl ; 5 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 3 uses
  store ptr %i.vp, ptr %i.vm, align 8, !tbaa !814, !noalias !9443
  %i.vq = load ptr, ptr %i.vo, align 8, !tbaa !810, !noalias !9443 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 16 ; 5 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %bb.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !811, !noalias !9443 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, 16
  call void @llvm.assume(i1 %i.vv)
  %i.vw = add nuw nsw i64 %i.vu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vp, ptr noundef nonnull align 8 dereferenceable(1) %i.vr, i64 %i.vw, i1 false), !noalias !9443
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i
  store ptr %i.vq, ptr %i.vm, align 8, !tbaa !810, !noalias !9443
  %i.vx = load i64, ptr %i.vr, align 8, !tbaa !813, !noalias !9443
  store i64 %i.vx, ptr %i.vp, align 8, !tbaa !813, !noalias !9443
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.eu
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vo, i64 8 ; 2 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !811, !noalias !9443
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !811, !noalias !9443
  store ptr %i.vr, ptr %i.vo, align 8, !tbaa !810, !noalias !9443
  store i64 0, ptr %i.vy, align 8, !tbaa !811, !noalias !9443
  store i8 0, ptr %i.vr, align 8, !tbaa !813, !noalias !9443
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i

bb.ev:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i
  %i.wb = add i8 %i.up, 1                         ; 3 uses
  %i.wc = getelementptr i8, ptr %.sroa.063.090.i.i, i64 10
  %.val8.i.i.i = load i8, ptr %i.wc, align 1, !tbaa !813, !noalias !9443 ; 2 uses
  %i.wd = sub i8 %.val8.i.i.i, %i.wb
  %i.we = zext i8 %i.wd to i64
  %i.wf = zext i8 %i.wb to i64
  %i.wg = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.wf ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.we, 5
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i8 %.val8.i.i.i, %i.wb
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ev
  %i.wi = sext i32 %.sroa.13.091.i.i to i64
  %i.wj = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.wi
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.wx, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ], [ %i.wj, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %.0122.i.i.i.i = phi ptr [ %i.ww, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ], [ %i.wg, %.lr.ph.preheader.i.i.i.i ] ; 6 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.wk, ptr %.03.i.i.i.i, align 8, !tbaa !814, !noalias !9443
  %i.wl = load ptr, ptr %.0122.i.i.i.i, align 8, !tbaa !810, !noalias !9443 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 16 ; 5 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %bb.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i

bb.ew:                                            ; preds = %.lr.ph.i.i46.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !811, !noalias !9443 ; 2 uses
  %i.wq = icmp ult i64 %i.wp, 16
  call void @llvm.assume(i1 %i.wq)
  %i.wr = add nuw nsw i64 %i.wp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wk, ptr noundef nonnull align 8 dereferenceable(1) %i.wm, i64 %i.wr, i1 false), !noalias !9443
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i: ; preds = %.lr.ph.i.i46.i.i
  store ptr %i.wl, ptr %.03.i.i.i.i, align 8, !tbaa !810, !noalias !9443
  %i.ws = load i64, ptr %i.wm, align 8, !tbaa !813, !noalias !9443
  store i64 %i.ws, ptr %i.wk, align 8, !tbaa !813, !noalias !9443
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i, %bb.ew
  %i.wt = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !811, !noalias !9443
  %i.wv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !811, !noalias !9443
  store ptr %i.wm, ptr %.0122.i.i.i.i, align 8, !tbaa !810, !noalias !9443
  store i64 0, ptr %i.wt, align 8, !tbaa !811, !noalias !9443
  store i8 0, ptr %i.wm, align 8, !tbaa !813, !noalias !9443
  %i.ww = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 32 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %.not.i12.i.i.i = icmp eq ptr %i.ww, %i.wh
  br i1 %.not.i12.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !326

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i, %bb.ev, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i
  %.val10.i126.i.i = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ false, %bb.ev ], [ false, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ]
  %.sroa.10.0.i.i.i = phi i32 [ %i.vj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ %.sroa.13.091.i.i, %bb.ev ], [ %.sroa.13.091.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i424 = phi ptr [ %.117.lcssa.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ %.sroa.063.090.i.i, %bb.ev ], [ %.sroa.063.090.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ] ; 2 uses
  %i.wy = getelementptr i8, ptr %.sroa.0.0.i.i.i424, i64 10 ; 2 uses
  %.val.i47.i.i = load i8, ptr %i.wy, align 1, !tbaa !813, !noalias !9443
  %i.wz = add i8 %.val.i47.i.i, -1
  store i8 %i.wz, ptr %i.wy, align 1, !tbaa !813, !noalias !9443
  %i.xa = load i64, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  %i.xb = add i64 %i.xa, -1
  store i64 %i.xb, ptr %i.j, align 8, !tbaa !1340, !noalias !9443
  %i.xc = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.sroa.0.0.i.i.i424, i32 %.sroa.10.0.i.i.i), !noalias !9443 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i32 } %i.xc, 0 ; 7 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i32 } %i.xc, 1 ; 3 uses
  br i1 %.val10.i126.i.i, label %bb.ex, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i

bb.ex:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i
  %i.xd = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 11
  %.val1.i.i.i.i.i = load i8, ptr %i.xd, align 1, !tbaa !813, !noalias !9443
  %.not.i.i13.i.i.i = icmp eq i8 %.val1.i.i.i.i.i, 0
  br i1 %.not.i.i13.i.i.i, label %.thread.i.i21.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xe = add nsw i32 %.fca.1.extract.i.i.i, 1    ; 3 uses
  %i.xf = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 10
  %.val.i.i14.i.i.i = load i8, ptr %i.xf, align 1, !tbaa !813, !noalias !9443
  %i.xg = zext i8 %.val.i.i14.i.i.i to i32
  %i.xh = icmp eq i32 %i.xe, %i.xg
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_134Btree_TryEmplaceWithHintWorks_Test8TestBodyEv:bb.a
  %.not.i74.i.i.i.i = icmp eq i8 %.val67.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.ir

.lr.ph24.i.i.i.i:                                 ; preds = %bb.iq, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.vv, %bb.iq ]
  %i.vx = getelementptr i8, ptr %.24923.i.i.i.i, i64 256
  %.249.val71.i.i.i.i = load ptr, ptr %i.vx, align 8, !tbaa !2051, !noalias !15252 ; 5 uses
  %i.vy = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val66.i.i.i.i = load i8, ptr %i.vy, align 1, !tbaa !813, !noalias !15252
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !15228

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.vz = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val.i.i.i.i = load i8, ptr %i.vz, align 1, !tbaa !813, !noalias !15252
  %i.wa = zext i8 %.249.val.i.i.i.i to i64
  %.249.val64.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !2051, !noalias !15252
  br label %bb.ir

bb.ir:                                            ; preds = %._crit_edge25.i.i.i.i, %bb.iq
  %.350.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %i.vv, %bb.iq ] ; 2 uses
  %.243.i.i.i.i = phi i64 [ %i.wa, %._crit_edge25.i.i.i.i ], [ %.142.i.i.i.i, %bb.iq ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %.249.val64.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %.1.i.i.i.i, %bb.iq ] ; 4 uses
  %i.wb = icmp eq ptr %.350.i.i.i.i, %.sroa.026.0.sink.i.i15.i
  br i1 %i.wb, label %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i", label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.wc = icmp eq ptr %.2.i.i.i.i, %.sroa.026.0.sink.i.i15.i
  %i.wd = icmp eq i64 %.243.i.i.i.i, %i.vs
  %or.cond.i.i.i.i = select i1 %i.wc, i1 %i.wd, i1 false
  %i.we = getelementptr i8, ptr %.350.i.i.i.i, i64 10
  %.350.val70.i.i.i.i = load i8, ptr %i.we, align 1, !tbaa !813, !noalias !15252
  %i.wf = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i", label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.wg = add i64 %.246.i.i.i.i, 1
  %i.wh = add i64 %i.wg, %i.wf
  %i.wi = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.wi, align 1, !tbaa !813, !noalias !15252
  %i.wj = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.wj
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.iu, %bb.it
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.it ], [ %i.wl, %bb.iu ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.it ], [ %.3.val63.i.i.i.i, %bb.iu ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.iq, !llvm.loop !15229

.preheader5.i.i.i.i:                              ; preds = %bb.it, %bb.iu
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.iu ], [ %.2.i.i.i.i, %bb.it ] ; 2 uses
  %i.wk = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.wk, align 1, !tbaa !813, !noalias !15252 ; 2 uses
  %i.wl = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !2051, !noalias !15252 ; 4 uses
  %i.wm = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.026.0.sink.i.i15.i
  %i.wn = icmp eq i64 %i.wl, %i.vs
  %or.cond61.i.i.i.i = select i1 %i.wm, i1 %i.wn, i1 false
  br i1 %or.cond61.i.i.i.i, label %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i", label %bb.iu

bb.iu:                                            ; preds = %.preheader5.i.i.i.i
  %i.wo = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i504 = load i8, ptr %i.wo, align 1, !tbaa !813, !noalias !15252
  %.not.i.i.i.i505 = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i504
  br i1 %.not.i.i.i.i505, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !15230

"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i": ; preds = %bb.ir, %bb.is, %.preheader5.i.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.wf, %.preheader5.i.i.i.i ], [ %i.vs, %bb.ir ], [ %i.wf, %bb.is ]
  %.051.i.i.i.i = add i64 %.pn.i.i.i.i, %.246.i.i.i.i
  br label %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmiENS2_IKSB_RKSE_PSJ_EE.exit.i.i"

"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmiENS2_IKSB_RKSE_PSJ_EE.exit.i.i": ; preds = %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i", %bb.im
  %i.wp = phi i1 [ true, %bb.im ], [ %i.ve, %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i" ]
  %.sroa.627.0.sink.i.i19.i = phi i32 [ %.sroa.627.0.sink.i.i18.i, %bb.im ], [ %.sroa.627.0.sink.i.i17.i, %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i" ]
  %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i = phi i32 [ %.sroa.7.0.i.i.i.lcssa.sink.i.i13.i, %bb.im ], [ %.sroa.7.0.i.i.i.lcssa.sink.i.i12.i, %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i" ] ; 5 uses
  %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i = phi ptr [ %.sroa.0.0.i8.i.i.lcssa49.sink.i.i10.i, %bb.im ], [ %.sroa.0.0.i8.i.i.lcssa49.sink.i.i9.i, %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i" ] ; 7 uses
  %.0.i.i.i = phi i64 [ %i.vc, %bb.im ], [ %.051.i.i.i.i, %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i" ] ; 5 uses
  %i.wq = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.wq, label %.loopexit, label %bb.iv

bb.iv:                                            ; preds = %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmiENS2_IKSB_RKSE_PSJ_EE.exit.i.i"
  %i.wr = icmp eq i64 %.0.i.i.i, %.val223
  br i1 %i.wr, label %.thread, label %bb.iw

.thread:                                          ; preds = %bb.iv
  %.val1.i.i.i = load ptr, ptr %5, align 8, !tbaa !2049, !noalias !15252
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %.val1.i.i.i), !noalias !15252
  store ptr @"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE9EmptyNodeEvE10empty_node", ptr %i.ad, align 8, !tbaa !2051, !noalias !15252
  store ptr @"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE9EmptyNodeEvE10empty_node", ptr %5, align 8, !tbaa !2051, !noalias !15252
  store i64 0, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  store i32 129, ptr %i.u, align 4, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  store i64 0, ptr %i.v, align 8, !tbaa !804
  br label %bb.ji

bb.iw:                                            ; preds = %bb.iv
  br i1 %i.wp, label %bb.ix, label %bb.ja

bb.ix:                                            ; preds = %bb.iw
  %i.ws = zext i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i to i64
  %i.wt = sub nsw i32 %.sroa.627.0.sink.i.i19.i, %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i ; 2 uses
  %i.wu = trunc i32 %i.wt to i8                   ; 3 uses
  %i.wv = getelementptr i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.wv, align 1, !tbaa !813, !noalias !15252 ; 4 uses
  %i.ww = and i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i, 255 ; 2 uses
  %i.wx = and i32 %i.wt, 255                      ; 2 uses
  %i.wy = add nuw nsw i32 %i.wx, %i.ww            ; 2 uses
  %i.wz = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.xa = and i32 %i.wy, 255                      ; 3 uses
  %i.xb = sub nsw i32 %i.wz, %i.xa
  %i.xc = sext i32 %i.xb to i64
  %i.xd = zext nneg i32 %i.xa to i64
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 12 ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xd ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.xc, 3
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.xa, %i.wz
  br i1 %.not1.i.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i", label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ix
  %i.xh = zext nneg i32 %i.ww to i64
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xh
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.xk, %.lr.ph.i.i46.i.i ], [ %i.xi, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.xj, %.lr.ph.i.i46.i.i ], [ %i.xf, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 1, !noalias !15252
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !15252
  %i.xj = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.xj, %i.xg
  br i1 %.not.i.i47.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i", label %.lr.ph.i.i46.i.i, !llvm.loop !553

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i": ; preds = %.lr.ph.i.i46.i.i, %bb.ix
  %i.xl = getelementptr i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.xl, align 1, !tbaa !813, !noalias !15252
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i"

.preheader.i.i.i:                                 ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i"
  %.not7.i.i.i = icmp eq i8 %i.wu, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i503, label %.lr.ph.i.i.i502

.lr.ph.i.i.i502:                                  ; preds = %.preheader.i.i.i
  %i.xm = add nuw nsw i64 %i.ws, 1
  %i.xn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.wx to i64
  br label %bb.iy

._crit_edge.i.i.i503:                             ; preds = %bb.iy, %.preheader.i.i.i
  %i.xo = trunc i32 %i.wy to i8
  %.02.i.i.i = add i8 %i.xo, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i", label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i503
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 256 ; 2 uses
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iy, %.lr.ph.i.i.i502
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i502 ], [ %indvars.iv.next.i.i.i, %bb.iy ] ; 2 uses
  %i.xq = add nuw nsw i64 %i.xm, %indvars.iv.i.i.i
  %i.xr = and i64 %i.xq, 255
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %i.xr
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !2051, !noalias !15252
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %i.xt), !noalias !15252
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i503, label %bb.iy, !llvm.loop !15231

bb.iz:                                            ; preds = %bb.iz, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.iz ] ; 3 uses
  %i.xu = sub i8 %.04.i.i.i, %i.wu                ; 2 uses
  %i.xv = zext i8 %.04.i.i.i to i64
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xv
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !2051, !noalias !15252 ; 2 uses
  %i.xy = zext i8 %i.xu to i64
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.xp, i64 %i.xy
  store ptr %i.xx, ptr %i.xz, align 8, !tbaa !2051, !noalias !15252
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store i8 %i.xu, ptr %i.ya, align 1, !tbaa !813, !noalias !15252
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i", label %bb.iz, !llvm.loop !554

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i": ; preds = %bb.iz, %._crit_edge.i.i.i503, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i"
  %i.yb = sub i8 %.val.i45.i.i, %i.wu
  store i8 %i.yb, ptr %i.wv, align 1, !tbaa !813, !noalias !15252
  %i.yc = load i64, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.yd = sub i64 %i.yc, %.0.i.i.i
  store i64 %i.yd, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.ye = call fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i), !noalias !15252 ; 0 uses
  %.val222.pr.pre = load i64, ptr %i.ae, align 8, !tbaa !2050
  br label %.loopexit

bb.ja:                                            ; preds = %bb.iw
  %i.yf = sub i64 %.val223, %.0.i.i.i             ; 2 uses
  %.not157.i.i = icmp ult i64 %.val223, %.0.i.i.i
  br i1 %.not157.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ja, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"
  %i.yg = phi i64 [ %i.abm, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.val223, %bb.ja ]
  %.sroa.13.0133.i.i = phi i32 [ %.sroa.13.1.i.i, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i, %bb.ja ] ; 6 uses
  %.sroa.0103.0132.i.i = phi ptr [ %.sroa.0103.1.i.i, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, %bb.ja ] ; 8 uses
  %i.yh = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.yh, align 1, !tbaa !813, !noalias !15252
  %.not.i.i485 = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i485, label %.thread.i.i.i.i.i487, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i.i
  %i.yi = sub nuw i64 %i.yg, %i.yf
  %i.yj = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 10 ; 2 uses
  %.val.i.i486 = load i8, ptr %i.yj, align 1, !tbaa !813, !noalias !15252 ; 4 uses
  %i.yk = zext i8 %.val.i.i486 to i32             ; 3 uses
  %i.yl = sub nsw i32 %i.yk, %.sroa.13.0133.i.i
  %i.ym = sext i32 %i.yl to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.yi, i64 %i.ym) ; 4 uses
  %i.yn = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.yo = zext i32 %.sroa.13.0133.i.i to i64
  %i.yp = and i32 %.sroa.13.0133.i.i, 255         ; 2 uses
  %i.yq = trunc i64 %.sroa.speculated.i.i to i32
  %i.yr = add i32 %i.yp, %i.yq                    ; 2 uses
  %i.ys = and i32 %i.yr, 255                      ; 3 uses
  %i.yt = sub nsw i32 %i.yk, %i.ys
  %i.yu = sext i32 %i.yt to i64
  %i.yv = zext nneg i32 %i.ys to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 12 ; 2 uses
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yv ; 2 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.yu, 3
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.ys, %i.yk
  br i1 %.not1.i.i52.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.jb
  %i.yz = zext nneg i32 %i.yp to i64
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yz
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i, %.lr.ph.preheader.i.i53.i.i
  %.03.i.i55.i.i = phi ptr [ %i.zc, %.lr.ph.i.i54.i.i ], [ %i.za, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.zb, %.lr.ph.i.i54.i.i ], [ %i.yx, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 1, !noalias !15252
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !15252
  %i.zb = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.zb, %i.yy
  br i1 %.not.i.i58.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i", label %.lr.ph.i.i54.i.i, !llvm.loop !553

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i": ; preds = %.lr.ph.i.i54.i.i
  %.val31.i60.pre.i.i = load i8, ptr %i.yh, align 1, !tbaa !813, !noalias !15252
  %i.zd = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.zd, label %.preheader.i62.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i"

.preheader.i62.i.i:                               ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i"
  %.not7.i63.i.i = icmp eq i8 %i.yn, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.ze = add nuw nsw i64 %i.yo, 1
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.jc

._crit_edge.i69.i.i:                              ; preds = %bb.jc, %.preheader.i62.i.i
  %i.zg = trunc i32 %i.yr to i8
  %.02.i70.i.i = add i8 %i.zg, 1                  ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i486
  br i1 %.not3.i71.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.zh = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256 ; 2 uses
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jc, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.jc ] ; 2 uses
  %i.zi = add nuw nsw i64 %i.ze, %indvars.iv.i66.i.i
  %i.zj = and i64 %i.zi, 255
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.zj
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !2051, !noalias !15252
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %i.zl), !noalias !15252
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.jc, !llvm.loop !15231

bb.jd:                                            ; preds = %bb.jd, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.jd ] ; 3 uses
  %i.zm = sub i8 %.04.i73.i.i, %i.yn              ; 2 uses
  %i.zn = zext i8 %.04.i73.i.i to i64
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.zn
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !2051, !noalias !15252 ; 2 uses
  %i.zq = zext i8 %i.zm to i64
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.zq
  store ptr %i.zp, ptr %i.zr, align 8, !tbaa !2051, !noalias !15252
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store i8 %i.zm, ptr %i.zs, align 1, !tbaa !813, !noalias !15252
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i486
  br i1 %.not.i75.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %bb.jd, !llvm.loop !554

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i": ; preds = %bb.jd, %._crit_edge.i69.i.i, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i", %bb.jb
  %i.zt = sub i8 %.val.i.i486, %i.yn
  store i8 %i.zt, ptr %i.yj, align 1, !tbaa !813, !noalias !15252
  %i.zu = and i64 %.sroa.speculated.i.i, 255
  %i.zv = load i64, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.zw = sub i64 %i.zv, %i.zu
  store i64 %i.zw, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.zx = call fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull %.sroa.0103.0132.i.i, i32 %.sroa.13.0133.i.i), !noalias !15252 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.zx, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.zx, 1
  br label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"

.thread.i.i.i.i.i487:                             ; preds = %.lr.ph.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %i.zz = and i32 %.sroa.13.0133.i.i, 255
  %i.aaa = zext nneg i32 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.zy, i64 %i.aaa
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.aab, align 8, !tbaa !2051, !noalias !15252 ; 3 uses
  %i.aac = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.aac, align 1, !tbaa !813, !noalias !15252
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i488

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i487, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i487 ] ; 2 uses
  %i.aad = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.aad, align 1, !tbaa !813, !noalias !15252
  %i.aae = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 256
  %i.aaf = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %i.aaf
  %.117.i.i.i.i.i.i = load ptr, ptr %i.aag, align 8, !tbaa !2051, !noalias !15252 ; 3 uses
  %i.aah = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.aah, align 1, !tbaa !813, !noalias !15252
  %.not.i.i.i.i.i.i.i501 = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i501, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i488, !llvm.loop !548

.loopexit.i.i488:                                 ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i487
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i487 ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.aai = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10 ; 3 uses
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.aai, align 1, !tbaa !813, !noalias !15252
  %i.aaj = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.aak = add nsw i32 %i.aaj, -1                 ; 2 uses
  %i.aal = sext i32 %.sroa.13.0133.i.i to i64
  %i.aam = sext i32 %i.aak to i64
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 12
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aal
  %i.aap = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 12
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aam
  %.val.i.i89.i.i = load i64, ptr %i.aaq, align 1, !noalias !15252
  store i64 %.val.i.i89.i.i, ptr %i.aao, align 1, !noalias !15252
  %.val.i86.i.i = load i8, ptr %i.aai, align 1, !tbaa !813, !noalias !15252
  %i.aar = add i8 %.val.i86.i.i, -1
  store i8 %i.aar, ptr %i.aai, align 1, !tbaa !813, !noalias !15252
  %i.aas = load i64, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.aat = add i64 %i.aas, -1
  store i64 %i.aat, ptr %i.ae, align 8, !tbaa !2050, !noalias !15252
  %i.aau = call fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull %.117.lcssa.i.i.i.i.i.i, i32 %i.aak), !noalias !15252 ; 2 uses
  %.fca.0.extract.i.i.i489 = extractvalue { ptr, i32 } %i.aau, 0 ; 6 uses
  %.fca.1.extract.i.i.i490 = extractvalue { ptr, i32 } %i.aau, 1 ; 2 uses
  %i.aav = getelementptr i8, ptr %.fca.0.extract.i.i.i489, i64 11
  %.val1.i.i.i.i.i491 = load i8, ptr %i.aav, align 1, !tbaa !813, !noalias !15252
  %.not.i.i12.i.i.i = icmp eq i8 %.val1.i.i.i.i.i491, 0
  br i1 %.not.i.i12.i.i.i, label %.thread.i.i20.i.i.i, label %bb.je

bb.je:                                            ; preds = %.loopexit.i.i488
  %i.aaw = add nsw i32 %.fca.1.extract.i.i.i490, 1 ; 3 uses
  %i.aax = getelementptr i8, ptr %.fca.0.extract.i.i.i489, i64 10
  %.val.i.i13.i.i.i = load i8, ptr %i.aax, align 1, !tbaa !813, !noalias !15252
  %i.aay = zext i8 %.val.i.i13.i.i.i to i32
  %i.aaz = icmp eq i32 %i.aaw, %i.aay
  br i1 %i.aaz, label %.lr.ph.i.i.i18.i.i.i, label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"

.lr.ph.i.i.i18.i.i.i:                             ; preds = %bb.je, %bb.jf
  %.01527.i.i.i.i.i.i492 = phi ptr [ %.015.val20.i.i.i.i.i.i493, %bb.jf ], [ %.fca.0.extract.i.i.i489, %bb.je ] ; 2 uses
  %.015.val20.i.i.i.i.i.i493 = load ptr, ptr %.01527.i.i.i.i.i.i492, align 8, !tbaa !2051, !noalias !15252 ; 4 uses
  %i.aba = getelementptr i8, ptr %.015.val20.i.i.i.i.i.i493, i64 11
  %.015.val20.val.i.i.i.i.i.i494 = load i8, ptr %i.aba, align 1, !tbaa !813, !noalias !15252
  %.not22.i.i.i19.i.i.i = icmp eq i8 %.015.val20.val.i.i.i.i.i.i494, 0
  br i1 %.not22.i.i.i19.i.i.i, label %bb.jf, label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"

bb.jf:                                            ; preds = %.lr.ph.i.i.i18.i.i.i
  %i.abb = getelementptr i8, ptr %.01527.i.i.i.i.i.i492, i64 8
  %.015.val18.i.i.i.i.i.i495 = load i8, ptr %i.abb, align 8, !tbaa !813, !noalias !15252 ; 2 uses
  %i.abc = getelementptr i8, ptr %.015.val20.i.i.i.i.i.i493, i64 10
  %.015.val17.i.i.i.i.i.i496 = load i8, ptr %i.abc, align 1, !tbaa !813, !noalias !15252
  %i.abd = icmp eq i8 %.015.val18.i.i.i.i.i.i495, %.015.val17.i.i.i.i.i.i496
  br i1 %i.abd, label %.lr.ph.i.i.i18.i.i.i, label %.critedge.loopexit29.i.i.i.i.i.i497, !llvm.loop !551

.thread.i.i20.i.i.i:                              ; preds = %.loopexit.i.i488
  %i.abe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i489, i64 256
  %i.abf = add i32 %.fca.1.extract.i.i.i490, 1
  %i.abg = and i32 %i.abf, 255
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abh
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jg, %.thread.i.i20.i.i.i
  %.116.in.i.i.i.i.i.i498 = phi ptr [ %i.abi, %.thread.i.i20.i.i.i ], [ %i.abk, %bb.jg ]
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_Test8TestBodyEv:bb.a
bb.q:                                             ; preds = %.backedge, %._crit_edge.i.i.i.i
  %.246.i.i.i.i = phi i64 [ %.04442.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.cb, %.backedge ] ; 2 uses
  %.142.i.i.i.i = phi i64 [ %i.bl, %._crit_edge.i.i.i.i ], [ %.142.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.1.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 256
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.142.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !2734, !noalias !20505 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 11
  %.val67.i.i.i.i = load i8, ptr %i.bq, align 1, !tbaa !813, !noalias !20505
  %.not.i74.i.i.i.i = icmp eq i8 %.val67.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.r

.lr.ph24.i.i.i.i:                                 ; preds = %bb.q, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.bp, %bb.q ]
  %i.br = getelementptr i8, ptr %.24923.i.i.i.i, i64 256
  %.249.val71.i.i.i.i = load ptr, ptr %i.br, align 8, !tbaa !2734, !noalias !20505 ; 5 uses
  %i.bs = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val66.i.i.i.i = load i8, ptr %i.bs, align 1, !tbaa !813, !noalias !20505
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !20496

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.bt = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val.i.i.i.i = load i8, ptr %i.bt, align 1, !tbaa !813, !noalias !20505
  %i.bu = zext i8 %.249.val.i.i.i.i to i64
  %.249.val64.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !2734, !noalias !20505
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge25.i.i.i.i, %bb.q
  %.350.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %i.bp, %bb.q ] ; 2 uses
  %.243.i.i.i.i = phi i64 [ %i.bu, %._crit_edge25.i.i.i.i ], [ %.142.i.i.i.i, %bb.q ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %.249.val64.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %.1.i.i.i.i, %bb.q ] ; 4 uses
  %i.bv = icmp eq ptr %.350.i.i.i.i, %.sroa.022.0.sink.i.i7.i
  br i1 %i.bv, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq ptr %.2.i.i.i.i, %.sroa.022.0.sink.i.i7.i
  %i.bx = icmp eq i64 %.243.i.i.i.i, %i.bm
  %or.cond.i.i.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  %i.by = getelementptr i8, ptr %.350.i.i.i.i, i64 10
  %.350.val70.i.i.i.i = load i8, ptr %i.by, align 1, !tbaa !813, !noalias !20505
  %i.bz = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = add i64 %.246.i.i.i.i, 1
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.cc, align 1, !tbaa !813, !noalias !20505
  %i.cd = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.cd
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.u, %bb.t
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.t ], [ %i.cf, %bb.u ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.t ], [ %.3.val63.i.i.i.i, %bb.u ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.q, !llvm.loop !20497

.preheader5.i.i.i.i:                              ; preds = %bb.t, %bb.u
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.u ], [ %.2.i.i.i.i, %bb.t ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.ce, align 1, !tbaa !813, !noalias !20505 ; 2 uses
  %i.cf = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !2734, !noalias !20505 ; 4 uses
  %i.cg = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.022.0.sink.i.i7.i
  %i.ch = icmp eq i64 %i.cf, %i.bm
  %or.cond61.i.i.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.preheader5.i.i.i.i
  %i.ci = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ci, align 1, !tbaa !813, !noalias !20505
  %.not.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !20498

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i: ; preds = %bb.r, %bb.s, %.preheader5.i.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.bz, %.preheader5.i.i.i.i ], [ %i.bm, %bb.r ], [ %i.bz, %bb.s ]
  %.051.i.i.i.i = add i64 %.pn.i.i.i.i, %.246.i.i.i.i
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_EmiENS2_IKSB_SD_SE_EE.exit.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_EmiENS2_IKSB_SD_SE_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i, %bb.m
  %i.cj = phi i1 [ true, %bb.m ], [ %i.ay, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i ]
  %.sroa.623.0.sink.i.i11.i = phi i32 [ %.sroa.623.0.sink.i.i10.i, %bb.m ], [ %.sroa.623.0.sink.i.i9.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i ]
  %.0.i.i.i = phi i64 [ %i.aw, %bb.m ], [ %.051.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i ] ; 5 uses
  %i.ck = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.ck, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit, label %bb.v

bb.v:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_EmiENS2_IKSB_SD_SE_EE.exit.i.i
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !2733, !noalias !20505 ; 4 uses
  %i.cm = icmp eq i64 %.0.i.i.i, %i.cl
  br i1 %i.cm, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5clearEv.exit.i.i, label %bb.w

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5clearEv.exit.i.i: ; preds = %bb.v
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %.val.i, ptr noundef nonnull %i.a), !noalias !20505
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %i.b, align 8, !tbaa !2734, !noalias !20505
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %2, align 8, !tbaa !2734, !noalias !20505
  store i64 0, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit

bb.w:                                             ; preds = %bb.v
  br i1 %i.cj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cn = zext i32 %.pn1.i.i.i.i.i to i64
  %i.co = sub nsw i32 %.sroa.623.0.sink.i.i11.i, %.pn1.i.i.i.i.i ; 2 uses
  %i.cp = trunc i32 %i.co to i8                   ; 3 uses
  %i.cq = getelementptr i8, ptr %.pn3.i.i.i.i.i, i64 10
  %i.cr = and i32 %.pn1.i.i.i.i.i, 255            ; 2 uses
  %i.cs = and i32 %i.co, 255                      ; 2 uses
  %i.ct = add nuw nsw i32 %i.cs, %i.cr            ; 2 uses
  %i.cu = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.cv = and i32 %i.ct, 255                      ; 3 uses
  %i.cw = sub nsw i32 %i.cu, %i.cv
  %i.cx = sext i32 %i.cw to i64
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cx, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.cv, %i.cu
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.x
  %i.dc = zext nneg i32 %i.cr to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i46.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i46.i.i ], [ %i.da, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 8, !noalias !20505
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !20505
  %i.de = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !734

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %bb.x
  %i.dg = getelementptr i8, ptr %.pn3.i.i.i.i.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.dg, align 1, !tbaa !813, !noalias !20505
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i
  %.not39.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not39.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.dh = add nuw nsw i64 %i.cn, 1
  %i.di = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.cs to i64
  br label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.y, %.preheader.i.i.i
  %i.dj = trunc i32 %i.ct to i8
  %.034.i.i.i = add i8 %i.dj, 1                   ; 2 uses
  %.not35.i.i.i = icmp ugt i8 %.034.i.i.i, %.val.i45.i.i
  br i1 %.not35.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i, label %.lr.ph38.i.i.i

.lr.ph38.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 256 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.y ] ; 2 uses
  %i.dl = add nuw nsw i64 %i.dh, %indvars.iv.i.i.i
  %i.dm = and i64 %i.dl, 255
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dm
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2734, !noalias !20505
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %i.do, ptr noundef nonnull readonly %i.a), !noalias !20505
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.y, !llvm.loop !20499

bb.z:                                             ; preds = %bb.z, %.lr.ph38.i.i.i
  %.036.i.i.i = phi i8 [ %.034.i.i.i, %.lr.ph38.i.i.i ], [ %.0.i48.i.i, %bb.z ] ; 3 uses
  %i.dp = sub i8 %.036.i.i.i, %i.cp               ; 2 uses
  %i.dq = zext i8 %.036.i.i.i to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2734, !noalias !20505 ; 2 uses
  %i.dt = zext i8 %i.dp to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dt
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !2734, !noalias !20505
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i8 %i.dp, ptr %i.dv, align 1, !tbaa !813, !noalias !20505
  %.0.i48.i.i = add i8 %.036.i.i.i, 1             ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i, label %bb.z, !llvm.loop !735

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i: ; preds = %bb.z, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i
  %i.dw = sub i8 %.val.i45.i.i, %i.cp
  store i8 %i.dw, ptr %i.cq, align 1, !tbaa !813, !noalias !20505
  %i.dx = load i64, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.dy = sub i64 %i.dx, %.0.i.i.i
  store i64 %i.dy, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.dz = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.pn3.i.i.i.i.i, i32 %.pn1.i.i.i.i.i), !noalias !20505 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit

bb.aa:                                            ; preds = %bb.w
  %i.ea = sub i64 %i.cl, %.0.i.i.i                ; 2 uses
  %.not157.i.i = icmp ult i64 %i.cl, %.0.i.i.i
  br i1 %.not157.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i
  %i.eb = phi i64 [ %i.hh, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %i.cl, %bb.aa ]
  %.sroa.13.0133.i.i = phi i32 [ %.sroa.13.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %.pn1.i.i.i.i.i, %bb.aa ] ; 6 uses
  %.sroa.0103.0132.i.i = phi ptr [ %.sroa.0103.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %.pn3.i.i.i.i.i, %bb.aa ] ; 8 uses
  %i.ec = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.ec, align 1, !tbaa !813, !noalias !20505
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ed = sub nuw i64 %i.eb, %i.ea
  %i.ee = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.ee, align 1, !tbaa !813, !noalias !20505 ; 4 uses
  %i.ef = zext i8 %.val.i.i to i32                ; 3 uses
  %i.eg = sub nsw i32 %i.ef, %.sroa.13.0133.i.i
  %i.eh = sext i32 %i.eg to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.eh) ; 4 uses
  %i.ei = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.ej = zext i32 %.sroa.13.0133.i.i to i64
  %i.ek = and i32 %.sroa.13.0133.i.i, 255         ; 2 uses
  %i.el = trunc i64 %.sroa.speculated.i.i to i32
  %i.em = add i32 %i.ek, %i.el                    ; 2 uses
  %i.en = and i32 %i.em, 255                      ; 3 uses
  %i.eo = sub nsw i32 %i.ef, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq ; 2 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.ep, 3
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.en, %i.ef
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.ab
  %i.eu = zext nneg i32 %i.ek to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eu
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i, %.lr.ph.preheader.i.i53.i.i
  %.03.i.i55.i.i = phi ptr [ %i.ex, %.lr.ph.i.i54.i.i ], [ %i.ev, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.ew, %.lr.ph.i.i54.i.i ], [ %i.es, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 8, !noalias !20505
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !20505
  %i.ew = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.ew, %i.et
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !734

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i
  %.val31.i60.pre.i.i = load i8, ptr %i.ec, align 1, !tbaa !813, !noalias !20505
  %i.ey = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.ey, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i
  %.not39.i63.i.i = icmp eq i8 %i.ei, 0
  br i1 %.not39.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.ez = add nuw nsw i64 %i.ej, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.ac

._crit_edge.i69.i.i:                              ; preds = %bb.ac, %.preheader.i62.i.i
  %i.fb = trunc i32 %i.em to i8
  %.034.i70.i.i = add i8 %i.fb, 1                 ; 2 uses
  %.not35.i71.i.i = icmp ugt i8 %.034.i70.i.i, %.val.i.i
  br i1 %.not35.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %.lr.ph38.i72.i.i

.lr.ph38.i72.i.i:                                 ; preds = %._crit_edge.i69.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.ac ] ; 2 uses
  %i.fd = add nuw nsw i64 %i.ez, %indvars.iv.i66.i.i
  %i.fe = and i64 %i.fd, 255
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !2734, !noalias !20505
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %i.fg, ptr noundef nonnull readonly %i.a), !noalias !20505
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.ac, !llvm.loop !20499

bb.ad:                                            ; preds = %bb.ad, %.lr.ph38.i72.i.i
  %.036.i73.i.i = phi i8 [ %.034.i70.i.i, %.lr.ph38.i72.i.i ], [ %.0.i74.i.i, %bb.ad ] ; 3 uses
  %i.fh = sub i8 %.036.i73.i.i, %i.ei             ; 2 uses
  %i.fi = zext i8 %.036.i73.i.i to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !2734, !noalias !20505 ; 2 uses
  %i.fl = zext i8 %i.fh to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fl
  store ptr %i.fk, ptr %i.fm, align 8, !tbaa !2734, !noalias !20505
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i8 %i.fh, ptr %i.fn, align 1, !tbaa !813, !noalias !20505
  %.0.i74.i.i = add i8 %.036.i73.i.i, 1           ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %bb.ad, !llvm.loop !735

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i: ; preds = %bb.ad, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i, %bb.ab
  %i.fo = sub i8 %.val.i.i, %i.ei
  store i8 %i.fo, ptr %i.ee, align 1, !tbaa !813, !noalias !20505
  %i.fp = and i64 %.sroa.speculated.i.i, 255
  %i.fq = load i64, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.fr = sub i64 %i.fq, %i.fp
  store i64 %i.fr, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.fs = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.sroa.0103.0132.i.i, i32 %.sroa.13.0133.i.i), !noalias !20505 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.fs, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.fs, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %.lr.ph.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %i.fu = and i32 %.sroa.13.0133.i.i, 255
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fv
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !tbaa !2734, !noalias !20505 ; 3 uses
  %i.fx = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.fx, align 1, !tbaa !813, !noalias !20505
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %i.fy = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.fy, align 1, !tbaa !813, !noalias !20505
  %i.fz = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 256
  %i.ga = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.ga
  %.117.i.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !2734, !noalias !20505 ; 3 uses
  %i.gc = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.gc, align 1, !tbaa !813, !noalias !20505
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i, !llvm.loop !20500

.loopexit.i.i:                                    ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.gd = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10 ; 3 uses
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.gd, align 1, !tbaa !813, !noalias !20505
  %i.ge = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  %i.gg = sext i32 %.sroa.13.0133.i.i to i64
  %i.gh = sext i32 %i.gf to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 16
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gh
  %.val.i.i89.i.i = load i64, ptr %i.gl, align 8, !noalias !20505
  store i64 %.val.i.i89.i.i, ptr %i.gj, align 1, !noalias !20505
  %.val.i86.i.i = load i8, ptr %i.gd, align 1, !tbaa !813, !noalias !20505
  %i.gm = add i8 %.val.i86.i.i, -1
  store i8 %i.gm, ptr %i.gd, align 1, !tbaa !813, !noalias !20505
  %i.gn = load i64, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.go = add i64 %i.gn, -1
  store i64 %i.go, ptr %i.c, align 8, !tbaa !2733, !noalias !20505
  %i.gp = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.117.lcssa.i.i.i.i.i.i, i32 %i.gf), !noalias !20505 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i32 } %i.gp, 0 ; 6 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i32 } %i.gp, 1 ; 2 uses
  %i.gq = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 11
  %.val1.i.i.i.i.i = load i8, ptr %i.gq, align 1, !tbaa !813, !noalias !20505
  %.not.i.i12.i.i.i = icmp eq i8 %.val1.i.i.i.i.i, 0
  br i1 %.not.i.i12.i.i.i, label %.thread.i.i20.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.gr = add nsw i32 %.fca.1.extract.i.i.i, 1    ; 3 uses
  %i.gs = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 10
  %.val.i.i13.i.i.i = load i8, ptr %i.gs, align 1, !tbaa !813, !noalias !20505
  %i.gt = zext i8 %.val.i.i13.i.i.i to i32
  %i.gu = icmp eq i32 %i.gr, %i.gt
  br i1 %i.gu, label %.lr.ph.i.i.i18.i.i.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i

.lr.ph.i.i.i18.i.i.i:                             ; preds = %bb.ae, %bb.af
  %.01527.i.i.i.i.i.i = phi ptr [ %.015.val20.i.i.i.i.i.i, %bb.af ], [ %.fca.0.extract.i.i.i, %bb.ae ] ; 2 uses
  %.015.val20.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i, align 8, !tbaa !2734, !noalias !20505 ; 4 uses
  %i.gv = getelementptr i8, ptr %.015.val20.i.i.i.i.i.i, i64 11
  %.015.val20.val.i.i.i.i.i.i = load i8, ptr %i.gv, align 1, !tbaa !813, !noalias !20505
  %.not22.i.i.i19.i.i.i = icmp eq i8 %.015.val20.val.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i19.i.i.i, label %bb.af, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i18.i.i.i
  %i.gw = getelementptr i8, ptr %.01527.i.i.i.i.i.i, i64 8
  %.015.val18.i.i.i.i.i.i = load i8, ptr %i.gw, align 8, !tbaa !813, !noalias !20505 ; 2 uses
  %i.gx = getelementptr i8, ptr %.015.val20.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i = load i8, ptr %i.gx, align 1, !tbaa !813, !noalias !20505
  %i.gy = icmp eq i8 %.015.val18.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i
  br i1 %i.gy, label %.lr.ph.i.i.i18.i.i.i, label %.critedge.loopexit29.i.i.i.i.i.i, !llvm.loop !732

.thread.i.i20.i.i.i:                              ; preds = %.loopexit.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 256
  %i.ha = add i32 %.fca.1.extract.i.i.i, 1
  %i.hb = and i32 %i.ha, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.thread.i.i20.i.i.i
  %.116.in.i.i.i.i.i.i = phi ptr [ %i.hd, %.thread.i.i20.i.i.i ], [ %i.hf, %bb.ag ]
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_OveralignedKey_Test8TestBodyEv:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge757, %._crit_edge.i.i.i.i.i
  %.246.i.i.i.i.i = phi i64 [ %.04442.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.gn, %.backedge757 ] ; 2 uses
  %.142.i.i.i.i.i = phi i64 [ %i.fx, %._crit_edge.i.i.i.i.i ], [ %.142.i.i.i.i.i.be, %.backedge757 ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i.be, %.backedge757 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 144
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.142.i.i.i.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !2753, !noalias !20674 ; 3 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 11
  %.val67.i.i.i.i.i = load i8, ptr %i.gc, align 1, !tbaa !813, !noalias !20674
  %.not.i74.i.i.i.i.i = icmp eq i8 %.val67.i.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %bb.ad

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.ac, %.lr.ph24.i.i.i.i.i
  %.24923.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %.lr.ph24.i.i.i.i.i ], [ %i.gb, %bb.ac ]
  %i.gd = getelementptr i8, ptr %.24923.i.i.i.i.i, i64 144
  %.249.val71.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !2753, !noalias !20674 ; 5 uses
  %i.ge = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 11
  %.249.val66.i.i.i.i.i = load i8, ptr %i.ge, align 1, !tbaa !813, !noalias !20674
  %.not.i75.i.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, !llvm.loop !20619

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i
  %i.gf = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 8
  %.249.val.i.i.i.i.i = load i8, ptr %i.gf, align 1, !tbaa !813, !noalias !20674
  %i.gg = zext i8 %.249.val.i.i.i.i.i to i64
  %.249.val64.i.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i.i, align 8, !tbaa !2753, !noalias !20674
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge25.i.i.i.i.i, %bb.ac
  %.350.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %i.gb, %bb.ac ] ; 2 uses
  %.243.i.i.i.i.i = phi i64 [ %i.gg, %._crit_edge25.i.i.i.i.i ], [ %.142.i.i.i.i.i, %bb.ac ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %.249.val64.i.i.i.i.i, %._crit_edge25.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.ac ] ; 4 uses
  %i.gh = icmp eq ptr %.350.i.i.i.i.i, %.sroa.022.0.sink.i.i7.i.i
  br i1 %i.gh, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gi = icmp eq ptr %.2.i.i.i.i.i, %.sroa.022.0.sink.i.i7.i.i
  %i.gj = icmp eq i64 %.243.i.i.i.i.i, %i.fy
  %or.cond.i.i.i.i.i = select i1 %i.gi, i1 %i.gj, i1 false
  %i.gk = getelementptr i8, ptr %.350.i.i.i.i.i, i64 10
  %.350.val70.i.i.i.i.i = load i8, ptr %i.gk, align 1, !tbaa !813, !noalias !20674
  %i.gl = zext i8 %.350.val70.i.i.i.i.i to i64    ; 3 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = add i64 %.246.i.i.i.i.i, 1
  %i.gn = add i64 %i.gm, %i.gl
  %i.go = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.go, align 1, !tbaa !813, !noalias !20674
  %i.gp = zext i8 %.2.val.i.i.i.i.i to i64
  %.not.not.i.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i.i, %i.gp
  br i1 %.not.not.i.i.i.i.i, label %.backedge757, label %.preheader5.i.i.i.i.i

.backedge757:                                     ; preds = %bb.ag, %bb.af
  %.142.i.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i.i, %bb.af ], [ %i.gr, %bb.ag ]
  %.1.i.i.i.i.i.be = phi ptr [ %.2.i.i.i.i.i, %bb.af ], [ %.3.val63.i.i.i.i.i, %bb.ag ]
  %.142.i.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.i.be.in, 1
  br label %bb.ac, !llvm.loop !20620

.preheader5.i.i.i.i.i:                            ; preds = %bb.af, %bb.ag
  %.3.i.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i.i, %bb.ag ], [ %.2.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.gq = getelementptr i8, ptr %.3.i.i.i.i.i, i64 8
  %.3.val.i.i.i.i.i = load i8, ptr %i.gq, align 1, !tbaa !813, !noalias !20674 ; 2 uses
  %i.gr = zext i8 %.3.val.i.i.i.i.i to i64        ; 2 uses
  %.3.val63.i.i.i.i.i = load ptr, ptr %.3.i.i.i.i.i, align 8, !tbaa !2753, !noalias !20674 ; 4 uses
  %i.gs = icmp eq ptr %.3.val63.i.i.i.i.i, %.sroa.022.0.sink.i.i7.i.i
  %i.gt = icmp eq i64 %i.gr, %i.fy
  %or.cond61.i.i.i.i.i = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond61.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.preheader5.i.i.i.i.i
  %i.gu = getelementptr i8, ptr %.3.val63.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i = load i8, ptr %i.gu, align 1, !tbaa !813, !noalias !20674
  %.not.i.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %.backedge757, label %.preheader5.i.i.i.i.i, !llvm.loop !20621

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i: ; preds = %bb.ad, %bb.ae, %.preheader5.i.i.i.i.i
  %.pn.i.i.i.i.i = phi i64 [ %i.gl, %.preheader5.i.i.i.i.i ], [ %i.fy, %bb.ad ], [ %i.gl, %bb.ae ]
  %.051.i.i.i.i.i = add i64 %.pn.i.i.i.i.i, %.246.i.i.i.i.i
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, %bb.y
  %i.gv = phi i1 [ true, %bb.y ], [ %i.fk, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ]
  %.sroa.623.0.sink.i.i11.i.i = phi i32 [ %.sroa.623.0.sink.i.i10.i.i, %bb.y ], [ %.sroa.623.0.sink.i.i9.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ]
  %.0.i.i.i.i = phi i64 [ %i.fi, %bb.y ], [ %.051.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ] ; 5 uses
  %i.gw = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.gw, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEEE5eraseIS7_EEmRKS7_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i
  %i.gx = load i64, ptr %i.b, align 16, !tbaa !2752, !noalias !20674 ; 4 uses
  %i.gy = icmp eq i64 %.0.i.i.i.i, %i.gx
  br i1 %i.gy, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5clearEv.exit.i.i.i, label %bb.ai

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5clearEv.exit.i.i.i: ; preds = %bb.ah
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val.i.i), !noalias !20674
  store <2 x ptr> <ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE9EmptyNodeEvE10empty_node, ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE9EmptyNodeEvE10empty_node>, ptr %17, align 16, !tbaa !2753, !noalias !20674
  store i64 0, ptr %i.b, align 16, !tbaa !2752, !noalias !20674
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEEE5eraseIS7_EEmRKS7_.exit.i

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.gv, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.gz = zext i32 %.pn1.i.i.i.i.i.i to i64
  %i.ha = sub nsw i32 %.sroa.623.0.sink.i.i11.i.i, %.pn1.i.i.i.i.i.i ; 2 uses
  %i.hb = trunc i32 %i.ha to i8                   ; 3 uses
  %i.hc = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 10
  %i.hd = and i32 %.pn1.i.i.i.i.i.i, 255          ; 2 uses
  %i.he = and i32 %i.ha, 255                      ; 2 uses
  %i.hf = add nuw nsw i32 %i.he, %i.hd            ; 2 uses
  %i.hg = zext i8 %.val.i45.i.i.i to i32          ; 2 uses
  %i.hh = and i32 %i.hf, 255                      ; 3 uses
  %i.hi = sub nsw i32 %i.hg, %i.hh
  %i.hj = sext i32 %i.hi to i64
  %i.hk = zext nneg i32 %i.hh to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.hj, 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx.i.i.i.i.i
  %.not1.i.i.i.i.i = icmp eq i32 %i.hh, %i.hg
  br i1 %.not1.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.aj
  %i.ho = zext nneg i32 %i.hd to i64
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.ho
  br label %.lr.ph.i.i46.i.i.i

.lr.ph.i.i46.i.i.i:                               ; preds = %.lr.ph.i.i46.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.hr, %.lr.ph.i.i46.i.i.i ], [ %i.hp, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0122.i.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i.i46.i.i.i ], [ %i.hm, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i.i.i.i, i64 16, i1 false), !noalias !20674
  %i.hq = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %.not.i.i47.i.i.i = icmp eq ptr %i.hq, %i.hn
  br i1 %.not.i.i47.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i, !llvm.loop !745

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i, %bb.aj
  %i.hs = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val31.i.i.i.i = load i8, ptr %i.hs, align 1, !tbaa !813, !noalias !20674
  %.not.i32.i.i.i.i = icmp eq i8 %.val31.i.i.i.i, 0
  br i1 %.not.i32.i.i.i.i, label %.preheader.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %.not7.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not7.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.ht = add nuw nsw i64 %i.gz, 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 144
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.he to i64
  br label %bb.ak

._crit_edge.i.i.i.i:                              ; preds = %bb.ak, %.preheader.i.i.i.i
  %i.hv = trunc i32 %i.hf to i8
  %.02.i.i.i.i = add i8 %i.hv, 1                  ; 2 uses
  %.not3.i.i.i.i = icmp ugt i8 %.02.i.i.i.i, %.val.i45.i.i.i
  br i1 %.not3.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %.lr.ph6.i.i.i.i

.lr.ph6.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i, i64 144 ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i32.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ak ] ; 2 uses
  %i.hx = add nuw nsw i64 %i.ht, %indvars.iv.i.i.i32.i
  %i.hy = and i64 %i.hx, 255
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !2753, !noalias !20674
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %i.ia), !noalias !20674
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i32.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ak, !llvm.loop !20622

bb.al:                                            ; preds = %bb.al, %.lr.ph6.i.i.i.i
  %.04.i.i.i.i = phi i8 [ %.02.i.i.i.i, %.lr.ph6.i.i.i.i ], [ %.0.i48.i.i.i, %bb.al ] ; 3 uses
  %i.ib = sub i8 %.04.i.i.i.i, %i.hb              ; 2 uses
  %i.ic = zext i8 %.04.i.i.i.i to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !2753, !noalias !20674 ; 2 uses
  %i.if = zext i8 %i.ib to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.if
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !2753, !noalias !20674
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i8 %i.ib, ptr %i.ih, align 1, !tbaa !813, !noalias !20674
  %.0.i48.i.i.i = add i8 %.04.i.i.i.i, 1          ; 2 uses
  %.not.i49.i.i.i = icmp ugt i8 %.0.i48.i.i.i, %.val.i45.i.i.i
  br i1 %.not.i49.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %bb.al, !llvm.loop !748

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i: ; preds = %bb.al, %._crit_edge.i.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %i.ii = sub i8 %.val.i45.i.i.i, %i.hb
  store i8 %i.ii, ptr %i.hc, align 1, !tbaa !813, !noalias !20674
  %i.ij = load i64, ptr %i.b, align 16, !tbaa !2752, !noalias !20674
  %i.ik = sub i64 %i.ij, %.0.i.i.i.i
  store i64 %i.ik, ptr %i.b, align 16, !tbaa !2752, !noalias !20674
  %i.il = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr nonnull %.pn3.i.i.i.i.i.i, i32 %.pn1.i.i.i.i.i.i), !noalias !20674 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEEE5eraseIS7_EEmRKS7_.exit.i

bb.am:                                            ; preds = %bb.ai
  %i.im = sub i64 %i.gx, %.0.i.i.i.i              ; 2 uses
  %.not154.i.i.i = icmp ult i64 %i.gx, %.0.i.i.i.i
  br i1 %.not154.i.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEEE5eraseIS7_EEmRKS7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i
  %i.in = phi i64 [ %i.mt, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %i.gx, %bb.am ] ; 2 uses
  %.sroa.13.0130.i.i.i = phi i32 [ %.sroa.13.1.i.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %.pn1.i.i.i.i.i.i, %bb.am ] ; 6 uses
  %.sroa.0100.0129.i.i.i = phi ptr [ %.sroa.0100.1.i.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %.pn3.i.i.i.i.i.i, %bb.am ] ; 8 uses
  %i.io = getelementptr i8, ptr %.sroa.0100.0129.i.i.i, i64 11 ; 2 uses
  %.val34.i.i.i = load i8, ptr %i.io, align 1, !tbaa !813, !noalias !20674
  %.not.i.i.i = icmp eq i8 %.val34.i.i.i, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ip = sub nuw i64 %i.in, %i.im
  %i.iq = getelementptr i8, ptr %.sroa.0100.0129.i.i.i, i64 10 ; 2 uses
  %.val.i.i31.i = load i8, ptr %i.iq, align 1, !tbaa !813, !noalias !20674 ; 4 uses
  %i.ir = zext i8 %.val.i.i31.i to i32            ; 3 uses
  %i.is = sub nsw i32 %i.ir, %.sroa.13.0130.i.i.i
  %i.it = sext i32 %i.is to i64
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ip, i64 %i.it) ; 4 uses
  %i.iu = trunc i64 %.sroa.speculated.i.i.i to i8 ; 3 uses
  %i.iv = zext i32 %.sroa.13.0130.i.i.i to i64
  %i.iw = and i32 %.sroa.13.0130.i.i.i, 255       ; 2 uses
  %i.ix = trunc i64 %.sroa.speculated.i.i.i to i32
  %i.iy = add i32 %i.iw, %i.ix                    ; 2 uses
  %i.iz = and i32 %i.iy, 255                      ; 3 uses
  %i.ja = sub nsw i32 %i.ir, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = zext nneg i32 %i.iz to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i, i64 16 ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jc ; 2 uses
  %.idx.i.i51.i.i.i = shl nuw nsw i64 %i.jb, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %.idx.i.i51.i.i.i
  %.not1.i.i52.i.i.i = icmp eq i32 %i.iz, %i.ir
  br i1 %.not1.i.i52.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i, label %.lr.ph.preheader.i.i53.i.i.i

.lr.ph.preheader.i.i53.i.i.i:                     ; preds = %bb.an
  %i.jg = zext nneg i32 %i.iw to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %i.jg
  br label %.lr.ph.i.i54.i.i.i

.lr.ph.i.i54.i.i.i:                               ; preds = %.lr.ph.i.i54.i.i.i, %.lr.ph.preheader.i.i53.i.i.i
  %.03.i.i55.i.i.i = phi ptr [ %i.jj, %.lr.ph.i.i54.i.i.i ], [ %i.jh, %.lr.ph.preheader.i.i53.i.i.i ] ; 2 uses
  %.0122.i.i56.i.i.i = phi ptr [ %i.ji, %.lr.ph.i.i54.i.i.i ], [ %i.je, %.lr.ph.preheader.i.i53.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i55.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i56.i.i.i, i64 16, i1 false), !noalias !20674
  %i.ji = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i.i, i64 16
  %.not.i.i57.i.i.i = icmp eq ptr %i.ji, %i.jf
  br i1 %.not.i.i57.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i, label %.lr.ph.i.i54.i.i.i, !llvm.loop !745

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i: ; preds = %.lr.ph.i.i54.i.i.i
  %.val31.i59.pre.i.i.i = load i8, ptr %i.io, align 1, !tbaa !813, !noalias !20674
  %i.jk = icmp eq i8 %.val31.i59.pre.i.i.i, 0
  br i1 %i.jk, label %.preheader.i61.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i

.preheader.i61.i.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i
  %.not7.i62.i.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not7.i62.i.i.i, label %._crit_edge.i68.i.i.i, label %.lr.ph.i63.i.i.i

.lr.ph.i63.i.i.i:                                 ; preds = %.preheader.i61.i.i.i
  %i.jl = add nuw nsw i64 %i.iv, 1
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i, i64 144
  %wide.trip.count.i64.i.i.i = and i64 %.sroa.speculated.i.i.i, 255
  br label %bb.ao

._crit_edge.i68.i.i.i:                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, %.preheader.i61.i.i.i
  %i.jn = trunc i32 %i.iy to i8
  %.02.i69.i.i.i = add i8 %i.jn, 1                ; 2 uses
  %.not3.i70.i.i.i = icmp ugt i8 %.02.i69.i.i.i, %.val.i.i31.i
  br i1 %.not3.i70.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i, label %.lr.ph6.i71.i.i.i

.lr.ph6.i71.i.i.i:                                ; preds = %._crit_edge.i68.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i, i64 144 ; 2 uses
  br label %bb.av

bb.ao:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, %.lr.ph.i63.i.i.i
  %indvars.iv.i65.i.i.i = phi i64 [ 0, %.lr.ph.i63.i.i.i ], [ %indvars.iv.next.i66.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i ] ; 2 uses
  %i.jp = add nuw nsw i64 %i.jl, %indvars.iv.i65.i.i.i
  %i.jq = and i64 %i.jp, 255
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jq
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !2753, !noalias !20674 ; 5 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 11
  %.val55.i.i = load i8, ptr %i.jt, align 1, !tbaa !813, !noalias !20674 ; 2 uses
  %.not1.i.i = icmp eq i8 %.val55.i.i, 0
  br i1 %.not1.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ju = zext i8 %.val55.i.i to i64
  %i.jv = shl nuw nsw i64 %i.ju, 4
  %i.jw = add nuw nsw i64 %i.jv, 16
  br label %.loopexit.sink.split.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jx = getelementptr i8, ptr %i.js, i64 10
  %.val66.i.i = load i8, ptr %i.jx, align 1, !tbaa !813, !noalias !20674
  %i.jy = icmp eq i8 %.val66.i.i, 0
  br i1 %i.jy, label %.loopexit.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aq
  %.val59.i.i = load ptr, ptr %i.js, align 8, !tbaa !2753, !noalias !20674
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.0497.i.i = phi ptr [ %.049.val69.i.i, %.lr.ph.i.i ], [ %i.js, %.lr.ph.preheader.i.i ]
  %i.jz = getelementptr i8, ptr %.0497.i.i, i64 144
  %.049.val69.i.i = load ptr, ptr %i.jz, align 8, !tbaa !2753, !noalias !20674 ; 4 uses
  %i.ka = getelementptr i8, ptr %.049.val69.i.i, i64 11
  %.049.val62.i.i = load i8, ptr %i.ka, align 1, !tbaa !813, !noalias !20674
  %.not.i.i62.i = icmp eq i8 %.049.val62.i.i, 0
  br i1 %.not.i.i62.i, label %.lr.ph.i.i, label %._crit_edge.i63.i, !llvm.loop !749

._crit_edge.i63.i:                                ; preds = %.lr.ph.i.i
  %i.kb = getelementptr i8, ptr %.049.val69.i.i, i64 8
  %.049.val.i.i = load i8, ptr %i.kb, align 1, !tbaa !813, !noalias !20674
  %i.kc = zext i8 %.049.val.i.i to i64
  %.049.val58.i.i = load ptr, ptr %.049.val69.i.i, align 8, !tbaa !2753, !noalias !20674
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge754, %._crit_edge.i63.i
  %.147.i.i = phi i64 [ %i.kc, %._crit_edge.i63.i ], [ %.147.i.i.be, %.backedge754 ] ; 2 uses
  %.1.i.i = phi ptr [ %.049.val58.i.i, %._crit_edge.i63.i ], [ %.1.i.i.be, %.backedge754 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.147.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !2753, !noalias !20674 ; 3 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 11
  %.val61.i.i = load i8, ptr %i.kg, align 1, !tbaa !813, !noalias !20674 ; 2 uses
  %.not.i70.i.i = icmp eq i8 %.val61.i.i, 0
  br i1 %.not.i70.i.i, label %.lr.ph11.i.i, label %bb.as

.lr.ph11.i.i:                                     ; preds = %bb.ar, %.lr.ph11.i.i
  %.15010.i.i = phi ptr [ %.150.val68.i.i, %.lr.ph11.i.i ], [ %i.kf, %bb.ar ]
  %i.kh = getelementptr i8, ptr %.15010.i.i, i64 144
  %.150.val68.i.i = load ptr, ptr %i.kh, align 8, !tbaa !2753, !noalias !20674 ; 5 uses
  %i.ki = getelementptr i8, ptr %.150.val68.i.i, i64 11
  %.150.val60.i.i = load i8, ptr %i.ki, align 1, !tbaa !813, !noalias !20674 ; 2 uses
  %.not.i71.i.i = icmp eq i8 %.150.val60.i.i, 0
  br i1 %.not.i71.i.i, label %.lr.ph11.i.i, label %._crit_edge12.i.i, !llvm.loop !750

._crit_edge12.i.i:                                ; preds = %.lr.ph11.i.i
  %i.kj = getelementptr i8, ptr %.150.val68.i.i, i64 8
  %.150.val.i.i = load i8, ptr %i.kj, align 1, !tbaa !813, !noalias !20674
  %i.kk = zext i8 %.150.val.i.i to i64
  %.150.val57.i.i = load ptr, ptr %.150.val68.i.i, align 8, !tbaa !2753, !noalias !20674
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge12.i.i, %bb.ar
  %.251.val.i.i = phi i8 [ %.150.val60.i.i, %._crit_edge12.i.i ], [ %.val61.i.i, %bb.ar ]
  %.251.i.i = phi ptr [ %.150.val68.i.i, %._crit_edge12.i.i ], [ %i.kf, %bb.ar ]
  %.248.i.i = phi i64 [ %i.kk, %._crit_edge12.i.i ], [ %.147.i.i, %bb.ar ] ; 2 uses
  %.2.i.i = phi ptr [ %.150.val57.i.i, %._crit_edge12.i.i ], [ %.1.i.i, %bb.ar ] ; 3 uses
  %i.kl = zext i8 %.251.val.i.i to i64
  %i.km = shl nuw nsw i64 %i.kl, 4
  %i.kn = add nuw nsw i64 %i.km, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251.i.i, i64 noundef %i.kn) #36, !noalias !20674
  %i.ko = getelementptr i8, ptr %.2.i.i, i64 10
  %.2.val.i.i = load i8, ptr %i.ko, align 1, !tbaa !813, !noalias !20674
  %i.kp = zext i8 %.2.val.i.i to i64
  %.not.not.i.i = icmp samesign ult i64 %.248.i.i, %i.kp
  br i1 %.not.not.i.i, label %.backedge754, label %.preheader2.i.i

.backedge754:                                     ; preds = %bb.as, %bb.au
  %.147.i.i.be.in = phi i64 [ %.248.i.i, %bb.as ], [ %i.kt, %bb.au ]
  %.1.i.i.be = phi ptr [ %.2.i.i, %bb.as ], [ %.3.val56.i.i, %bb.au ]
  %.147.i.i.be = add nuw nsw i64 %.147.i.i.be.in, 1
  br label %bb.ar, !llvm.loop !751

.preheader2.i.i:                                  ; preds = %bb.as, %bb.at
  %.3.i.i = phi ptr [ %.3.val56.i.i, %bb.at ], [ %.2.i.i, %bb.as ] ; 3 uses
  %i.kq = getelementptr i8, ptr %.3.i.i, i64 8
  %.3.val.i.i = load i8, ptr %i.kq, align 1, !tbaa !813, !noalias !20674 ; 2 uses
  %.3.val56.i.i = load ptr, ptr %.3.i.i, align 8, !tbaa !2753, !noalias !20674 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3.i.i, i64 noundef 224) #36, !noalias !20674
  %i.kr = icmp eq ptr %.3.val56.i.i, %.val59.i.i
  br i1 %i.kr, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, label %bb.at

bb.at:                                            ; preds = %.preheader2.i.i
  %i.ks = getelementptr i8, ptr %.3.val56.i.i, i64 10
  %.val.i64.i = load i8, ptr %i.ks, align 1, !tbaa !813, !noalias !20674
  %.not.i.i = icmp ult i8 %.3.val.i.i, %.val.i64.i
  br i1 %.not.i.i, label %bb.au, label %.preheader2.i.i, !llvm.loop !752

bb.au:                                            ; preds = %bb.at
  %i.kt = zext i8 %.3.val.i.i to i64
  br label %.backedge754

.loopexit.sink.split.i.i:                         ; preds = %bb.aq, %bb.ap
  %.sink.i.i = phi i64 [ %i.jw, %bb.ap ], [ 224, %bb.aq ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %.sink.i.i) #36, !noalias !20674
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i: ; preds = %.preheader2.i.i, %.loopexit.sink.split.i.i
  %indvars.iv.next.i66.i.i.i = add nuw nsw i64 %indvars.iv.i65.i.i.i, 1 ; 2 uses
  %exitcond.not.i67.i.i.i = icmp eq i64 %indvars.iv.next.i66.i.i.i, %wide.trip.count.i64.i.i.i
  br i1 %exitcond.not.i67.i.i.i, label %._crit_edge.i68.i.i.i, label %bb.ao, !llvm.loop !20622

bb.av:                                            ; preds = %bb.av, %.lr.ph6.i71.i.i.i
  %.04.i72.i.i.i = phi i8 [ %.02.i69.i.i.i, %.lr.ph6.i71.i.i.i ], [ %.0.i73.i.i.i, %bb.av ] ; 3 uses
  %i.ku = sub i8 %.04.i72.i.i.i, %i.iu            ; 2 uses
  %i.kv = zext i8 %.04.i72.i.i.i to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.kv
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_OveralignedKey_Test8TestBodyEv:bb.a
  br label %bb.dg

bb.dg:                                            ; preds = %.backedge733, %._crit_edge.i.i.i.i.i302
  %.246.i.i.i.i.i310 = phi i64 [ %.04442.i.i.i.i.i303, %._crit_edge.i.i.i.i.i302 ], [ %i.yf, %.backedge733 ] ; 2 uses
  %.142.i.i.i.i.i311 = phi i64 [ %i.xp, %._crit_edge.i.i.i.i.i302 ], [ %.142.i.i.i.i.i311.be, %.backedge733 ] ; 2 uses
  %.1.i.i.i.i.i312 = phi ptr [ %.148.val65.i.i.i.i.i306, %._crit_edge.i.i.i.i.i302 ], [ %.1.i.i.i.i.i312.be, %.backedge733 ] ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i312, i64 160
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.xr, i64 %.142.i.i.i.i.i311
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !2764, !noalias !20680 ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 11
  %.val67.i.i.i.i.i313 = load i8, ptr %i.xu, align 1, !tbaa !813, !noalias !20680
  %.not.i74.i.i.i.i.i314 = icmp eq i8 %.val67.i.i.i.i.i313, 0
  br i1 %.not.i74.i.i.i.i.i314, label %.lr.ph24.i.i.i.i.i333, label %bb.dh

.lr.ph24.i.i.i.i.i333:                            ; preds = %bb.dg, %.lr.ph24.i.i.i.i.i333
  %.24923.i.i.i.i.i334 = phi ptr [ %.249.val71.i.i.i.i.i335, %.lr.ph24.i.i.i.i.i333 ], [ %i.xt, %bb.dg ]
  %i.xv = getelementptr i8, ptr %.24923.i.i.i.i.i334, i64 160
  %.249.val71.i.i.i.i.i335 = load ptr, ptr %i.xv, align 8, !tbaa !2764, !noalias !20680 ; 5 uses
  %i.xw = getelementptr i8, ptr %.249.val71.i.i.i.i.i335, i64 11
  %.249.val66.i.i.i.i.i336 = load i8, ptr %i.xw, align 1, !tbaa !813, !noalias !20680
  %.not.i75.i.i.i.i.i337 = icmp eq i8 %.249.val66.i.i.i.i.i336, 0
  br i1 %.not.i75.i.i.i.i.i337, label %.lr.ph24.i.i.i.i.i333, label %._crit_edge25.i.i.i.i.i338, !llvm.loop !20653

._crit_edge25.i.i.i.i.i338:                       ; preds = %.lr.ph24.i.i.i.i.i333
  %i.xx = getelementptr i8, ptr %.249.val71.i.i.i.i.i335, i64 8
  %.249.val.i.i.i.i.i339 = load i8, ptr %i.xx, align 1, !tbaa !813, !noalias !20680
  %i.xy = zext i8 %.249.val.i.i.i.i.i339 to i64
  %.249.val64.i.i.i.i.i340 = load ptr, ptr %.249.val71.i.i.i.i.i335, align 8, !tbaa !2764, !noalias !20680
  br label %bb.dh

bb.dh:                                            ; preds = %._crit_edge25.i.i.i.i.i338, %bb.dg
  %.350.i.i.i.i.i315 = phi ptr [ %.249.val71.i.i.i.i.i335, %._crit_edge25.i.i.i.i.i338 ], [ %i.xt, %bb.dg ] ; 2 uses
  %.243.i.i.i.i.i316 = phi i64 [ %i.xy, %._crit_edge25.i.i.i.i.i338 ], [ %.142.i.i.i.i.i311, %bb.dg ] ; 3 uses
  %.2.i.i.i.i.i317 = phi ptr [ %.249.val64.i.i.i.i.i340, %._crit_edge25.i.i.i.i.i338 ], [ %.1.i.i.i.i.i312, %bb.dg ] ; 4 uses
  %i.xz = icmp eq ptr %.350.i.i.i.i.i315, %.sroa.022.0.sink.i.i7.i.i300
  br i1 %i.xz, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ya = icmp eq ptr %.2.i.i.i.i.i317, %.sroa.022.0.sink.i.i7.i.i300
  %i.yb = icmp eq i64 %.243.i.i.i.i.i316, %i.xq
  %or.cond.i.i.i.i.i318 = select i1 %i.ya, i1 %i.yb, i1 false
  %i.yc = getelementptr i8, ptr %.350.i.i.i.i.i315, i64 10
  %.350.val70.i.i.i.i.i332 = load i8, ptr %i.yc, align 1, !tbaa !813, !noalias !20680
  %i.yd = zext i8 %.350.val70.i.i.i.i.i332 to i64 ; 3 uses
  br i1 %or.cond.i.i.i.i.i318, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ye = add i64 %.246.i.i.i.i.i310, 1
  %i.yf = add i64 %i.ye, %i.yd
  %i.yg = getelementptr i8, ptr %.2.i.i.i.i.i317, i64 10
  %.2.val.i.i.i.i.i320 = load i8, ptr %i.yg, align 1, !tbaa !813, !noalias !20680
  %i.yh = zext i8 %.2.val.i.i.i.i.i320 to i64
  %.not.not.i.i.i.i.i321 = icmp samesign ult i64 %.243.i.i.i.i.i316, %i.yh
  br i1 %.not.not.i.i.i.i.i321, label %.backedge733, label %.preheader5.i.i.i.i.i323

.backedge733:                                     ; preds = %bb.dk, %bb.dj
  %.142.i.i.i.i.i311.be.in = phi i64 [ %.243.i.i.i.i.i316, %bb.dj ], [ %i.yj, %bb.dk ]
  %.1.i.i.i.i.i312.be = phi ptr [ %.2.i.i.i.i.i317, %bb.dj ], [ %.3.val63.i.i.i.i.i326, %bb.dk ]
  %.142.i.i.i.i.i311.be = add nuw nsw i64 %.142.i.i.i.i.i311.be.in, 1
  br label %bb.dg, !llvm.loop !20654

.preheader5.i.i.i.i.i323:                         ; preds = %bb.dj, %bb.dk
  %.3.i.i.i.i.i324 = phi ptr [ %.3.val63.i.i.i.i.i326, %bb.dk ], [ %.2.i.i.i.i.i317, %bb.dj ] ; 2 uses
  %i.yi = getelementptr i8, ptr %.3.i.i.i.i.i324, i64 8
  %.3.val.i.i.i.i.i325 = load i8, ptr %i.yi, align 1, !tbaa !813, !noalias !20680 ; 2 uses
  %i.yj = zext i8 %.3.val.i.i.i.i.i325 to i64     ; 2 uses
  %.3.val63.i.i.i.i.i326 = load ptr, ptr %.3.i.i.i.i.i324, align 8, !tbaa !2764, !noalias !20680 ; 4 uses
  %i.yk = icmp eq ptr %.3.val63.i.i.i.i.i326, %.sroa.022.0.sink.i.i7.i.i300
  %i.yl = icmp eq i64 %i.yj, %i.xq
  %or.cond61.i.i.i.i.i327 = select i1 %i.yk, i1 %i.yl, i1 false
  br i1 %or.cond61.i.i.i.i.i327, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %.preheader5.i.i.i.i.i323
  %i.ym = getelementptr i8, ptr %.3.val63.i.i.i.i.i326, i64 10
  %.val.i.i.i.i.i328 = load i8, ptr %i.ym, align 1, !tbaa !813, !noalias !20680
  %.not.i.i.i.i.i329 = icmp ult i8 %.3.val.i.i.i.i.i325, %.val.i.i.i.i.i328
  br i1 %.not.i.i.i.i.i329, label %.backedge733, label %.preheader5.i.i.i.i.i323, !llvm.loop !20655

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i: ; preds = %bb.dh, %bb.di, %.preheader5.i.i.i.i.i323
  %.pn.i.i.i.i.i330 = phi i64 [ %i.yd, %.preheader5.i.i.i.i.i323 ], [ %i.xq, %bb.dh ], [ %i.yd, %bb.di ]
  %.051.i.i.i.i.i331 = add i64 %.pn.i.i.i.i.i330, %.246.i.i.i.i.i310
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, %bb.dc
  %i.yn = phi i1 [ true, %bb.dc ], [ %i.xc, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ]
  %.sroa.623.0.sink.i.i11.i.i67 = phi i32 [ %.sroa.623.0.sink.i.i10.i.i63, %bb.dc ], [ %.sroa.623.0.sink.i.i9.i.i299, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ]
  %.0.i.i.i.i68 = phi i64 [ %i.xa, %bb.dc ], [ %.051.i.i.i.i.i331, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i ] ; 5 uses
  %i.yo = icmp eq i64 %.0.i.i.i.i68, 0
  br i1 %i.yo, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEEE5eraseIS7_EEmRKS7_.exit.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_EmiENS2_IKSG_SI_SJ_EE.exit.i.i.i
  %i.yp = load i64, ptr %i.qt, align 16, !tbaa !2763, !noalias !20680 ; 4 uses
  %i.yq = icmp eq i64 %.0.i.i.i.i68, %i.yp
  br i1 %i.yq, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5clearEv.exit.i.i.i, label %bb.dm

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5clearEv.exit.i.i.i: ; preds = %bb.dl
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val.i.i37), !noalias !20680
  store <2 x ptr> <ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE9EmptyNodeEvE10empty_node, ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE9EmptyNodeEvE10empty_node>, ptr %18, align 16, !tbaa !2764, !noalias !20680
  store i64 0, ptr %i.qt, align 16, !tbaa !2763, !noalias !20680
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEEE5eraseIS7_EEmRKS7_.exit.i

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.yn, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.yr = zext i32 %.pn1.i.i.i.i.i.i61 to i64
  %i.ys = sub nsw i32 %.sroa.623.0.sink.i.i11.i.i67, %.pn1.i.i.i.i.i.i61 ; 2 uses
  %i.yt = trunc i32 %i.ys to i8                   ; 3 uses
  %i.yu = getelementptr i8, ptr %.pn3.i.i.i.i.i.i60, i64 10
  %i.yv = and i32 %.pn1.i.i.i.i.i.i61, 255        ; 2 uses
  %i.yw = and i32 %i.ys, 255                      ; 2 uses
  %i.yx = add nuw nsw i32 %i.yw, %i.yv            ; 2 uses
  %i.yy = zext i8 %.val.i45.i.i.i58 to i32        ; 2 uses
  %i.yz = and i32 %i.yx, 255                      ; 3 uses
  %i.za = sub nsw i32 %i.yy, %i.yz
  %i.zb = sext i32 %i.za to i64
  %i.zc = zext nneg i32 %i.yz to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i60, i64 16 ; 2 uses
  %i.ze = getelementptr inbounds nuw [16 x i8], ptr %i.zd, i64 %i.zc ; 2 uses
  %.idx.i.i.i.i.i272 = shl nuw nsw i64 %i.zb, 4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 %.idx.i.i.i.i.i272
  %.not1.i.i.i.i.i273 = icmp eq i32 %i.yz, %i.yy
  br i1 %.not1.i.i.i.i.i273, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i274

.lr.ph.preheader.i.i.i.i.i274:                    ; preds = %bb.dn
  %i.zg = zext nneg i32 %i.yv to i64
  %i.zh = getelementptr inbounds nuw [16 x i8], ptr %i.zd, i64 %i.zg
  br label %.lr.ph.i.i46.i.i.i275

.lr.ph.i.i46.i.i.i275:                            ; preds = %.lr.ph.i.i46.i.i.i275, %.lr.ph.preheader.i.i.i.i.i274
  %.03.i.i.i.i.i276 = phi ptr [ %i.zj, %.lr.ph.i.i46.i.i.i275 ], [ %i.zh, %.lr.ph.preheader.i.i.i.i.i274 ] ; 2 uses
  %.0122.i.i.i.i.i277 = phi ptr [ %i.zi, %.lr.ph.i.i46.i.i.i275 ], [ %i.ze, %.lr.ph.preheader.i.i.i.i.i274 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i.i.i.i276, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i.i.i.i277, i64 16, i1 false), !noalias !20680
  %i.zi = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i277, i64 16 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i276, i64 16
  %.not.i.i47.i.i.i278 = icmp eq ptr %i.zi, %i.zf
  br i1 %.not.i.i47.i.i.i278, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i275, !llvm.loop !753

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i275, %bb.dn
  %i.zk = getelementptr i8, ptr %.pn3.i.i.i.i.i.i60, i64 11
  %.val31.i.i.i.i279 = load i8, ptr %i.zk, align 1, !tbaa !813, !noalias !20680
  %.not.i32.i.i.i.i280 = icmp eq i8 %.val31.i.i.i.i279, 0
  br i1 %.not.i32.i.i.i.i280, label %.preheader.i.i.i.i281, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i

.preheader.i.i.i.i281:                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %.not7.i.i.i.i282 = icmp eq i8 %i.yt, 0
  br i1 %.not7.i.i.i.i282, label %._crit_edge.i.i.i.i288, label %.lr.ph.i.i.i.i283

.lr.ph.i.i.i.i283:                                ; preds = %.preheader.i.i.i.i281
  %i.zl = add nuw nsw i64 %i.yr, 1
  %i.zm = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i60, i64 160
  %wide.trip.count.i.i.i.i284 = zext nneg i32 %i.yw to i64
  br label %bb.do

._crit_edge.i.i.i.i288:                           ; preds = %bb.do, %.preheader.i.i.i.i281
  %i.zn = trunc i32 %i.yx to i8
  %.02.i.i.i.i289 = add i8 %i.zn, 1               ; 2 uses
  %.not3.i.i.i.i290 = icmp ugt i8 %.02.i.i.i.i289, %.val.i45.i.i.i58
  br i1 %.not3.i.i.i.i290, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %.lr.ph6.i.i.i.i291

.lr.ph6.i.i.i.i291:                               ; preds = %._crit_edge.i.i.i.i288
  %i.zo = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i.i60, i64 160 ; 2 uses
  br label %bb.dp

bb.do:                                            ; preds = %bb.do, %.lr.ph.i.i.i.i283
  %indvars.iv.i.i.i32.i285 = phi i64 [ 0, %.lr.ph.i.i.i.i283 ], [ %indvars.iv.next.i.i.i.i286, %bb.do ] ; 2 uses
  %i.zp = add nuw nsw i64 %i.zl, %indvars.iv.i.i.i32.i285
  %i.zq = and i64 %i.zp, 255
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zm, i64 %i.zq
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !2764, !noalias !20680
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %i.zs), !noalias !20680
  %indvars.iv.next.i.i.i.i286 = add nuw nsw i64 %indvars.iv.i.i.i32.i285, 1 ; 2 uses
  %exitcond.not.i.i.i.i287 = icmp eq i64 %indvars.iv.next.i.i.i.i286, %wide.trip.count.i.i.i.i284
  br i1 %exitcond.not.i.i.i.i287, label %._crit_edge.i.i.i.i288, label %bb.do, !llvm.loop !20656

bb.dp:                                            ; preds = %bb.dp, %.lr.ph6.i.i.i.i291
  %.04.i.i.i.i292 = phi i8 [ %.02.i.i.i.i289, %.lr.ph6.i.i.i.i291 ], [ %.0.i48.i.i.i293, %bb.dp ] ; 3 uses
  %i.zt = sub i8 %.04.i.i.i.i292, %i.yt           ; 2 uses
  %i.zu = zext i8 %.04.i.i.i.i292 to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !2764, !noalias !20680 ; 2 uses
  %i.zx = zext i8 %i.zt to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zx
  store ptr %i.zw, ptr %i.zy, align 8, !tbaa !2764, !noalias !20680
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store i8 %i.zt, ptr %i.zz, align 1, !tbaa !813, !noalias !20680
  %.0.i48.i.i.i293 = add i8 %.04.i.i.i.i292, 1    ; 2 uses
  %.not.i49.i.i.i294 = icmp ugt i8 %.0.i48.i.i.i293, %.val.i45.i.i.i58
  br i1 %.not.i49.i.i.i294, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %bb.dp, !llvm.loop !756

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i: ; preds = %bb.dp, %._crit_edge.i.i.i.i288, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %i.aaa = sub i8 %.val.i45.i.i.i58, %i.yt
  store i8 %i.aaa, ptr %i.yu, align 1, !tbaa !813, !noalias !20680
  %i.aab = load i64, ptr %i.qt, align 16, !tbaa !2763, !noalias !20680
  %i.aac = sub i64 %i.aab, %.0.i.i.i.i68
  store i64 %i.aac, ptr %i.qt, align 16, !tbaa !2763, !noalias !20680
  %i.aad = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr nonnull %.pn3.i.i.i.i.i.i60, i32 %.pn1.i.i.i.i.i.i61), !noalias !20680 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEEE5eraseIS7_EEmRKS7_.exit.i

bb.dq:                                            ; preds = %bb.dm
  %i.aae = sub i64 %i.yp, %.0.i.i.i.i68           ; 2 uses
  %.not154.i.i.i69 = icmp ult i64 %i.yp, %.0.i.i.i.i68
  br i1 %.not154.i.i.i69, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEEE5eraseIS7_EEmRKS7_.exit.i, label %.lr.ph.i.i.i70

.lr.ph.i.i.i70:                                   ; preds = %bb.dq, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i
  %i.aaf = phi i64 [ %i.aem, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %i.yp, %bb.dq ]
  %.sroa.13.0130.i.i.i71 = phi i32 [ %.sroa.13.1.i.i.i88, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %.pn1.i.i.i.i.i.i61, %bb.dq ] ; 6 uses
  %.sroa.0100.0129.i.i.i72 = phi ptr [ %.sroa.0100.1.i.i.i87, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE.exit.i.i.i ], [ %.pn3.i.i.i.i.i.i60, %bb.dq ] ; 8 uses
  %i.aag = getelementptr i8, ptr %.sroa.0100.0129.i.i.i72, i64 11 ; 2 uses
  %.val34.i.i.i73 = load i8, ptr %i.aag, align 1, !tbaa !813, !noalias !20680
  %.not.i.i.i74 = icmp eq i8 %.val34.i.i.i73, 0
  br i1 %.not.i.i.i74, label %.thread.i.i.i.i.i.i240, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i.i.i70
  %i.aah = sub nuw i64 %i.aaf, %i.aae
  %i.aai = getelementptr i8, ptr %.sroa.0100.0129.i.i.i72, i64 10 ; 2 uses
  %.val.i.i31.i75 = load i8, ptr %i.aai, align 1, !tbaa !813, !noalias !20680 ; 4 uses
  %i.aaj = zext i8 %.val.i.i31.i75 to i32         ; 3 uses
  %i.aak = sub nsw i32 %i.aaj, %.sroa.13.0130.i.i.i71
  %i.aal = sext i32 %i.aak to i64
  %.sroa.speculated.i.i.i76 = call i64 @llvm.umin.i64(i64 %i.aah, i64 %i.aal) ; 4 uses
  %i.aam = trunc i64 %.sroa.speculated.i.i.i76 to i8 ; 3 uses
  %i.aan = zext i32 %.sroa.13.0130.i.i.i71 to i64
  %i.aao = and i32 %.sroa.13.0130.i.i.i71, 255    ; 2 uses
  %i.aap = trunc i64 %.sroa.speculated.i.i.i76 to i32
  %i.aaq = add i32 %i.aao, %i.aap                 ; 2 uses
  %i.aar = and i32 %i.aaq, 255                    ; 3 uses
  %i.aas = sub nsw i32 %i.aaj, %i.aar
  %i.aat = sext i32 %i.aas to i64
  %i.aau = zext nneg i32 %i.aar to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i72, i64 16 ; 2 uses
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.aav, i64 %i.aau ; 2 uses
  %.idx.i.i51.i.i.i77 = shl nuw nsw i64 %i.aat, 4
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %.idx.i.i51.i.i.i77
  %.not1.i.i52.i.i.i78 = icmp eq i32 %i.aar, %i.aaj
  br i1 %.not1.i.i52.i.i.i78, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i, label %.lr.ph.preheader.i.i53.i.i.i79

.lr.ph.preheader.i.i53.i.i.i79:                   ; preds = %bb.dr
  %i.aay = zext nneg i32 %i.aao to i64
  %i.aaz = getelementptr inbounds nuw [16 x i8], ptr %i.aav, i64 %i.aay
  br label %.lr.ph.i.i54.i.i.i80

.lr.ph.i.i54.i.i.i80:                             ; preds = %.lr.ph.i.i54.i.i.i80, %.lr.ph.preheader.i.i53.i.i.i79
  %.03.i.i55.i.i.i81 = phi ptr [ %i.abb, %.lr.ph.i.i54.i.i.i80 ], [ %i.aaz, %.lr.ph.preheader.i.i53.i.i.i79 ] ; 2 uses
  %.0122.i.i56.i.i.i82 = phi ptr [ %i.aba, %.lr.ph.i.i54.i.i.i80 ], [ %i.aaw, %.lr.ph.preheader.i.i53.i.i.i79 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i55.i.i.i81, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i56.i.i.i82, i64 16, i1 false), !noalias !20680
  %i.aba = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i.i82, i64 16 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i.i81, i64 16
  %.not.i.i57.i.i.i83 = icmp eq ptr %i.aba, %i.aax
  br i1 %.not.i.i57.i.i.i83, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i, label %.lr.ph.i.i54.i.i.i80, !llvm.loop !753

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i: ; preds = %.lr.ph.i.i54.i.i.i80
  %.val31.i59.pre.i.i.i84 = load i8, ptr %i.aag, align 1, !tbaa !813, !noalias !20680
  %i.abc = icmp eq i8 %.val31.i59.pre.i.i.i84, 0
  br i1 %i.abc, label %.preheader.i61.i.i.i185, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i

.preheader.i61.i.i.i185:                          ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i
  %.not7.i62.i.i.i186 = icmp eq i8 %i.aam, 0
  br i1 %.not7.i62.i.i.i186, label %._crit_edge.i68.i.i.i196, label %.lr.ph.i63.i.i.i187

.lr.ph.i63.i.i.i187:                              ; preds = %.preheader.i61.i.i.i185
  %i.abd = add nuw nsw i64 %i.aan, 1
  %i.abe = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i72, i64 160
  %wide.trip.count.i64.i.i.i188 = and i64 %.sroa.speculated.i.i.i76, 255
  br label %bb.ds

._crit_edge.i68.i.i.i196:                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, %.preheader.i61.i.i.i185
  %i.abf = trunc i32 %i.aaq to i8
  %.02.i69.i.i.i197 = add i8 %i.abf, 1            ; 2 uses
  %.not3.i70.i.i.i198 = icmp ugt i8 %.02.i69.i.i.i197, %.val.i.i31.i75
  br i1 %.not3.i70.i.i.i198, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit75.i.i.i, label %.lr.ph6.i71.i.i.i199

.lr.ph6.i71.i.i.i199:                             ; preds = %._crit_edge.i68.i.i.i196
  %i.abg = getelementptr inbounds nuw i8, ptr %.sroa.0100.0129.i.i.i72, i64 160 ; 2 uses
  br label %bb.dz

bb.ds:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, %.lr.ph.i63.i.i.i187
  %indvars.iv.i65.i.i.i189 = phi i64 [ 0, %.lr.ph.i63.i.i.i187 ], [ %indvars.iv.next.i66.i.i.i194, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i ] ; 2 uses
  %i.abh = add nuw nsw i64 %i.abd, %indvars.iv.i65.i.i.i189
  %i.abi = and i64 %i.abh, 255
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abi
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !2764, !noalias !20680 ; 5 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 11
  %.val55.i.i190 = load i8, ptr %i.abl, align 1, !tbaa !813, !noalias !20680 ; 2 uses
  %.not1.i.i191 = icmp eq i8 %.val55.i.i190, 0
  br i1 %.not1.i.i191, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abm = zext i8 %.val55.i.i190 to i64
  %i.abn = shl nuw nsw i64 %i.abm, 4
  %i.abo = add nuw nsw i64 %i.abn, 16
  br label %.loopexit.sink.split.i.i192

bb.du:                                            ; preds = %bb.ds
  %i.abp = getelementptr i8, ptr %i.abk, i64 10
  %.val66.i.i203 = load i8, ptr %i.abp, align 1, !tbaa !813, !noalias !20680
  %i.abq = icmp eq i8 %.val66.i.i203, 0
  br i1 %i.abq, label %.loopexit.sink.split.i.i192, label %.lr.ph.preheader.i.i204

.lr.ph.preheader.i.i204:                          ; preds = %bb.du
  %.val59.i.i205 = load ptr, ptr %i.abk, align 8, !tbaa !2764, !noalias !20680
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206, %.lr.ph.preheader.i.i204
  %.0497.i.i207 = phi ptr [ %.049.val69.i.i208, %.lr.ph.i.i206 ], [ %i.abk, %.lr.ph.preheader.i.i204 ]
  %i.abr = getelementptr i8, ptr %.0497.i.i207, i64 160
  %.049.val69.i.i208 = load ptr, ptr %i.abr, align 8, !tbaa !2764, !noalias !20680 ; 4 uses
  %i.abs = getelementptr i8, ptr %.049.val69.i.i208, i64 11
  %.049.val62.i.i209 = load i8, ptr %i.abs, align 1, !tbaa !813, !noalias !20680
  %.not.i.i62.i210 = icmp eq i8 %.049.val62.i.i209, 0
  br i1 %.not.i.i62.i210, label %.lr.ph.i.i206, label %._crit_edge.i63.i211, !llvm.loop !757

._crit_edge.i63.i211:                             ; preds = %.lr.ph.i.i206
  %i.abt = getelementptr i8, ptr %.049.val69.i.i208, i64 8
  %.049.val.i.i212 = load i8, ptr %i.abt, align 1, !tbaa !813, !noalias !20680
  %i.abu = zext i8 %.049.val.i.i212 to i64
  %.049.val58.i.i213 = load ptr, ptr %.049.val69.i.i208, align 8, !tbaa !2764, !noalias !20680
  br label %bb.dv

bb.dv:                                            ; preds = %.backedge, %._crit_edge.i63.i211
  %.147.i.i216 = phi i64 [ %i.abu, %._crit_edge.i63.i211 ], [ %.147.i.i216.be, %.backedge ] ; 2 uses
  %.1.i.i217 = phi ptr [ %.049.val58.i.i213, %._crit_edge.i63.i211 ], [ %.1.i.i217.be, %.backedge ] ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.1.i.i217, i64 160
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %.147.i.i216
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !2764, !noalias !20680 ; 3 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 11
  %.val61.i.i218 = load i8, ptr %i.aby, align 1, !tbaa !813, !noalias !20680 ; 2 uses
  %.not.i70.i.i219 = icmp eq i8 %.val61.i.i218, 0
  br i1 %.not.i70.i.i219, label %.lr.ph11.i.i232, label %bb.dw

.lr.ph11.i.i232:                                  ; preds = %bb.dv, %.lr.ph11.i.i232
  %.15010.i.i233 = phi ptr [ %.150.val68.i.i234, %.lr.ph11.i.i232 ], [ %i.abx, %bb.dv ]
  %i.abz = getelementptr i8, ptr %.15010.i.i233, i64 160
  %.150.val68.i.i234 = load ptr, ptr %i.abz, align 8, !tbaa !2764, !noalias !20680 ; 5 uses
  %i.aca = getelementptr i8, ptr %.150.val68.i.i234, i64 11
  %.150.val60.i.i235 = load i8, ptr %i.aca, align 1, !tbaa !813, !noalias !20680 ; 2 uses
  %.not.i71.i.i236 = icmp eq i8 %.150.val60.i.i235, 0
  br i1 %.not.i71.i.i236, label %.lr.ph11.i.i232, label %._crit_edge12.i.i237, !llvm.loop !758

._crit_edge12.i.i237:                             ; preds = %.lr.ph11.i.i232
  %i.acb = getelementptr i8, ptr %.150.val68.i.i234, i64 8
  %.150.val.i.i238 = load i8, ptr %i.acb, align 1, !tbaa !813, !noalias !20680
  %i.acc = zext i8 %.150.val.i.i238 to i64
  %.150.val57.i.i239 = load ptr, ptr %.150.val68.i.i234, align 8, !tbaa !2764, !noalias !20680
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge12.i.i237, %bb.dv
  %.251.val.i.i220 = phi i8 [ %.150.val60.i.i235, %._crit_edge12.i.i237 ], [ %.val61.i.i218, %bb.dv ]
  %.251.i.i221 = phi ptr [ %.150.val68.i.i234, %._crit_edge12.i.i237 ], [ %i.abx, %bb.dv ]
  %.248.i.i222 = phi i64 [ %i.acc, %._crit_edge12.i.i237 ], [ %.147.i.i216, %bb.dv ] ; 2 uses
  %.2.i.i223 = phi ptr [ %.150.val57.i.i239, %._crit_edge12.i.i237 ], [ %.1.i.i217, %bb.dv ] ; 3 uses
  %i.acd = zext i8 %.251.val.i.i220 to i64
  %i.ace = shl nuw nsw i64 %i.acd, 4
  %i.acf = add nuw nsw i64 %i.ace, 16
  call void @_ZdlPvm(ptr noundef nonnull %.251.i.i221, i64 noundef %i.acf) #36, !noalias !20680
  %i.acg = getelementptr i8, ptr %.2.i.i223, i64 10
  %.2.val.i.i224 = load i8, ptr %i.acg, align 1, !tbaa !813, !noalias !20680
  %i.ach = zext i8 %.2.val.i.i224 to i64
  %.not.not.i.i225 = icmp samesign ult i64 %.248.i.i222, %i.ach
  br i1 %.not.not.i.i225, label %.backedge, label %.preheader2.i.i226

.backedge:                                        ; preds = %bb.dw, %bb.dy
  %.147.i.i216.be.in = phi i64 [ %.248.i.i222, %bb.dw ], [ %i.acl, %bb.dy ]
  %.1.i.i217.be = phi ptr [ %.2.i.i223, %bb.dw ], [ %.3.val56.i.i229, %bb.dy ]
  %.147.i.i216.be = add nuw nsw i64 %.147.i.i216.be.in, 1
  br label %bb.dv, !llvm.loop !759

.preheader2.i.i226:                               ; preds = %bb.dw, %bb.dx
  %.3.i.i227 = phi ptr [ %.3.val56.i.i229, %bb.dx ], [ %.2.i.i223, %bb.dw ] ; 3 uses
  %i.aci = getelementptr i8, ptr %.3.i.i227, i64 8
  %.3.val.i.i228 = load i8, ptr %i.aci, align 1, !tbaa !813, !noalias !20680 ; 2 uses
  %.3.val56.i.i229 = load ptr, ptr %.3.i.i227, align 8, !tbaa !2764, !noalias !20680 ; 4 uses
  call void @_ZdlPvm(ptr noundef nonnull %.3.i.i227, i64 noundef 240) #36, !noalias !20680
  %i.acj = icmp eq ptr %.3.val56.i.i229, %.val59.i.i205
  br i1 %i.acj, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %.preheader2.i.i226
  %i.ack = getelementptr i8, ptr %.3.val56.i.i229, i64 10
  %.val.i64.i230 = load i8, ptr %i.ack, align 1, !tbaa !813, !noalias !20680
  %.not.i.i231 = icmp ult i8 %.3.val.i.i228, %.val.i64.i230
  br i1 %.not.i.i231, label %bb.dy, label %.preheader2.i.i226, !llvm.loop !760

bb.dy:                                            ; preds = %bb.dx
  %i.acl = zext i8 %.3.val.i.i228 to i64
  br label %.backedge

.loopexit.sink.split.i.i192:                      ; preds = %bb.du, %bb.dt
  %.sink.i.i193 = phi i64 [ %i.abo, %bb.dt ], [ 240, %bb.du ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %.sink.i.i193) #36, !noalias !20680
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i: ; preds = %.preheader2.i.i226, %.loopexit.sink.split.i.i192
  %indvars.iv.next.i66.i.i.i194 = add nuw nsw i64 %indvars.iv.i65.i.i.i189, 1 ; 2 uses
  %exitcond.not.i67.i.i.i195 = icmp eq i64 %indvars.iv.next.i66.i.i.i194, %wide.trip.count.i64.i.i.i188
  br i1 %exitcond.not.i67.i.i.i195, label %._crit_edge.i68.i.i.i196, label %bb.ds, !llvm.loop !20656

bb.dz:                                            ; preds = %bb.dz, %.lr.ph6.i71.i.i.i199
  %.04.i72.i.i.i200 = phi i8 [ %.02.i69.i.i.i197, %.lr.ph6.i71.i.i.i199 ], [ %.0.i73.i.i.i201, %bb.dz ] ; 3 uses
  %i.acm = sub i8 %.04.i72.i.i.i200, %i.aam       ; 2 uses
  %i.acn = zext i8 %.04.i72.i.i.i200 to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.acn
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128BtreeMultiKeyTest_Erase_TestINS2_12MultiKeyCompEE8TestBodyEv:bb.a
bb.g:                                             ; preds = %.backedge, %._crit_edge.i.i.i.i
  %.246.i.i.i.i = phi i64 [ %.04442.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ar, %.backedge ] ; 2 uses
  %.142.i.i.i.i = phi i64 [ %i.ab, %._crit_edge.i.i.i.i ], [ %.142.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.1.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 256
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.142.i.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2485, !noalias !21045 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 11
  %.val67.i.i.i.i = load i8, ptr %i.ag, align 1, !tbaa !813, !noalias !21045
  %.not.i74.i.i.i.i = icmp eq i8 %.val67.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.h

.lr.ph24.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.af, %bb.g ]
  %i.ah = getelementptr i8, ptr %.24923.i.i.i.i, i64 256
  %.249.val71.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !2485, !noalias !21045 ; 5 uses
  %i.ai = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val66.i.i.i.i = load i8, ptr %i.ai, align 1, !tbaa !813, !noalias !21045
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !21002

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.aj = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !813, !noalias !21045
  %i.ak = zext i8 %.249.val.i.i.i.i to i64
  %.249.val64.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !2485, !noalias !21045
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge25.i.i.i.i, %bb.g
  %.350.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.243.i.i.i.i = phi i64 [ %i.ak, %._crit_edge25.i.i.i.i ], [ %.142.i.i.i.i, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %.249.val64.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %i.al = icmp eq ptr %.350.i.i.i.i, %.sroa.0.0.copyload.i
  br i1 %i.al, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %.2.i.i.i.i, %.sroa.0.0.copyload.i
  %i.an = icmp eq i64 %.243.i.i.i.i, %i.ac
  %or.cond.i.i.i.i = select i1 %i.am, i1 %i.an, i1 false
  %i.ao = getelementptr i8, ptr %.350.i.i.i.i, i64 10
  %.350.val70.i.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !813, !noalias !21045
  %i.ap = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.246.i.i.i.i, 1
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.as, align 1, !tbaa !813, !noalias !21045
  %i.at = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.at
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.j ], [ %i.av, %bb.k ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.j ], [ %.3.val63.i.i.i.i, %bb.k ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.g, !llvm.loop !21003

.preheader5.i.i.i.i:                              ; preds = %bb.j, %bb.k
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.k ], [ %.2.i.i.i.i, %bb.j ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.au, align 1, !tbaa !813, !noalias !21045 ; 2 uses
  %i.av = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !2485, !noalias !21045 ; 4 uses
  %i.aw = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ax = icmp eq i64 %i.av, %i.ac
  %or.cond61.i.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader5.i.i.i.i
  %i.ay = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !813, !noalias !21045
  %.not.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !21004

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i: ; preds = %bb.h, %bb.i, %.preheader5.i.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.ap, %.preheader5.i.i.i.i ], [ %i.ac, %bb.h ], [ %i.ap, %bb.i ]
  %.051.i.i.i.i = add i64 %.pn.i.i.i.i, %.246.i.i.i.i
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, %bb.c
  %.0.i.i.i = phi i64 [ %i.m, %bb.c ], [ %.051.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i ] ; 7 uses
  %i.az = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.az, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045 ; 4 uses
  %i.bc = icmp eq i64 %.0.i.i.i, %i.bb
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i, label %bb.m

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i: ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %.val.i), !noalias !21045
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !2485, !noalias !21045
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE9EmptyNodeEvE10empty_node, ptr %20, align 8, !tbaa !2485, !noalias !21045
  store i64 0, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i32 %.sroa.22.0.copyload.i to i64
  %i.be = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.bg, align 1, !tbaa !813, !noalias !21045 ; 4 uses
  %i.bh = and i32 %.sroa.22.0.copyload.i, 255     ; 2 uses
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.bl = and i32 %i.bj, 255                      ; 3 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.bl, %i.bk
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.bs = zext nneg i32 %i.bh to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i46.i.i ], [ %i.bt, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i46.i.i ], [ %i.bq, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 4, !noalias !21045
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !21045
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.bu, %i.br
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !659

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %bb.n
  %i.bw = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.bw, align 1, !tbaa !813, !noalias !21045
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %.not7.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.bx = add nuw nsw i64 %i.bd, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.bi to i64
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.o, %.preheader.i.i.i
  %i.bz = trunc i32 %i.bj to i8
  %.02.i.i.i = add i8 %i.bz, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 2 uses
  %i.cb = add nuw nsw i64 %i.bx, %indvars.iv.i.i.i
  %i.cc = and i64 %i.cb, 255
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2485, !noalias !21045
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.ce), !noalias !21045
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !21005

bb.p:                                             ; preds = %bb.p, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.p ] ; 3 uses
  %i.cf = sub i8 %.04.i.i.i, %i.bf                ; 2 uses
  %i.cg = zext i8 %.04.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2485, !noalias !21045 ; 2 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2485, !noalias !21045
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cf, ptr %i.cl, align 1, !tbaa !813, !noalias !21045
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %bb.p, !llvm.loop !777

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %i.cm = sub i8 %.val.i45.i.i, %i.bf
  store i8 %i.cm, ptr %i.bg, align 1, !tbaa !813, !noalias !21045
  %i.cn = load i64, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045
  %i.co = sub i64 %i.cn, %.0.i.i.i
  store i64 %i.co, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045
  %i.cp = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !21045 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.cq = sub i64 %i.bb, %.0.i.i.i                ; 2 uses
  %.not139.i.i = icmp ult i64 %i.bb, %.0.i.i.i
  br i1 %.not139.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.v
  %i.cr = phi i64 [ %i.ek, %bb.v ], [ %i.bb, %bb.q ]
  %.sroa.13.0119.i.i = phi i32 [ %.sroa.13.1.i.i, %bb.v ], [ %.sroa.22.0.copyload.i, %bb.q ] ; 5 uses
  %.sroa.090.0118.i.i = phi ptr [ %.sroa.090.1.i.i, %bb.v ], [ %.sroa.01.0.copyload.i, %bb.q ] ; 7 uses
  %i.cs = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.cs, align 1, !tbaa !813, !noalias !21045
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ct = sub nuw i64 %i.cr, %i.cq
  %i.cu = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.cu, align 1, !tbaa !813, !noalias !21045 ; 4 uses
  %i.cv = zext i8 %.val.i.i to i32                ; 3 uses
  %i.cw = sub nsw i32 %i.cv, %.sroa.13.0119.i.i
  %i.cx = sext i32 %i.cw to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cx) ; 4 uses
  %i.cy = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.cz = zext i32 %.sroa.13.0119.i.i to i64
  %i.da = and i32 %.sroa.13.0119.i.i, 255         ; 2 uses
  %i.db = trunc i64 %.sroa.speculated.i.i to i32
  %i.dc = add i32 %i.da, %i.db                    ; 2 uses
  %i.dd = and i32 %i.dc, 255                      ; 3 uses
  %i.de = sub nsw i32 %i.cv, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.df, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.dd, %i.cv
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.r
  %i.dk = zext nneg i32 %i.da to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dk
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i, %.lr.ph.preheader.i.i53.i.i
  %.03.i.i55.i.i = phi ptr [ %i.dn, %.lr.ph.i.i54.i.i ], [ %i.dl, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.dm, %.lr.ph.i.i54.i.i ], [ %i.di, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 4, !noalias !21045
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !21045
  %i.dm = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.dm, %i.dj
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !659

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i
  %.val31.i60.pre.i.i = load i8, ptr %i.cs, align 1, !tbaa !813, !noalias !21045
  %i.do = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.do, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i
  %.not7.i63.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.dp = add nuw nsw i64 %i.cz, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.s

._crit_edge.i69.i.i:                              ; preds = %bb.s, %.preheader.i62.i.i
  %i.dr = trunc i32 %i.dc to i8
  %.02.i70.i.i = add i8 %i.dr, 1                  ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i
  br i1 %.not3.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.s ] ; 2 uses
  %i.dt = add nuw nsw i64 %i.dp, %indvars.iv.i66.i.i
  %i.du = and i64 %i.dt, 255
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2485, !noalias !21045
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.dw), !noalias !21045
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.s, !llvm.loop !21005

bb.t:                                             ; preds = %bb.t, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.t ] ; 3 uses
  %i.dx = sub i8 %.04.i73.i.i, %i.cy              ; 2 uses
  %i.dy = zext i8 %.04.i73.i.i to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !2485, !noalias !21045 ; 2 uses
  %i.eb = zext i8 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !2485, !noalias !21045
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %i.dx, ptr %i.ed, align 1, !tbaa !813, !noalias !21045
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %bb.t, !llvm.loop !777

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i: ; preds = %bb.t, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, %bb.r
  %i.ee = sub i8 %.val.i.i, %i.cy
  store i8 %i.ee, ptr %i.cu, align 1, !tbaa !813, !noalias !21045
  %i.ef = and i64 %.sroa.speculated.i.i, 255
  %i.eg = load i64, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045
  %i.eh = sub i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045
  %i.ei = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21045
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ej = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21045
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ei, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i ], [ %i.ej, %bb.u ] ; 2 uses
  %.sroa.13.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 1
  %.sroa.090.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %i.ek = load i64, ptr %i.ba, align 8, !tbaa !2482, !noalias !21045 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, %i.cq
  br i1 %i.el, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !21006

.thread:                                          ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 0, ptr %i.f, align 8, !tbaa !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !802
  br label %bb.x

.loopexit:                                        ; preds = %bb.v, %bb.q, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 %.0.i.i.i, ptr %i.f, align 8, !tbaa !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !802
  %i.em = icmp eq i64 %.0.i.i.i, 2
  br i1 %i.em, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.x:                                             ; preds = %.thread, %.loopexit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.937, ptr noundef nonnull @.str.429, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.en = load i8, ptr %22, align 8, !tbaa !842, !range !843, !noundef !844
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ai, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %bb.dl

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !845 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.er, null
  br i1 %.not.i.i28, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.et = phi ptr [ %i.es, %bb.ab ], [ @.str.192, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2795, ptr noundef %i.et)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  %i.eu = load ptr, ptr %23, align 8, !tbaa !827  ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i29, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !816
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128BtreeMultiKeyTest_Erase_TestINS2_20MultiKeyThreeWayCompEE8TestBodyEv:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 256
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.142.i.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !2793, !noalias !21184 ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 11
  %.val63.i.i.i.i = load i8, ptr %i.ag, align 1, !tbaa !813, !noalias !21184
  %.not.i74.i.i.i.i = icmp eq i8 %.val63.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.h

.lr.ph24.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.af, %bb.g ]
  %i.ah = getelementptr i8, ptr %.24923.i.i.i.i, i64 256
  %.249.val71.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !2793, !noalias !21184 ; 5 uses
  %i.ai = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val.i.i.i.i = load i8, ptr %i.ai, align 1, !tbaa !813, !noalias !21184
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !21141

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.aj = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val68.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !813, !noalias !21184
  %i.ak = zext i8 %.249.val68.i.i.i.i to i64
  %.249.val65.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !2793, !noalias !21184
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge25.i.i.i.i, %bb.g
  %.350.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %i.af, %bb.g ] ; 2 uses
  %.243.i.i.i.i = phi i64 [ %i.ak, %._crit_edge25.i.i.i.i ], [ %.142.i.i.i.i, %bb.g ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %.249.val65.i.i.i.i, %._crit_edge25.i.i.i.i ], [ %.1.i.i.i.i, %bb.g ] ; 4 uses
  %i.al = icmp eq ptr %.350.i.i.i.i, %.sroa.0.0.copyload.i
  br i1 %i.al, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp eq ptr %.2.i.i.i.i, %.sroa.0.0.copyload.i
  %i.an = icmp eq i64 %.243.i.i.i.i, %i.ac
  %or.cond.i.i.i.i = select i1 %i.am, i1 %i.an, i1 false
  %i.ao = getelementptr i8, ptr %.350.i.i.i.i, i64 10
  %.350.val70.i.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !813, !noalias !21184
  %i.ap = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = add i64 %.246.i.i.i.i, 1
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.as, align 1, !tbaa !813, !noalias !21184
  %i.at = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.at
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.j ], [ %i.av, %bb.k ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.j ], [ %.3.val.i.i.i.i, %bb.k ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.g, !llvm.loop !21142

.preheader5.i.i.i.i:                              ; preds = %bb.j, %bb.k
  %.3.i.i.i.i = phi ptr [ %.3.val.i.i.i.i, %bb.k ], [ %.2.i.i.i.i, %bb.j ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val67.i.i.i.i = load i8, ptr %i.au, align 1, !tbaa !813, !noalias !21184 ; 2 uses
  %i.av = zext i8 %.3.val67.i.i.i.i to i64        ; 2 uses
  %.3.val.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !2793, !noalias !21184 ; 4 uses
  %i.aw = icmp eq ptr %.3.val.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ax = icmp eq i64 %i.av, %i.ac
  %or.cond61.i.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader5.i.i.i.i
  %i.ay = getelementptr i8, ptr %.3.val.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !813, !noalias !21184
  %.not.i.i.i.i = icmp ult i8 %.3.val67.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !21143

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i: ; preds = %bb.h, %bb.i, %.preheader5.i.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.ap, %.preheader5.i.i.i.i ], [ %i.ac, %bb.h ], [ %i.ap, %bb.i ]
  %.051.i.i.i.i = add i64 %.pn.i.i.i.i, %.246.i.i.i.i
  br label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i

_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, %bb.c
  %.0.i.i.i = phi i64 [ %i.m, %bb.c ], [ %.051.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i ] ; 7 uses
  %i.az = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.az, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184 ; 6 uses
  %i.bc = icmp eq i64 %.0.i.i.i, %i.bb
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i, label %bb.m

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i: ; preds = %bb.l
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %.val.i), !noalias !21184
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !2793, !noalias !21184
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE9EmptyNodeEvE10empty_node, ptr %20, align 8, !tbaa !2793, !noalias !21184
  store i64 0, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i32 %.sroa.22.0.copyload.i to i64
  %i.be = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.bg, align 1, !tbaa !813, !noalias !21184 ; 4 uses
  %i.bh = and i32 %.sroa.22.0.copyload.i, 255     ; 2 uses
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.bl = and i32 %i.bj, 255                      ; 3 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = zext nneg i32 %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.bl, %i.bk
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.bs = zext nneg i32 %i.bh to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i, %.lr.ph.preheader.i.i.i.i
  %.03.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i46.i.i ], [ %i.bt, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i46.i.i ], [ %i.bq, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 4, !noalias !21184
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !21184
  %i.bu = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.bu, %i.br
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !773

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %bb.n
  %i.bw = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.bw, align 1, !tbaa !813, !noalias !21184
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %.not7.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.bx = add nuw nsw i64 %i.bd, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.bi to i64
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.o, %.preheader.i.i.i
  %i.bz = trunc i32 %i.bj to i8
  %.02.i.i.i = add i8 %i.bz, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 2 uses
  %i.cb = add nuw nsw i64 %i.bx, %indvars.iv.i.i.i
  %i.cc = and i64 %i.cb, 255
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !2793, !noalias !21184
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.ce), !noalias !21184
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !21144

bb.p:                                             ; preds = %bb.p, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.p ] ; 3 uses
  %i.cf = sub i8 %.04.i.i.i, %i.bf                ; 2 uses
  %i.cg = zext i8 %.04.i.i.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2793, !noalias !21184 ; 2 uses
  %i.cj = zext i8 %i.cf to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2793, !noalias !21184
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cf, ptr %i.cl, align 1, !tbaa !813, !noalias !21184
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit, label %bb.p, !llvm.loop !779

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit: ; preds = %bb.p
  %.pre = load i64, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %i.cm = phi i64 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit ], [ %i.bb, %._crit_edge.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i ]
  %i.cn = sub i8 %.val.i45.i.i, %i.bf
  store i8 %i.cn, ptr %i.bg, align 1, !tbaa !813, !noalias !21184
  %i.co = sub i64 %i.cm, %.0.i.i.i
  store i64 %i.co, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184
  %i.cp = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !21184 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.cq = sub i64 %i.bb, %.0.i.i.i                ; 2 uses
  %.not139.i.i = icmp ult i64 %i.bb, %.0.i.i.i
  br i1 %.not139.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.v
  %i.cr = phi i64 [ %i.ek, %bb.v ], [ %i.bb, %bb.q ]
  %.sroa.13.0119.i.i = phi i32 [ %.sroa.13.1.i.i, %bb.v ], [ %.sroa.22.0.copyload.i, %bb.q ] ; 5 uses
  %.sroa.090.0118.i.i = phi ptr [ %.sroa.090.1.i.i, %bb.v ], [ %.sroa.01.0.copyload.i, %bb.q ] ; 7 uses
  %i.cs = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.cs, align 1, !tbaa !813, !noalias !21184
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ct = sub nuw i64 %i.cr, %i.cq
  %i.cu = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.cu, align 1, !tbaa !813, !noalias !21184 ; 4 uses
  %i.cv = zext i8 %.val.i.i to i32                ; 3 uses
  %i.cw = sub nsw i32 %i.cv, %.sroa.13.0119.i.i
  %i.cx = sext i32 %i.cw to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %i.cx) ; 4 uses
  %i.cy = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.cz = zext i32 %.sroa.13.0119.i.i to i64
  %i.da = and i32 %.sroa.13.0119.i.i, 255         ; 2 uses
  %i.db = trunc i64 %.sroa.speculated.i.i to i32
  %i.dc = add i32 %i.da, %i.db                    ; 2 uses
  %i.dd = and i32 %i.dc, 255                      ; 3 uses
  %i.de = sub nsw i32 %i.cv, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = zext nneg i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.df, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.dd, %i.cv
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.r
  %i.dk = zext nneg i32 %i.da to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dk
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i, %.lr.ph.preheader.i.i53.i.i
  %.03.i.i55.i.i = phi ptr [ %i.dn, %.lr.ph.i.i54.i.i ], [ %i.dl, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.dm, %.lr.ph.i.i54.i.i ], [ %i.di, %.lr.ph.preheader.i.i53.i.i ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 4, !noalias !21184
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !21184
  %i.dm = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.dm, %i.dj
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !773

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i
  %.val31.i60.pre.i.i = load i8, ptr %i.cs, align 1, !tbaa !813, !noalias !21184
  %i.do = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.do, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i
  %.not7.i63.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.dp = add nuw nsw i64 %i.cz, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.s

._crit_edge.i69.i.i:                              ; preds = %bb.s, %.preheader.i62.i.i
  %i.dr = trunc i32 %i.dc to i8
  %.02.i70.i.i = add i8 %i.dr, 1                  ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i
  br i1 %.not3.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.s ] ; 2 uses
  %i.dt = add nuw nsw i64 %i.dp, %indvars.iv.i66.i.i
  %i.du = and i64 %i.dt, 255
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !2793, !noalias !21184
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.dw), !noalias !21184
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.s, !llvm.loop !21144

bb.t:                                             ; preds = %bb.t, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.t ] ; 3 uses
  %i.dx = sub i8 %.04.i73.i.i, %i.cy              ; 2 uses
  %i.dy = zext i8 %.04.i73.i.i to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !2793, !noalias !21184 ; 2 uses
  %i.eb = zext i8 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !2793, !noalias !21184
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i8 %i.dx, ptr %i.ed, align 1, !tbaa !813, !noalias !21184
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %bb.t, !llvm.loop !779

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i: ; preds = %bb.t, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, %bb.r
  %i.ee = sub i8 %.val.i.i, %i.cy
  store i8 %i.ee, ptr %i.cu, align 1, !tbaa !813, !noalias !21184
  %i.ef = and i64 %.sroa.speculated.i.i, 255
  %i.eg = load i64, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184
  %i.eh = sub i64 %i.eg, %i.ef
  store i64 %i.eh, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184
  %i.ei = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21184
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.ej = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21184
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ei, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i ], [ %i.ej, %bb.u ] ; 2 uses
  %.sroa.13.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 1
  %.sroa.090.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %i.ek = load i64, ptr %i.ba, align 8, !tbaa !2789, !noalias !21184 ; 2 uses
  %i.el = icmp ugt i64 %i.ek, %i.cq
  br i1 %i.el, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !21145

.thread:                                          ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 0, ptr %i.f, align 8, !tbaa !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !802
  br label %bb.x

.loopexit:                                        ; preds = %bb.v, %bb.q, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 %.0.i.i.i, ptr %i.f, align 8, !tbaa !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !802
  %i.em = icmp eq i64 %.0.i.i.i, 2
  br i1 %i.em, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.x:                                             ; preds = %.thread, %.loopexit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.937, ptr noundef nonnull @.str.429, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.en = load i8, ptr %21, align 8, !tbaa !842, !range !843, !noundef !844
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.ai, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %bb.dl

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  %i.eq = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !845 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.er, null
  br i1 %.not.i.i28, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.et = phi ptr [ %i.es, %bb.ab ], [ @.str.192, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2795, ptr noundef %i.et)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  %i.eu = load ptr, ptr %22, align 8, !tbaa !827  ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i29, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !816
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

end_hunk_6
