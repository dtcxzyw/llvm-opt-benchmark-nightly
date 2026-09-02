Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 644
loop-unroll.NumUnrolled: 782
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_154Btree_HeterogeneousLookupDoesntDegradePerformance_Test8TestBodyEv:bb.a
  %i.rx = icmp eq ptr %i.rv, %i.rw
  br i1 %i.rx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i411: ; preds = %bb.ed
  %i.ry = load i64, ptr %i.rw, align 8, !tbaa !23
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
  store ptr %i.sa, ptr %36, align 8, !tbaa !24
  store i16 12341, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 2, ptr %i.sb, align 8, !tbaa !21
  %i.sc = getelementptr inbounds nuw i8, ptr %36, i64 18
  store i8 0, ptr %i.sc, align 2, !tbaa !23
  store i32 1, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_110StringLike18constructor_calls_E, align 4, !tbaa !9
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
  %.val.i.i.i429 = load i8, ptr %i.sf, align 1, !tbaa !23, !noalias !7535
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
  %.val62.i.i.i.i = load i8, ptr %i.sj, align 1, !tbaa !23, !noalias !7535
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
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !7510, !noalias !7535 ; 3 uses
  %.phi.trans.insert.i.i.i.i427 = getelementptr i8, ptr %i.sr, i64 11
  %.148.val6818.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i427, align 1, !tbaa !23, !noalias !7535
  %i.ss = icmp eq i8 %.148.val6818.pre.i.i.i.i, 0
  br i1 %i.ss, label %.lr.ph.i.i.i.i428, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i428:                                ; preds = %bb.ei, %.lr.ph.i.i.i.i428
  %.14820.i.i.i.i = phi ptr [ %.148.val72.i.i.i.i, %.lr.ph.i.i.i.i428 ], [ %i.sr, %bb.ei ]
  %i.st = getelementptr i8, ptr %.14820.i.i.i.i, i64 240
  %.148.val72.i.i.i.i = load ptr, ptr %i.st, align 8, !tbaa !7510, !noalias !7535 ; 3 uses
  %i.su = getelementptr i8, ptr %.148.val72.i.i.i.i, i64 11
  %.148.val68.i.i.i.i = load i8, ptr %i.su, align 1, !tbaa !23, !noalias !7535
  %.not.i73.i.i.i.i = icmp eq i8 %.148.val68.i.i.i.i, 0
  br i1 %.not.i73.i.i.i.i, label %.lr.ph.i.i.i.i428, label %._crit_edge.i.i.i.i, !llvm.loop !7538

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i428, %bb.ei, %bb.eh
  %.04442.i.i.i.i = phi i64 [ 1, %bb.ei ], [ %i.sl, %bb.eh ], [ 1, %.lr.ph.i.i.i.i428 ]
  %.148.lcssa.i.i.i.i = phi ptr [ %i.sr, %bb.ei ], [ %.sroa.01.0.copyload.i, %bb.eh ], [ %.148.val72.i.i.i.i, %.lr.ph.i.i.i.i428 ] ; 2 uses
  %i.sv = getelementptr i8, ptr %.148.lcssa.i.i.i.i, i64 8
  %.148.val.i.i.i.i = load i8, ptr %i.sv, align 1, !tbaa !23, !noalias !7535
  %i.sw = zext i8 %.148.val.i.i.i.i to i64
  %.148.val65.i.i.i.i = load ptr, ptr %.148.lcssa.i.i.i.i, align 8, !tbaa !7510, !noalias !7535
  %i.sx = sext i32 %.sroa.2.0.copyload.i to i64   ; 3 uses
  br label %bb.ej

bb.ej:                                            ; preds = %.backedge, %._crit_edge.i.i.i.i
  %.246.i.i.i.i = phi i64 [ %.04442.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.tm, %.backedge ] ; 2 uses
  %.142.i.i.i.i = phi i64 [ %i.sw, %._crit_edge.i.i.i.i ], [ %.142.i.i.i.i.be, %.backedge ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.1.i.i.i.i.be, %.backedge ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 240
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %.142.i.i.i.i
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !7510, !noalias !7535 ; 3 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 11
  %.val67.i.i.i.i = load i8, ptr %i.tb, align 1, !tbaa !23, !noalias !7535
  %.not.i74.i.i.i.i = icmp eq i8 %.val67.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i, label %.lr.ph24.i.i.i.i, label %bb.ek

.lr.ph24.i.i.i.i:                                 ; preds = %bb.ej, %.lr.ph24.i.i.i.i
  %.24923.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i, %.lr.ph24.i.i.i.i ], [ %i.ta, %bb.ej ]
  %i.tc = getelementptr i8, ptr %.24923.i.i.i.i, i64 240
  %.249.val71.i.i.i.i = load ptr, ptr %i.tc, align 8, !tbaa !7510, !noalias !7535 ; 5 uses
  %i.td = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 11
  %.249.val66.i.i.i.i = load i8, ptr %i.td, align 1, !tbaa !23, !noalias !7535
  %.not.i75.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i, label %.lr.ph24.i.i.i.i, label %._crit_edge25.i.i.i.i, !llvm.loop !7539

._crit_edge25.i.i.i.i:                            ; preds = %.lr.ph24.i.i.i.i
  %i.te = getelementptr i8, ptr %.249.val71.i.i.i.i, i64 8
  %.249.val.i.i.i.i = load i8, ptr %i.te, align 1, !tbaa !23, !noalias !7535
  %i.tf = zext i8 %.249.val.i.i.i.i to i64
  %.249.val64.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i, align 8, !tbaa !7510, !noalias !7535
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
  %.350.val70.i.i.i.i = load i8, ptr %i.tj, align 1, !tbaa !23, !noalias !7535
  %i.tk = zext i8 %.350.val70.i.i.i.i to i64      ; 3 uses
  br i1 %or.cond.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tl = add i64 %.246.i.i.i.i, 1
  %i.tm = add i64 %i.tl, %i.tk
  %i.tn = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.tn, align 1, !tbaa !23, !noalias !7535
  %i.to = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.to
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.en, %bb.em
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.em ], [ %i.tq, %bb.en ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.em ], [ %.3.val63.i.i.i.i, %bb.en ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.ej, !llvm.loop !7540

.preheader5.i.i.i.i:                              ; preds = %bb.em, %bb.en
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.en ], [ %.2.i.i.i.i, %bb.em ] ; 2 uses
  %i.tp = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.tp, align 1, !tbaa !23, !noalias !7535 ; 2 uses
  %i.tq = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !7510, !noalias !7535 ; 4 uses
  %i.tr = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ts = icmp eq i64 %i.tq, %i.sx
  %or.cond61.i.i.i.i = select i1 %i.tr, i1 %i.ts, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_E13distance_slowENS2_IKS8_SA_SB_EE.exit.i.i.i, label %bb.en

bb.en:                                            ; preds = %.preheader5.i.i.i.i
  %i.tt = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i419 = load i8, ptr %i.tt, align 1, !tbaa !23, !noalias !7535
  %.not.i.i.i.i420 = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i419
  br i1 %.not.i.i.i.i420, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !7541

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
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE16clear_and_deleteEPS7_PSaIS5_E(ptr noundef %.val141), !noalias !7535
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE9EmptyNodeEvE10empty_node, ptr %4, align 8, !tbaa !7510, !noalias !7535
  store i64 0, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  br label %.loopexit

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.se, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.tw = trunc i32 %.sroa.22.0.copyload.i to i8
  %i.tx = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i
  %i.ty = trunc i32 %i.tx to i8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13remove_valuesEhhPSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.01.0.copyload.i, i8 noundef zeroext %i.tw, i8 noundef zeroext %i.ty), !noalias !7535
  %i.tz = sub i64 %i.gl, %.0.i.i.i421
  store i64 %i.tz, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  %i.ua = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !7535 ; 0 uses
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
  %.val34.i.i = load i8, ptr %i.ud, align 1, !tbaa !23, !noalias !7535
  %.not.i.i422 = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i422, label %bb.et, label %bb.es

bb.es:                                            ; preds = %.lr.ph.i.i
  %i.ue = sub nuw i64 %i.uc, %i.ub
  %i.uf = getelementptr i8, ptr %.sroa.063.090.i.i, i64 10
  %.val.i.i423 = load i8, ptr %i.uf, align 1, !tbaa !23, !noalias !7535
  %i.ug = zext i8 %.val.i.i423 to i32
  %i.uh = sub nsw i32 %i.ug, %.sroa.13.091.i.i
  %i.ui = sext i32 %i.uh to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.ue, i64 %i.ui) ; 2 uses
  %i.uj = trunc i64 %.sroa.speculated.i.i to i8
  %i.uk = trunc i32 %.sroa.13.091.i.i to i8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13remove_valuesEhhPSaIS5_E(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.063.090.i.i, i8 noundef zeroext %i.uk, i8 noundef zeroext %i.uj), !noalias !7535
  %i.ul = and i64 %.sroa.speculated.i.i, 255
  %i.um = load i64, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  %i.un = sub i64 %i.um, %i.ul
  store i64 %i.un, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  %i.uo = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %.sroa.063.090.i.i, i32 %.sroa.13.091.i.i), !noalias !7535 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.uo, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.uo, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i

bb.et:                                            ; preds = %.lr.ph.i.i
  %i.up = trunc i32 %.sroa.13.091.i.i to i8
  %.mask.i.i.i = and i32 %.sroa.13.091.i.i, 255
  %i.uq = zext nneg i32 %.mask.i.i.i to i64       ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i, i64 16 ; 4 uses
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.uq ; 2 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !18, !noalias !7535 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 16 ; 2 uses
  %i.uv = icmp eq ptr %i.ut, %i.uu
  br i1 %i.uv, label %.thread.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i: ; preds = %bb.et
  %i.uw = load i64, ptr %i.uu, align 8, !tbaa !23, !noalias !7535
  %i.ux = add i64 %i.uw, 1
  call void @_ZdlPvm(ptr noundef %i.ut, i64 noundef %i.ux) #36, !noalias !7535
  %.val10.i.pre.i.i = load i8, ptr %i.ud, align 1, !tbaa !23, !noalias !7535
  %i.uy = icmp eq i8 %.val10.i.pre.i.i, 0
  br i1 %i.uy, label %.thread.i.i.i.i.i, label %bb.ev

.thread.i.i.i.i.i:                                ; preds = %bb.et, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.063.090.i.i, i64 240
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.uz, i64 %i.uq
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.va, align 8, !tbaa !7510, !noalias !7535 ; 3 uses
  %i.vb = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.vb, align 1, !tbaa !23, !noalias !7535
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %i.vc = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.vc, align 1, !tbaa !23, !noalias !7535
  %i.vd = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 240
  %i.ve = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vd, i64 %i.ve
  %.117.i.i.i.i.i.i = load ptr, ptr %i.vf, align 8, !tbaa !7510, !noalias !7535 ; 3 uses
  %i.vg = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.vg, align 1, !tbaa !23, !noalias !7535
  %.not.i.i.i.i.i.i.i425 = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i425, label %.lr.ph31.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i, !llvm.loop !7542

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i: ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.vh = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.vh, align 1, !tbaa !23, !noalias !7535
  %i.vi = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.vj = add nsw i32 %i.vi, -1                   ; 2 uses
  %i.vk = sext i32 %.sroa.13.091.i.i to i64
  %i.vl = sext i32 %i.vj to i64
  %i.vm = getelementptr inbounds nuw [32 x i8], ptr %i.ur, i64 %i.vk ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 16
  %i.vo = getelementptr inbounds nuw [32 x i8], ptr %i.vn, i64 %i.vl ; 5 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 16 ; 3 uses
  store ptr %i.vp, ptr %i.vm, align 8, !tbaa !24, !noalias !7535
  %i.vq = load ptr, ptr %i.vo, align 8, !tbaa !18, !noalias !7535 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 16 ; 5 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %bb.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.eu:                                            ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !21, !noalias !7535 ; 2 uses
  %i.vv = icmp ult i64 %i.vu, 16
  call void @llvm.assume(i1 %i.vv)
  %i.vw = add nuw nsw i64 %i.vu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vp, ptr noundef nonnull align 8 dereferenceable(1) %i.vr, i64 %i.vw, i1 false), !noalias !7535
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEEERKS6_PS9_EmmEv.exit.i.i.i
  store ptr %i.vq, ptr %i.vm, align 8, !tbaa !18, !noalias !7535
  %i.vx = load i64, ptr %i.vr, align 8, !tbaa !23, !noalias !7535
  store i64 %i.vx, ptr %i.vp, align 8, !tbaa !23, !noalias !7535
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.eu
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vo, i64 8 ; 2 uses
  %i.vz = load i64, ptr %i.vy, align 8, !tbaa !21, !noalias !7535
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !21, !noalias !7535
  store ptr %i.vr, ptr %i.vo, align 8, !tbaa !18, !noalias !7535
  store i64 0, ptr %i.vy, align 8, !tbaa !21, !noalias !7535
  store i8 0, ptr %i.vr, align 8, !tbaa !23, !noalias !7535
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i

bb.ev:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE13value_destroyEhPSaIS5_E.exit.i.i.i
  %i.wb = add i8 %i.up, 1                         ; 3 uses
  %i.wc = getelementptr i8, ptr %.sroa.063.090.i.i, i64 10
  %.val8.i.i.i = load i8, ptr %i.wc, align 1, !tbaa !23, !noalias !7535 ; 2 uses
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
  store ptr %i.wk, ptr %.03.i.i.i.i, align 8, !tbaa !24, !noalias !7535
  %i.wl = load ptr, ptr %.0122.i.i.i.i, align 8, !tbaa !18, !noalias !7535 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 16 ; 5 uses
  %i.wn = icmp eq ptr %i.wl, %i.wm
  br i1 %i.wn, label %bb.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i

bb.ew:                                            ; preds = %.lr.ph.i.i46.i.i
  %i.wo = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !21, !noalias !7535 ; 2 uses
  %i.wq = icmp ult i64 %i.wp, 16
  call void @llvm.assume(i1 %i.wq)
  %i.wr = add nuw nsw i64 %i.wp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wk, ptr noundef nonnull align 8 dereferenceable(1) %i.wm, i64 %i.wr, i1 false), !noalias !7535
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i: ; preds = %.lr.ph.i.i46.i.i
  store ptr %i.wl, ptr %.03.i.i.i.i, align 8, !tbaa !18, !noalias !7535
  %i.ws = load i64, ptr %i.wm, align 8, !tbaa !23, !noalias !7535
  store i64 %i.ws, ptr %i.wk, align 8, !tbaa !23, !noalias !7535
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i11.i.i.i, %bb.ew
  %i.wt = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !21, !noalias !7535
  %i.wv = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  store i64 %i.wu, ptr %i.wv, align 8, !tbaa !21, !noalias !7535
  store ptr %i.wm, ptr %.0122.i.i.i.i, align 8, !tbaa !18, !noalias !7535
  store i64 0, ptr %i.wt, align 8, !tbaa !21, !noalias !7535
  store i8 0, ptr %i.wm, align 8, !tbaa !23, !noalias !7535
  %i.ww = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 32 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 32
  %.not.i12.i.i.i = icmp eq ptr %i.ww, %i.wh
  br i1 %.not.i12.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !7518

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i, %bb.ev, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i
  %.val10.i126.i.i = phi i1 [ true, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ false, %bb.ev ], [ false, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ]
  %.sroa.10.0.i.i.i = phi i32 [ %i.vj, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ %.sroa.13.091.i.i, %bb.ev ], [ %.sroa.13.091.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i424 = phi ptr [ %.117.lcssa.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEmmPS7_PSaIS5_E.exit.i.i.i ], [ %.sroa.063.090.i.i, %bb.ev ], [ %.sroa.063.090.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE8transferEPS5_S8_PSaIS5_E.exit.i.i.i.i ] ; 2 uses
  %i.wy = getelementptr i8, ptr %.sroa.0.0.i.i.i424, i64 10 ; 2 uses
  %.val.i47.i.i = load i8, ptr %i.wy, align 1, !tbaa !23, !noalias !7535
  %i.wz = add i8 %.val.i47.i.i, -1
  store i8 %i.wz, ptr %i.wy, align 1, !tbaa !23, !noalias !7535
  %i.xa = load i64, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  %i.xb = add i64 %i.xa, -1
  store i64 %i.xb, ptr %i.j, align 8, !tbaa !7506, !noalias !7535
  %i.xc = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.sroa.0.0.i.i.i424, i32 %.sroa.10.0.i.i.i), !noalias !7535 ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i32 } %i.xc, 0 ; 7 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i32 } %i.xc, 1 ; 3 uses
  br i1 %.val10.i126.i.i, label %bb.ex, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS6_EERKS5_PSB_EE.exit.i.i

bb.ex:                                            ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_110StringLikeEJEEEE10transfer_nEmmmPS7_PSaIS5_E.exit.i.i.i
  %i.xd = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 11
  %.val1.i.i.i.i.i = load i8, ptr %i.xd, align 1, !tbaa !23, !noalias !7535
  %.not.i.i13.i.i.i = icmp eq i8 %.val1.i.i.i.i.i, 0
  br i1 %.not.i.i13.i.i.i, label %.thread.i.i21.i.i.i, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.xe = add nsw i32 %.fca.1.extract.i.i.i, 1    ; 3 uses
  %i.xf = getelementptr i8, ptr %.fca.0.extract.i.i.i, i64 10
  %.val.i.i14.i.i.i = load i8, ptr %i.xf, align 1, !tbaa !23, !noalias !7535
  %i.xg = zext i8 %.val.i.i14.i.i.i to i32
  %i.xh = icmp eq i32 %i.xe, %i.xg
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_134Btree_TryEmplaceWithHintWorks_Test8TestBodyEv:bb.a
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.it ], [ %.3.val63.i.i.i.i, %bb.iu ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.iq, !llvm.loop !14344

.preheader5.i.i.i.i:                              ; preds = %bb.it, %bb.iu
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.iu ], [ %.2.i.i.i.i, %bb.it ] ; 2 uses
  %i.wk = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.wk, align 1, !tbaa !23, !noalias !14339 ; 2 uses
  %i.wl = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !14297, !noalias !14339 ; 4 uses
  %i.wm = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.026.0.sink.i.i15.i
  %i.wn = icmp eq i64 %i.wl, %i.vs
  %or.cond61.i.i.i.i = select i1 %i.wm, i1 %i.wn, i1 false
  br i1 %or.cond61.i.i.i.i, label %"_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_E13distance_slowENS2_IKSB_RKSE_PSJ_EE.exit.i.i.i", label %bb.iu

bb.iu:                                            ; preds = %.preheader5.i.i.i.i
  %i.wo = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i504 = load i8, ptr %i.wo, align 1, !tbaa !23, !noalias !14339
  %.not.i.i.i.i505 = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i504
  br i1 %.not.i.i.i.i505, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !14345

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
  %.val1.i.i.i = load ptr, ptr %5, align 8, !tbaa !14270, !noalias !14339
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %.val1.i.i.i), !noalias !14339
  store ptr @"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE9EmptyNodeEvE10empty_node", ptr %i.ad, align 8, !tbaa !14297, !noalias !14339
  store ptr @"_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE9EmptyNodeEvE10empty_node", ptr %5, align 8, !tbaa !14297, !noalias !14339
  store i64 0, ptr %i.ae, align 8, !tbaa !14280, !noalias !14339
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  store i32 129, ptr %i.u, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  store i64 0, ptr %i.v, align 8, !tbaa !10
  br label %bb.ji

bb.iw:                                            ; preds = %bb.iv
  br i1 %i.wp, label %bb.ix, label %bb.ja

bb.ix:                                            ; preds = %bb.iw
  %i.ws = zext i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i to i64
  %i.wt = sub nsw i32 %.sroa.627.0.sink.i.i19.i, %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i ; 2 uses
  %i.wu = trunc i32 %i.wt to i8                   ; 3 uses
  %i.wv = getelementptr i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.wv, align 1, !tbaa !23, !noalias !14339 ; 5 uses
  %i.ww = and i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i, 255 ; 2 uses
  %i.wx = and i32 %i.wt, 255                      ; 2 uses
  %i.wy = add nuw nsw i32 %i.wx, %i.ww            ; 2 uses
  %i.wz = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.xa = and i32 %i.wy, 255                      ; 3 uses
  %i.xb = sub nsw i32 %i.wz, %i.xa
  %i.xc = sext i32 %i.xb to i64
  %i.xd = zext nneg i32 %i.xa to i64              ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 12 ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xd ; 5 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.xc, 3
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.xa, %i.wz
  br i1 %.not1.i.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i", label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.ix
  %i.xh = zext nneg i32 %i.ww to i64              ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %i.xh ; 4 uses
  %i.xj = zext i8 %.val.i45.i.i to i64
  %i.xk = shl nuw nsw i64 %i.xj, 3
  %i.xl = shl nuw nsw i64 %i.xd, 3
  %i.xm = add nsw i64 %i.xk, -8
  %i.xn = sub nsw i64 %i.xm, %i.xl                ; 2 uses
  %i.xo = lshr exact i64 %i.xn, 3
  %i.xp = add nuw nsw i64 %i.xo, 1                ; 2 uses
  %min.iters.check910 = icmp ult i64 %i.xn, 136
  br i1 %min.iters.check910, label %.lr.ph.i.i46.i.i.preheader, label %vector.memcheck907

vector.memcheck907:                               ; preds = %.lr.ph.preheader.i.i.i.i
  %i.xq = sub nsw i64 %i.xh, %i.xd
  %i.xr = shl nsw i64 %i.xq, 3
  %i.xs = add nsw i64 %i.xr, -1
  %diff.check908 = icmp ult i64 %i.xs, 31
  br i1 %diff.check908, label %.lr.ph.i.i46.i.i.preheader, label %vector.ph911

vector.ph911:                                     ; preds = %vector.memcheck907
  %n.vec912 = and i64 %i.xp, 4611686018427387900  ; 3 uses
  %i.xt = shl i64 %n.vec912, 3                    ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xi, i64 %i.xt
  %i.xv = getelementptr i8, ptr %i.xf, i64 %i.xt
  br label %vector.body913

vector.body913:                                   ; preds = %vector.body913, %vector.ph911
  %index914 = phi i64 [ 0, %vector.ph911 ], [ %index.next919, %vector.body913 ] ; 2 uses
  %i.xw = shl i64 %index914, 3                    ; 2 uses
  %next.gep915 = getelementptr i8, ptr %i.xi, i64 %i.xw ; 2 uses
  %next.gep916 = getelementptr i8, ptr %i.xf, i64 %i.xw ; 2 uses
  %i.xx = getelementptr i8, ptr %next.gep916, i64 16
  %wide.load917 = load <2 x i64>, ptr %next.gep916, align 1, !noalias !14339
  %wide.load918 = load <2 x i64>, ptr %i.xx, align 1, !noalias !14339
  %i.xy = getelementptr i8, ptr %next.gep915, i64 16
  store <2 x i64> %wide.load917, ptr %next.gep915, align 1, !noalias !14339
  store <2 x i64> %wide.load918, ptr %i.xy, align 1, !noalias !14339
  %index.next919 = add nuw i64 %index914, 4       ; 2 uses
  %i.xz = icmp eq i64 %index.next919, %n.vec912
  br i1 %i.xz, label %middle.block920, label %vector.body913, !llvm.loop !14346

middle.block920:                                  ; preds = %vector.body913
  %cmp.n921 = icmp eq i64 %i.xp, %n.vec912
  br i1 %cmp.n921, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i", label %.lr.ph.i.i46.i.i.preheader

.lr.ph.i.i46.i.i.preheader:                       ; preds = %vector.memcheck907, %.lr.ph.preheader.i.i.i.i, %middle.block920
  %.03.i.i.i.i.ph = phi ptr [ %i.xi, %vector.memcheck907 ], [ %i.xi, %.lr.ph.preheader.i.i.i.i ], [ %i.xu, %middle.block920 ]
  %.0122.i.i.i.i.ph = phi ptr [ %i.xf, %vector.memcheck907 ], [ %i.xf, %.lr.ph.preheader.i.i.i.i ], [ %i.xv, %middle.block920 ]
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i.preheader, %.lr.ph.i.i46.i.i
  %.03.i.i.i.i = phi ptr [ %i.yb, %.lr.ph.i.i46.i.i ], [ %.03.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.ya, %.lr.ph.i.i46.i.i ], [ %.0122.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 1, !noalias !14339
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !14339
  %i.ya = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.ya, %i.xg
  br i1 %.not.i.i47.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i", label %.lr.ph.i.i46.i.i, !llvm.loop !14347

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i": ; preds = %.lr.ph.i.i46.i.i, %middle.block920, %bb.ix
  %i.yc = getelementptr i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.yc, align 1, !tbaa !23, !noalias !14339
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i"

.preheader.i.i.i:                                 ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i"
  %.not7.i.i.i = icmp eq i8 %i.wu, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i503, label %.lr.ph.i.i.i502

.lr.ph.i.i.i502:                                  ; preds = %.preheader.i.i.i
  %i.yd = add nuw nsw i64 %i.ws, 1
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.wx to i64
  br label %bb.iy

._crit_edge.i.i.i503:                             ; preds = %bb.iy, %.preheader.i.i.i
  %i.yf = trunc i32 %i.wy to i8
  %.02.i.i.i = add i8 %i.yf, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i", label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i503
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i64 256 ; 2 uses
  br label %bb.iz

bb.iy:                                            ; preds = %bb.iy, %.lr.ph.i.i.i502
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i502 ], [ %indvars.iv.next.i.i.i, %bb.iy ] ; 2 uses
  %i.yh = add nuw nsw i64 %i.yd, %indvars.iv.i.i.i
  %i.yi = and i64 %i.yh, 255
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yi
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !14297, !noalias !14339
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %i.yk), !noalias !14339
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i503, label %bb.iy, !llvm.loop !14348

bb.iz:                                            ; preds = %bb.iz, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.iz ] ; 3 uses
  %i.yl = sub i8 %.04.i.i.i, %i.wu                ; 2 uses
  %i.ym = zext i8 %.04.i.i.i to i64
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.ym
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !14297, !noalias !14339 ; 2 uses
  %i.yp = zext i8 %i.yl to i64
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yp
  store ptr %i.yo, ptr %i.yq, align 8, !tbaa !14297, !noalias !14339
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  store i8 %i.yl, ptr %i.yr, align 1, !tbaa !23, !noalias !14339
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i", label %bb.iz, !llvm.loop !14349

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit.i.i": ; preds = %bb.iz, %._crit_edge.i.i.i503, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i.i.i"
  %i.ys = sub i8 %.val.i45.i.i, %i.wu
  store i8 %i.ys, ptr %i.wv, align 1, !tbaa !23, !noalias !14339
  %i.yt = load i64, ptr %i.ae, align 8, !tbaa !14280, !noalias !14339
  %i.yu = sub i64 %i.yt, %.0.i.i.i
  store i64 %i.yu, ptr %i.ae, align 8, !tbaa !14280, !noalias !14339
  %i.yv = call fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, i32 %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i), !noalias !14339 ; 0 uses
  %.val222.pr.pre = load i64, ptr %i.ae, align 8, !tbaa !14280
  br label %.loopexit

bb.ja:                                            ; preds = %bb.iw
  %i.yw = sub i64 %.val223, %.0.i.i.i             ; 2 uses
  %.not157.i.i = icmp ult i64 %.val223, %.0.i.i.i
  br i1 %.not157.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ja, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"
  %i.yx = phi i64 [ %i.acu, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.val223, %bb.ja ]
  %.sroa.13.0133.i.i = phi i32 [ %.sroa.13.1.i.i, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.sroa.7.0.i.i.i.lcssa.sink.i.i14.i, %bb.ja ] ; 6 uses
  %.sroa.0103.0132.i.i = phi ptr [ %.sroa.0103.1.i.i, %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i" ], [ %.sroa.0.0.i8.i.i.lcssa49.sink.i.i11.i, %bb.ja ] ; 8 uses
  %i.yy = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.yy, align 1, !tbaa !23, !noalias !14339
  %.not.i.i485 = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i485, label %.thread.i.i.i.i.i487, label %bb.jb

bb.jb:                                            ; preds = %.lr.ph.i.i
  %i.yz = sub nuw i64 %i.yx, %i.yw
  %i.za = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 10 ; 2 uses
  %.val.i.i486 = load i8, ptr %i.za, align 1, !tbaa !23, !noalias !14339 ; 5 uses
  %i.zb = zext i8 %.val.i.i486 to i32             ; 3 uses
  %i.zc = sub nsw i32 %i.zb, %.sroa.13.0133.i.i
  %i.zd = sext i32 %i.zc to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.yz, i64 %i.zd) ; 4 uses
  %i.ze = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.zf = zext i32 %.sroa.13.0133.i.i to i64
  %i.zg = and i32 %.sroa.13.0133.i.i, 255         ; 2 uses
  %i.zh = trunc i64 %.sroa.speculated.i.i to i32
  %i.zi = add i32 %i.zg, %i.zh                    ; 2 uses
  %i.zj = and i32 %i.zi, 255                      ; 3 uses
  %i.zk = sub nsw i32 %i.zb, %i.zj
  %i.zl = sext i32 %i.zk to i64
  %i.zm = zext nneg i32 %i.zj to i64              ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 12 ; 2 uses
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zm ; 5 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.zl, 3
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.zj, %i.zb
  br i1 %.not1.i.i52.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.jb
  %i.zq = zext nneg i32 %i.zg to i64              ; 2 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.zq ; 4 uses
  %i.zs = zext i8 %.val.i.i486 to i64
  %i.zt = shl nuw nsw i64 %i.zs, 3
  %i.zu = shl nuw nsw i64 %i.zm, 3
  %i.zv = add nsw i64 %i.zt, -8
  %i.zw = sub nsw i64 %i.zv, %i.zu                ; 2 uses
  %i.zx = lshr exact i64 %i.zw, 3
  %i.zy = add nuw nsw i64 %i.zx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zw, 56
  br i1 %min.iters.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i53.i.i
  %i.zz = sub nsw i64 %i.zq, %i.zm
  %i.aaa = shl nsw i64 %i.zz, 3
  %i.aab = add nsw i64 %i.aaa, -1
  %diff.check = icmp ult i64 %i.aab, 31
  br i1 %diff.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zy, 4611686018427387900     ; 3 uses
  %i.aac = shl i64 %n.vec, 3                      ; 2 uses
  %i.aad = getelementptr i8, ptr %i.zr, i64 %i.aac
  %i.aae = getelementptr i8, ptr %i.zo, i64 %i.aac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aaf = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.zr, i64 %i.aaf ; 2 uses
  %next.gep904 = getelementptr i8, ptr %i.zo, i64 %i.aaf ; 2 uses
  %i.aag = getelementptr i8, ptr %next.gep904, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep904, align 1, !noalias !14339
  %wide.load905 = load <2 x i64>, ptr %i.aag, align 1, !noalias !14339
  %i.aah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !noalias !14339
  store <2 x i64> %wide.load905, ptr %i.aah, align 1, !noalias !14339
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aai = icmp eq i64 %index.next, %n.vec
  br i1 %i.aai, label %middle.block, label %vector.body, !llvm.loop !14350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zy, %n.vec
  br i1 %cmp.n, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i", label %.lr.ph.i.i54.i.i.preheader

.lr.ph.i.i54.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.preheader.i.i53.i.i, %middle.block
  %.03.i.i55.i.i.ph = phi ptr [ %i.zr, %vector.memcheck ], [ %i.zr, %.lr.ph.preheader.i.i53.i.i ], [ %i.aad, %middle.block ]
  %.0122.i.i56.i.i.ph = phi ptr [ %i.zo, %vector.memcheck ], [ %i.zo, %.lr.ph.preheader.i.i53.i.i ], [ %i.aae, %middle.block ]
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i.preheader, %.lr.ph.i.i54.i.i
  %.03.i.i55.i.i = phi ptr [ %i.aak, %.lr.ph.i.i54.i.i ], [ %.03.i.i55.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.aaj, %.lr.ph.i.i54.i.i ], [ %.0122.i.i56.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 1, !noalias !14339
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !14339
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.aaj, %i.zp
  br i1 %.not.i.i58.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i", label %.lr.ph.i.i54.i.i, !llvm.loop !14351

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i": ; preds = %.lr.ph.i.i54.i.i, %middle.block
  %.val31.i60.pre.i.i = load i8, ptr %i.yy, align 1, !tbaa !23, !noalias !14339
  %i.aal = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.aal, label %.preheader.i62.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i"

.preheader.i62.i.i:                               ; preds = %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i"
  %.not7.i63.i.i = icmp eq i8 %i.ze, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.aam = add nuw nsw i64 %i.zf, 1
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.jc

._crit_edge.i69.i.i:                              ; preds = %bb.jc, %.preheader.i62.i.i
  %i.aao = trunc i32 %i.zi to i8
  %.02.i70.i.i = add i8 %i.aao, 1                 ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i486
  br i1 %.not3.i71.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.aap = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256 ; 2 uses
  br label %bb.jd

bb.jc:                                            ; preds = %bb.jc, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.jc ] ; 2 uses
  %i.aaq = add nuw nsw i64 %i.aam, %indvars.iv.i66.i.i
  %i.aar = and i64 %i.aaq, 255
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.aar
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !14297, !noalias !14339
  call fastcc void @"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16clear_and_deleteEPSA_PSaISt4pairIKiiEE"(ptr noundef %i.aat), !noalias !14339
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.jc, !llvm.loop !14348

bb.jd:                                            ; preds = %bb.jd, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.jd ] ; 3 uses
  %i.aau = sub i8 %.04.i73.i.i, %i.ze             ; 2 uses
  %i.aav = zext i8 %.04.i73.i.i to i64
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aav
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !14297, !noalias !14339 ; 2 uses
  %i.aay = zext i8 %i.aau to i64
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.aap, i64 %i.aay
  store ptr %i.aax, ptr %i.aaz, align 8, !tbaa !14297, !noalias !14339
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  store i8 %i.aau, ptr %i.aba, align 1, !tbaa !23, !noalias !14339
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i486
  br i1 %.not.i75.i.i, label %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i", label %bb.jd, !llvm.loop !14349

"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13remove_valuesEhhPSaISt4pairIKiiEE.exit76.i.i": ; preds = %bb.jd, %._crit_edge.i69.i.i, %"_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE10transfer_nEmmmPSA_PSaISt4pairIKiiEE.exit.i59.i.i", %bb.jb
  %i.abb = sub i8 %.val.i.i486, %i.ze
  store i8 %i.abb, ptr %i.za, align 1, !tbaa !23, !noalias !14339
  %i.abc = and i64 %.sroa.speculated.i.i, 255
  %i.abd = load i64, ptr %i.ae, align 8, !tbaa !14280, !noalias !14339
  %i.abe = sub i64 %i.abd, %i.abc
  store i64 %i.abe, ptr %i.ae, align 8, !tbaa !14280, !noalias !14339
  %i.abf = call fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr nonnull %.sroa.0103.0132.i.i, i32 %.sroa.13.0133.i.i), !noalias !14339 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.abf, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.abf, 1
  br label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSG_EE.exit.i.i"

.thread.i.i.i.i.i487:                             ; preds = %.lr.ph.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %i.abh = and i32 %.sroa.13.0133.i.i, 255
  %i.abi = zext nneg i32 %i.abh to i64
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abi
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.abj, align 8, !tbaa !14297, !noalias !14339 ; 3 uses
  %i.abk = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.abk, align 1, !tbaa !23, !noalias !14339
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i488

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i487, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i487 ] ; 2 uses
  %i.abl = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.abl, align 1, !tbaa !23, !noalias !14339
  %i.abm = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 256
  %i.abn = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.abm, i64 %i.abn
  %.117.i.i.i.i.i.i = load ptr, ptr %i.abo, align 8, !tbaa !14297, !noalias !14339 ; 3 uses
  %i.abp = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.abp, align 1, !tbaa !23, !noalias !14339
  %.not.i.i.i.i.i.i.i501 = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i501, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i488, !llvm.loop !14311

.loopexit.i.i488:                                 ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i487
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i487 ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.abq = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10 ; 3 uses
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.abq, align 1, !tbaa !23, !noalias !14339
  %i.abr = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.abs = add nsw i32 %i.abr, -1                 ; 2 uses
  %i.abt = sext i32 %.sroa.13.0133.i.i to i64
  %i.abu = sext i32 %i.abs to i64
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 12
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %i.abt
  %i.abx = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 12
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abx, i64 %i.abu
  %.val.i.i89.i.i = load i64, ptr %i.aby, align 1, !noalias !14339
  store i64 %.val.i.i89.i.i, ptr %i.abw, align 1, !noalias !14339
  %.val.i86.i.i = load i8, ptr %i.abq, align 1, !tbaa !23, !noalias !14339
  %i.abz = add i8 %.val.i86.i.i, -1
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128Btree_ReusePoisonMemory_Test8TestBodyEv:bb.a
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.cc, align 1, !tbaa !23, !noalias !20499
  %i.cd = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.cd
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.u, %bb.t
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.t ], [ %i.cf, %bb.u ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.t ], [ %.3.val63.i.i.i.i, %bb.u ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.q, !llvm.loop !20504

.preheader5.i.i.i.i:                              ; preds = %bb.t, %bb.u
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.u ], [ %.2.i.i.i.i, %bb.t ] ; 2 uses
  %i.ce = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.ce, align 1, !tbaa !23, !noalias !20499 ; 2 uses
  %i.cf = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !20494, !noalias !20499 ; 4 uses
  %i.cg = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.022.0.sink.i.i7.i
  %i.ch = icmp eq i64 %i.cf, %i.bm
  %or.cond61.i.i.i.i = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEERKlPSC_E13distance_slowENS2_IKSB_SD_SE_EE.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.preheader5.i.i.i.i
  %i.ci = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ci, align 1, !tbaa !23, !noalias !20499
  %.not.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !20505

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
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !20485, !noalias !20499 ; 4 uses
  %i.cm = icmp eq i64 %.0.i.i.i, %i.cl
  br i1 %i.cm, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5clearEv.exit.i.i, label %bb.w

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5clearEv.exit.i.i: ; preds = %bb.v
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %.val.i, ptr noundef nonnull %i.a), !noalias !20499
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %i.b, align 8, !tbaa !20494, !noalias !20499
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE9EmptyNodeEvE10empty_node, ptr %2, align 8, !tbaa !20494, !noalias !20499
  store i64 0, ptr %i.c, align 8, !tbaa !20485, !noalias !20499
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
  %i.cy = zext nneg i32 %i.cv to i64              ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cy ; 5 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.cx, 3
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.cv, %i.cu
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.x
  %i.dc = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc ; 4 uses
  %i.de = zext i8 %.val.i45.i.i to i64
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = shl nuw nsw i64 %i.cy, 3
  %i.dh = add nsw i64 %i.df, -8
  %i.di = sub nsw i64 %i.dh, %i.dg                ; 2 uses
  %i.dj = lshr exact i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check103 = icmp ult i64 %i.di, 136
  br i1 %min.iters.check103, label %.lr.ph.i.i46.i.i.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph.preheader.i.i.i.i
  %i.dl = sub nsw i64 %i.dc, %i.cy
  %i.dm = shl nsw i64 %i.dl, 3
  %i.dn = add nsw i64 %i.dm, -1
  %diff.check101 = icmp ult i64 %i.dn, 31
  br i1 %diff.check101, label %.lr.ph.i.i46.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck100
  %n.vec105 = and i64 %i.dk, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec105, 3                    ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dd, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.da, i64 %i.do
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 2 uses
  %i.dr = shl i64 %index107, 3                    ; 2 uses
  %next.gep108 = getelementptr i8, ptr %i.dd, i64 %i.dr ; 2 uses
  %next.gep109 = getelementptr i8, ptr %i.da, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110 = load <2 x i64>, ptr %next.gep109, align 8, !noalias !20499
  %wide.load111 = load <2 x i64>, ptr %i.ds, align 8, !noalias !20499
  %i.dt = getelementptr i8, ptr %next.gep108, i64 16
  store <2 x i64> %wide.load110, ptr %next.gep108, align 1, !noalias !20499
  store <2 x i64> %wide.load111, ptr %i.dt, align 1, !noalias !20499
  %index.next112 = add nuw i64 %index107, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.du, label %middle.block113, label %vector.body106, !llvm.loop !20506

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.dk, %n.vec105
  br i1 %cmp.n114, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i, label %.lr.ph.i.i46.i.i.preheader

.lr.ph.i.i46.i.i.preheader:                       ; preds = %vector.memcheck100, %.lr.ph.preheader.i.i.i.i, %middle.block113
  %.03.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck100 ], [ %i.dd, %.lr.ph.preheader.i.i.i.i ], [ %i.dp, %middle.block113 ]
  %.0122.i.i.i.i.ph = phi ptr [ %i.da, %vector.memcheck100 ], [ %i.da, %.lr.ph.preheader.i.i.i.i ], [ %i.dq, %middle.block113 ]
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i.preheader, %.lr.ph.i.i46.i.i
  %.03.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i46.i.i ], [ %.03.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i46.i.i ], [ %.0122.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 8, !noalias !20499
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !20499
  %i.dv = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.dv, %i.db
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !20507

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %middle.block113, %bb.x
  %i.dx = getelementptr i8, ptr %.pn3.i.i.i.i.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.dx, align 1, !tbaa !23, !noalias !20499
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i
  %.not39.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not39.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.dy = add nuw nsw i64 %i.cn, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.cs to i64
  br label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.y, %.preheader.i.i.i
  %i.ea = trunc i32 %i.ct to i8
  %.034.i.i.i = add i8 %i.ea, 1                   ; 2 uses
  %.not35.i.i.i = icmp ugt i8 %.034.i.i.i, %.val.i45.i.i
  br i1 %.not35.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i, label %.lr.ph38.i.i.i

.lr.ph38.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i.i, i64 256 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.y ] ; 2 uses
  %i.ec = add nuw nsw i64 %i.dy, %indvars.iv.i.i.i
  %i.ed = and i64 %i.ec, 255
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !20494, !noalias !20499
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %i.ef, ptr noundef nonnull readonly %i.a), !noalias !20499
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.y, !llvm.loop !20508

bb.z:                                             ; preds = %bb.z, %.lr.ph38.i.i.i
  %.036.i.i.i = phi i8 [ %.034.i.i.i, %.lr.ph38.i.i.i ], [ %.0.i48.i.i, %bb.z ] ; 3 uses
  %i.eg = sub i8 %.036.i.i.i, %i.cp               ; 2 uses
  %i.eh = zext i8 %.036.i.i.i to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20494, !noalias !20499 ; 2 uses
  %i.ek = zext i8 %i.eg to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !20494, !noalias !20499
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 %i.eg, ptr %i.em, align 1, !tbaa !23, !noalias !20499
  %.0.i48.i.i = add i8 %.036.i.i.i, 1             ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i, label %bb.z, !llvm.loop !20509

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit.i.i: ; preds = %bb.z, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i.i.i
  %i.en = sub i8 %.val.i45.i.i, %i.cp
  store i8 %i.en, ptr %i.cq, align 1, !tbaa !23, !noalias !20499
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !20485, !noalias !20499
  %i.ep = sub i64 %i.eo, %.0.i.i.i
  store i64 %i.ep, ptr %i.c, align 8, !tbaa !20485, !noalias !20499
  %i.eq = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.pn3.i.i.i.i.i, i32 %.pn1.i.i.i.i.i), !noalias !20499 ; 0 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit

bb.aa:                                            ; preds = %bb.w
  %i.er = sub i64 %i.cl, %.0.i.i.i                ; 2 uses
  %.not157.i.i = icmp ult i64 %i.cl, %.0.i.i.i
  br i1 %.not157.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEEEE5eraseIlEEmRKl.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i
  %i.es = phi i64 [ %i.ip, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %i.cl, %bb.aa ]
  %.sroa.13.0133.i.i = phi i32 [ %.sroa.13.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %.pn1.i.i.i.i.i, %bb.aa ] ; 6 uses
  %.sroa.0103.0132.i.i = phi ptr [ %.sroa.0103.1.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i ], [ %.pn3.i.i.i.i.i, %bb.aa ] ; 8 uses
  %i.et = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.et, align 1, !tbaa !23, !noalias !20499
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %.thread.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.eu = sub nuw i64 %i.es, %i.er
  %i.ev = getelementptr i8, ptr %.sroa.0103.0132.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.ev, align 1, !tbaa !23, !noalias !20499 ; 5 uses
  %i.ew = zext i8 %.val.i.i to i32                ; 3 uses
  %i.ex = sub nsw i32 %i.ew, %.sroa.13.0133.i.i
  %i.ey = sext i32 %i.ex to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ey) ; 4 uses
  %i.ez = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.fa = zext i32 %.sroa.13.0133.i.i to i64
  %i.fb = and i32 %.sroa.13.0133.i.i, 255         ; 2 uses
  %i.fc = trunc i64 %.sroa.speculated.i.i to i32
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  %i.fe = and i32 %i.fd, 255                      ; 3 uses
  %i.ff = sub nsw i32 %i.ew, %i.fe
  %i.fg = sext i32 %i.ff to i64
  %i.fh = zext nneg i32 %i.fe to i64              ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh ; 5 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.fg, 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.fe, %i.ew
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.ab
  %i.fl = zext nneg i32 %i.fb to i64              ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fl ; 4 uses
  %i.fn = zext i8 %.val.i.i to i64
  %i.fo = shl nuw nsw i64 %i.fn, 3
  %i.fp = shl nuw nsw i64 %i.fh, 3
  %i.fq = add nsw i64 %i.fo, -8
  %i.fr = sub nsw i64 %i.fq, %i.fp                ; 2 uses
  %i.fs = lshr exact i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fr, 56
  br i1 %min.iters.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i53.i.i
  %i.fu = sub nsw i64 %i.fl, %i.fh
  %i.fv = shl nsw i64 %i.fu, 3
  %i.fw = add nsw i64 %i.fv, -1
  %diff.check = icmp ult i64 %i.fw, 31
  br i1 %diff.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ft, 4611686018427387900     ; 3 uses
  %i.fx = shl i64 %n.vec, 3                       ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fm, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fj, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.ga ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.fj, i64 %i.ga ; 2 uses
  %i.gb = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep97, align 8, !noalias !20499
  %wide.load98 = load <2 x i64>, ptr %i.gb, align 8, !noalias !20499
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !noalias !20499
  store <2 x i64> %wide.load98, ptr %i.gc, align 1, !noalias !20499
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !20510

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i, label %.lr.ph.i.i54.i.i.preheader

.lr.ph.i.i54.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.preheader.i.i53.i.i, %middle.block
  %.03.i.i55.i.i.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.preheader.i.i53.i.i ], [ %i.fy, %middle.block ]
  %.0122.i.i56.i.i.ph = phi ptr [ %i.fj, %vector.memcheck ], [ %i.fj, %.lr.ph.preheader.i.i53.i.i ], [ %i.fz, %middle.block ]
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i.preheader, %.lr.ph.i.i54.i.i
  %.03.i.i55.i.i = phi ptr [ %i.gf, %.lr.ph.i.i54.i.i ], [ %.03.i.i55.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.ge, %.lr.ph.i.i54.i.i ], [ %.0122.i.i56.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 8, !noalias !20499
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !20499
  %i.ge = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.ge, %i.fk
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !20511

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i, %middle.block
  %.val31.i60.pre.i.i = load i8, ptr %i.et, align 1, !tbaa !23, !noalias !20499
  %i.gg = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.gg, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i
  %.not39.i63.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not39.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.gh = add nuw nsw i64 %i.fa, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.ac

._crit_edge.i69.i.i:                              ; preds = %bb.ac, %.preheader.i62.i.i
  %i.gj = trunc i32 %i.fd to i8
  %.034.i70.i.i = add i8 %i.gj, 1                 ; 2 uses
  %.not35.i71.i.i = icmp ugt i8 %.034.i70.i.i, %.val.i.i
  br i1 %.not35.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %.lr.ph38.i72.i.i

.lr.ph38.i72.i.i:                                 ; preds = %._crit_edge.i69.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256 ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.ac ] ; 2 uses
  %i.gl = add nuw nsw i64 %i.gh, %indvars.iv.i66.i.i
  %i.gm = and i64 %i.gl, 255
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !20494, !noalias !20499
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef %i.go, ptr noundef nonnull readonly %i.a), !noalias !20499
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.ac, !llvm.loop !20508

bb.ad:                                            ; preds = %bb.ad, %.lr.ph38.i72.i.i
  %.036.i73.i.i = phi i8 [ %.034.i70.i.i, %.lr.ph38.i72.i.i ], [ %.0.i74.i.i, %bb.ad ] ; 3 uses
  %i.gp = sub i8 %.036.i73.i.i, %i.ez             ; 2 uses
  %i.gq = zext i8 %.036.i73.i.i to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !20494, !noalias !20499 ; 2 uses
  %i.gt = zext i8 %i.gp to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gt
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !20494, !noalias !20499
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i8 %i.gp, ptr %i.gv, align 1, !tbaa !23, !noalias !20499
  %.0.i74.i.i = add i8 %.036.i73.i.i, 1           ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i, label %bb.ad, !llvm.loop !20509

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE13remove_valuesEhhPS8_.exit76.i.i: ; preds = %bb.ad, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE10transfer_nEmmmPSA_PS8_.exit.i59.i.i, %bb.ab
  %i.gw = sub i8 %.val.i.i, %i.ez
  store i8 %i.gw, ptr %i.ev, align 1, !tbaa !23, !noalias !20499
  %i.gx = and i64 %.sroa.speculated.i.i, 255
  %i.gy = load i64, ptr %i.c, align 8, !tbaa !20485, !noalias !20499
  %i.gz = sub i64 %i.gy, %i.gx
  store i64 %i.gz, ptr %i.c, align 8, !tbaa !20485, !noalias !20499
  %i.ha = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull %.sroa.0103.0132.i.i, i32 %.sroa.13.0133.i.i), !noalias !20499 ; 2 uses
  %.fca.0.extract4.i.i = extractvalue { ptr, i32 } %i.ha, 0
  %.fca.1.extract5.i.i = extractvalue { ptr, i32 } %i.ha, 1
  br label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIlJSt4lessIlENS1_12_GLOBAL__N_118ArenaLikeAllocatorIlEEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKlPSE_EE.exit.i.i

.thread.i.i.i.i.i:                                ; preds = %.lr.ph.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 256
  %i.hc = and i32 %.sroa.13.0133.i.i, 255
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.hd
  %.11727.i.i.i.i.i.i = load ptr, ptr %i.he, align 8, !tbaa !20494, !noalias !20499 ; 3 uses
  %i.hf = getelementptr i8, ptr %.11727.i.i.i.i.i.i, i64 11
  %.117.val2028.i.i.i.i.i.i = load i8, ptr %i.hf, align 1, !tbaa !23, !noalias !20499
  %.not.i29.i.i.i.i.i.i = icmp eq i8 %.117.val2028.i.i.i.i.i.i, 0
  br i1 %.not.i29.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i

.lr.ph31.i.i.i.i.i.i:                             ; preds = %.thread.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i
  %.11730.i.i.i.i.i.i = phi ptr [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ], [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ] ; 2 uses
  %i.hg = getelementptr i8, ptr %.11730.i.i.i.i.i.i, i64 10
  %.117.val18.i.i.i.i.i.i = load i8, ptr %i.hg, align 1, !tbaa !23, !noalias !20499
  %i.hh = getelementptr inbounds nuw i8, ptr %.11730.i.i.i.i.i.i, i64 256
  %i.hi = zext i8 %.117.val18.i.i.i.i.i.i to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hi
  %.117.i.i.i.i.i.i = load ptr, ptr %i.hj, align 8, !tbaa !20494, !noalias !20499 ; 3 uses
  %i.hk = getelementptr i8, ptr %.117.i.i.i.i.i.i, i64 11
  %.117.val20.i.i.i.i.i.i = load i8, ptr %i.hk, align 1, !tbaa !23, !noalias !20499
  %.not.i.i.i.i.i.i.i = icmp eq i8 %.117.val20.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph31.i.i.i.i.i.i, label %.loopexit.i.i, !llvm.loop !20512

.loopexit.i.i:                                    ; preds = %.lr.ph31.i.i.i.i.i.i, %.thread.i.i.i.i.i
  %.117.lcssa.i.i.i.i.i.i = phi ptr [ %.11727.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.117.i.i.i.i.i.i, %.lr.ph31.i.i.i.i.i.i ] ; 3 uses
  %i.hl = getelementptr i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 10 ; 3 uses
  %.117.val.i.i.i.i.i.i = load i8, ptr %i.hl, align 1, !tbaa !23, !noalias !20499
  %i.hm = zext i8 %.117.val.i.i.i.i.i.i to i32
  %i.hn = add nsw i32 %i.hm, -1                   ; 2 uses
  %i.ho = sext i32 %.sroa.13.0133.i.i to i64
  %i.hp = sext i32 %i.hn to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0103.0132.i.i, i64 16
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %.117.lcssa.i.i.i.i.i.i, i64 16
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hp
  %.val.i.i89.i.i = load i64, ptr %i.ht, align 8, !noalias !20499
  store i64 %.val.i.i89.i.i, ptr %i.hr, align 1, !noalias !20499
  %.val.i86.i.i = load i8, ptr %i.hl, align 1, !tbaa !23, !noalias !20499
  %i.hu = add i8 %.val.i86.i.i, -1
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_125Btree_OveralignedKey_Test8TestBodyEv:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %.backedge757, %._crit_edge.i.i.i.i.i
  %.246.i.i.i.i.i = phi i64 [ %.04442.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.gn, %.backedge757 ] ; 2 uses
  %.142.i.i.i.i.i = phi i64 [ %i.fx, %._crit_edge.i.i.i.i.i ], [ %.142.i.i.i.i.i.be, %.backedge757 ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %.148.val65.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i.i.i.be, %.backedge757 ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 144
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %.142.i.i.i.i.i
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !20647, !noalias !20675 ; 3 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 11
  %.val67.i.i.i.i.i = load i8, ptr %i.gc, align 1, !tbaa !23, !noalias !20675
  %.not.i74.i.i.i.i.i = icmp eq i8 %.val67.i.i.i.i.i, 0
  br i1 %.not.i74.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %bb.ad

.lr.ph24.i.i.i.i.i:                               ; preds = %bb.ac, %.lr.ph24.i.i.i.i.i
  %.24923.i.i.i.i.i = phi ptr [ %.249.val71.i.i.i.i.i, %.lr.ph24.i.i.i.i.i ], [ %i.gb, %bb.ac ]
  %i.gd = getelementptr i8, ptr %.24923.i.i.i.i.i, i64 144
  %.249.val71.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !tbaa !20647, !noalias !20675 ; 5 uses
  %i.ge = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 11
  %.249.val66.i.i.i.i.i = load i8, ptr %i.ge, align 1, !tbaa !23, !noalias !20675
  %.not.i75.i.i.i.i.i = icmp eq i8 %.249.val66.i.i.i.i.i, 0
  br i1 %.not.i75.i.i.i.i.i, label %.lr.ph24.i.i.i.i.i, label %._crit_edge25.i.i.i.i.i, !llvm.loop !20679

._crit_edge25.i.i.i.i.i:                          ; preds = %.lr.ph24.i.i.i.i.i
  %i.gf = getelementptr i8, ptr %.249.val71.i.i.i.i.i, i64 8
  %.249.val.i.i.i.i.i = load i8, ptr %i.gf, align 1, !tbaa !23, !noalias !20675
  %i.gg = zext i8 %.249.val.i.i.i.i.i to i64
  %.249.val64.i.i.i.i.i = load ptr, ptr %.249.val71.i.i.i.i.i, align 8, !tbaa !20647, !noalias !20675
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
  %.350.val70.i.i.i.i.i = load i8, ptr %i.gk, align 1, !tbaa !23, !noalias !20675
  %i.gl = zext i8 %.350.val70.i.i.i.i.i to i64    ; 3 uses
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gm = add i64 %.246.i.i.i.i.i, 1
  %i.gn = add i64 %i.gm, %i.gl
  %i.go = getelementptr i8, ptr %.2.i.i.i.i.i, i64 10
  %.2.val.i.i.i.i.i = load i8, ptr %i.go, align 1, !tbaa !23, !noalias !20675
  %i.gp = zext i8 %.2.val.i.i.i.i.i to i64
  %.not.not.i.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i.i, %i.gp
  br i1 %.not.not.i.i.i.i.i, label %.backedge757, label %.preheader5.i.i.i.i.i

.backedge757:                                     ; preds = %bb.ag, %bb.af
  %.142.i.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i.i, %bb.af ], [ %i.gr, %bb.ag ]
  %.1.i.i.i.i.i.be = phi ptr [ %.2.i.i.i.i.i, %bb.af ], [ %.3.val63.i.i.i.i.i, %bb.ag ]
  %.142.i.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.i.be.in, 1
  br label %bb.ac, !llvm.loop !20680

.preheader5.i.i.i.i.i:                            ; preds = %bb.af, %bb.ag
  %.3.i.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i.i, %bb.ag ], [ %.2.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.gq = getelementptr i8, ptr %.3.i.i.i.i.i, i64 8
  %.3.val.i.i.i.i.i = load i8, ptr %i.gq, align 1, !tbaa !23, !noalias !20675 ; 2 uses
  %i.gr = zext i8 %.3.val.i.i.i.i.i to i64        ; 2 uses
  %.3.val63.i.i.i.i.i = load ptr, ptr %.3.i.i.i.i.i, align 8, !tbaa !20647, !noalias !20675 ; 4 uses
  %i.gs = icmp eq ptr %.3.val63.i.i.i.i.i, %.sroa.022.0.sink.i.i7.i.i
  %i.gt = icmp eq i64 %i.gr, %i.fy
  %or.cond61.i.i.i.i.i = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond61.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi144EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.preheader5.i.i.i.i.i
  %i.gu = getelementptr i8, ptr %.3.val63.i.i.i.i.i, i64 10
  %.val.i.i.i.i.i = load i8, ptr %i.gu, align 1, !tbaa !23, !noalias !20675
  %.not.i.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %.backedge757, label %.preheader5.i.i.i.i.i, !llvm.loop !20681

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
  %i.gx = load i64, ptr %i.b, align 16, !tbaa !20646, !noalias !20675 ; 4 uses
  %i.gy = icmp eq i64 %.0.i.i.i.i, %i.gx
  br i1 %i.gy, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5clearEv.exit.i.i.i, label %bb.ai

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE5clearEv.exit.i.i.i: ; preds = %bb.ah
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val.i.i), !noalias !20675
  store <2 x ptr> <ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE9EmptyNodeEvE10empty_node, ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE9EmptyNodeEvE10empty_node>, ptr %17, align 16, !tbaa !20647, !noalias !20675
  store i64 0, ptr %i.b, align 16, !tbaa !20646, !noalias !20675
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i.i.i.i, i64 16, i1 false), !noalias !20675
  %i.hq = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 16 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %.not.i.i47.i.i.i = icmp eq ptr %i.hq, %i.hn
  br i1 %.not.i.i47.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i, !llvm.loop !20658

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i, %bb.aj
  %i.hs = getelementptr i8, ptr %.pn3.i.i.i.i.i.i, i64 11
  %.val31.i.i.i.i = load i8, ptr %i.hs, align 1, !tbaa !23, !noalias !20675
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
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !20647, !noalias !20675
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %i.ia), !noalias !20675
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i32.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ak, !llvm.loop !20682

bb.al:                                            ; preds = %bb.al, %.lr.ph6.i.i.i.i
  %.04.i.i.i.i = phi i8 [ %.02.i.i.i.i, %.lr.ph6.i.i.i.i ], [ %.0.i48.i.i.i, %bb.al ] ; 3 uses
  %i.ib = sub i8 %.04.i.i.i.i, %i.hb              ; 2 uses
  %i.ic = zext i8 %.04.i.i.i.i to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.ic
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !20647, !noalias !20675 ; 2 uses
  %i.if = zext i8 %i.ib to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.if
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !20647, !noalias !20675
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store i8 %i.ib, ptr %i.ih, align 1, !tbaa !23, !noalias !20675
  %.0.i48.i.i.i = add i8 %.04.i.i.i.i, 1          ; 2 uses
  %.not.i49.i.i.i = icmp ugt i8 %.0.i48.i.i.i, %.val.i45.i.i.i
  br i1 %.not.i49.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %bb.al, !llvm.loop !20683

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE13remove_valuesEhhPSB_.exit.i.i.i: ; preds = %bb.al, %._crit_edge.i.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %i.ii = sub i8 %.val.i45.i.i.i, %i.hb
  store i8 %i.ii, ptr %i.hc, align 1, !tbaa !23, !noalias !20675
  %i.ij = load i64, ptr %i.b, align 16, !tbaa !20646, !noalias !20675
  %i.ik = sub i64 %i.ij, %.0.i.i.i.i
  store i64 %i.ik, ptr %i.b, align 16, !tbaa !20646, !noalias !20675
  %i.il = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr nonnull %.pn3.i.i.i.i.i.i, i32 %.pn1.i.i.i.i.i.i), !noalias !20675 ; 0 uses
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
  %.val34.i.i.i = load i8, ptr %i.io, align 1, !tbaa !23, !noalias !20675
  %.not.i.i.i = icmp eq i8 %.val34.i.i.i, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %i.ip = sub nuw i64 %i.in, %i.im
  %i.iq = getelementptr i8, ptr %.sroa.0100.0129.i.i.i, i64 10 ; 2 uses
  %.val.i.i31.i = load i8, ptr %i.iq, align 1, !tbaa !23, !noalias !20675 ; 4 uses
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i55.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i56.i.i.i, i64 16, i1 false), !noalias !20675
  %i.ji = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i.i, i64 16 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i.i, i64 16
  %.not.i.i57.i.i.i = icmp eq ptr %i.ji, %i.jf
  br i1 %.not.i.i57.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i, label %.lr.ph.i.i54.i.i.i, !llvm.loop !20658

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i: ; preds = %.lr.ph.i.i54.i.i.i
  %.val31.i59.pre.i.i.i = load i8, ptr %i.io, align 1, !tbaa !23, !noalias !20675
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
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !20647, !noalias !20675 ; 5 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 11
  %.val55.i.i = load i8, ptr %i.jt, align 1, !tbaa !23, !noalias !20675 ; 2 uses
  %.not1.i.i = icmp eq i8 %.val55.i.i, 0
  br i1 %.not1.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ju = zext i8 %.val55.i.i to i64
  %i.jv = shl nuw nsw i64 %i.ju, 4
  %i.jw = add nuw nsw i64 %i.jv, 16
  br label %.loopexit.sink.split.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.jx = getelementptr i8, ptr %i.js, i64 10
  %.val66.i.i = load i8, ptr %i.jx, align 1, !tbaa !23, !noalias !20675
  %i.jy = icmp eq i8 %.val66.i.i, 0
  br i1 %i.jy, label %.loopexit.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aq
  %.val59.i.i = load ptr, ptr %i.js, align 8, !tbaa !20647, !noalias !20675
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.0497.i.i = phi ptr [ %.049.val69.i.i, %.lr.ph.i.i ], [ %i.js, %.lr.ph.preheader.i.i ]
  %i.jz = getelementptr i8, ptr %.0497.i.i, i64 144
  %.049.val69.i.i = load ptr, ptr %i.jz, align 8, !tbaa !20647, !noalias !20675 ; 4 uses
  %i.ka = getelementptr i8, ptr %.049.val69.i.i, i64 11
  %.049.val62.i.i = load i8, ptr %i.ka, align 1, !tbaa !23, !noalias !20675
  %.not.i.i62.i = icmp eq i8 %.049.val62.i.i, 0
  br i1 %.not.i.i62.i, label %.lr.ph.i.i, label %._crit_edge.i63.i, !llvm.loop !20684

._crit_edge.i63.i:                                ; preds = %.lr.ph.i.i
  %i.kb = getelementptr i8, ptr %.049.val69.i.i, i64 8
  %.049.val.i.i = load i8, ptr %i.kb, align 1, !tbaa !23, !noalias !20675
  %i.kc = zext i8 %.049.val.i.i to i64
  %.049.val58.i.i = load ptr, ptr %.049.val69.i.i, align 8, !tbaa !20647, !noalias !20675
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge754, %._crit_edge.i63.i
  %.147.i.i = phi i64 [ %i.kc, %._crit_edge.i63.i ], [ %.147.i.i.be, %.backedge754 ] ; 2 uses
  %.1.i.i = phi ptr [ %.049.val58.i.i, %._crit_edge.i63.i ], [ %.1.i.i.be, %.backedge754 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kd, i64 %.147.i.i
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !20647, !noalias !20675 ; 3 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 11
  %.val61.i.i = load i8, ptr %i.kg, align 1, !tbaa !23, !noalias !20675 ; 2 uses
  %.not.i70.i.i = icmp eq i8 %.val61.i.i, 0
  br i1 %.not.i70.i.i, label %.lr.ph11.i.i, label %bb.as

.lr.ph11.i.i:                                     ; preds = %bb.ar, %.lr.ph11.i.i
  %.15010.i.i = phi ptr [ %.150.val68.i.i, %.lr.ph11.i.i ], [ %i.kf, %bb.ar ]
  %i.kh = getelementptr i8, ptr %.15010.i.i, i64 144
  %.150.val68.i.i = load ptr, ptr %i.kh, align 8, !tbaa !20647, !noalias !20675 ; 5 uses
  %i.ki = getelementptr i8, ptr %.150.val68.i.i, i64 11
  %.150.val60.i.i = load i8, ptr %i.ki, align 1, !tbaa !23, !noalias !20675 ; 2 uses
  %.not.i71.i.i = icmp eq i8 %.150.val60.i.i, 0
  br i1 %.not.i71.i.i, label %.lr.ph11.i.i, label %._crit_edge12.i.i, !llvm.loop !20685

._crit_edge12.i.i:                                ; preds = %.lr.ph11.i.i
  %i.kj = getelementptr i8, ptr %.150.val68.i.i, i64 8
  %.150.val.i.i = load i8, ptr %i.kj, align 1, !tbaa !23, !noalias !20675
  %i.kk = zext i8 %.150.val.i.i to i64
  %.150.val57.i.i = load ptr, ptr %.150.val68.i.i, align 8, !tbaa !20647, !noalias !20675
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge12.i.i, %bb.ar
  %.251.val.i.i = phi i8 [ %.150.val60.i.i, %._crit_edge12.i.i ], [ %.val61.i.i, %bb.ar ]
  %.251.i.i = phi ptr [ %.150.val68.i.i, %._crit_edge12.i.i ], [ %i.kf, %bb.ar ]
  %.248.i.i = phi i64 [ %i.kk, %._crit_edge12.i.i ], [ %.147.i.i, %bb.ar ] ; 2 uses
  %.2.i.i = phi ptr [ %.150.val57.i.i, %._crit_edge12.i.i ], [ %.1.i.i, %bb.ar ] ; 3 uses
  %i.kl = zext i8 %.251.val.i.i to i64
  %i.km = shl nuw nsw i64 %i.kl, 4
  %i.kn = add nuw nsw i64 %i.km, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251.i.i, i64 noundef %i.kn) #36, !noalias !20675
  %i.ko = getelementptr i8, ptr %.2.i.i, i64 10
  %.2.val.i.i = load i8, ptr %i.ko, align 1, !tbaa !23, !noalias !20675
  %i.kp = zext i8 %.2.val.i.i to i64
  %.not.not.i.i = icmp samesign ult i64 %.248.i.i, %i.kp
  br i1 %.not.not.i.i, label %.backedge754, label %.preheader2.i.i

.backedge754:                                     ; preds = %bb.as, %bb.au
  %.147.i.i.be.in = phi i64 [ %.248.i.i, %bb.as ], [ %i.kt, %bb.au ]
  %.1.i.i.be = phi ptr [ %.2.i.i, %bb.as ], [ %.3.val56.i.i, %bb.au ]
  %.147.i.i.be = add nuw nsw i64 %.147.i.i.be.in, 1
  br label %bb.ar, !llvm.loop !20686

.preheader2.i.i:                                  ; preds = %bb.as, %bb.at
  %.3.i.i = phi ptr [ %.3.val56.i.i, %bb.at ], [ %.2.i.i, %bb.as ] ; 3 uses
  %i.kq = getelementptr i8, ptr %.3.i.i, i64 8
  %.3.val.i.i = load i8, ptr %i.kq, align 1, !tbaa !23, !noalias !20675 ; 2 uses
  %.3.val56.i.i = load ptr, ptr %.3.i.i, align 8, !tbaa !20647, !noalias !20675 ; 4 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.3.i.i, i64 noundef 224) #36, !noalias !20675
  %i.kr = icmp eq ptr %.3.val56.i.i, %.val59.i.i
  br i1 %i.kr, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, label %bb.at

bb.at:                                            ; preds = %.preheader2.i.i
  %i.ks = getelementptr i8, ptr %.3.val56.i.i, i64 10
  %.val.i64.i = load i8, ptr %i.ks, align 1, !tbaa !23, !noalias !20675
  %.not.i.i = icmp ult i8 %.3.val.i.i, %.val.i64.i
  br i1 %.not.i.i, label %bb.au, label %.preheader2.i.i, !llvm.loop !20687

bb.au:                                            ; preds = %bb.at
  %i.kt = zext i8 %.3.val.i.i to i64
  br label %.backedge754

.loopexit.sink.split.i.i:                         ; preds = %bb.aq, %bb.ap
  %.sink.i.i = phi i64 [ %i.jw, %bb.ap ], [ 224, %bb.aq ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.js, i64 noundef %.sink.i.i) #36, !noalias !20675
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi144EEEEEE16clear_and_deleteEPSF_PSB_.exit.i: ; preds = %.preheader2.i.i, %.loopexit.sink.split.i.i
  %indvars.iv.next.i66.i.i.i = add nuw nsw i64 %indvars.iv.i65.i.i.i, 1 ; 2 uses
  %exitcond.not.i67.i.i.i = icmp eq i64 %indvars.iv.next.i66.i.i.i, %wide.trip.count.i64.i.i.i
  br i1 %exitcond.not.i67.i.i.i, label %._crit_edge.i68.i.i.i, label %bb.ao, !llvm.loop !20682

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
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !20708, !noalias !20734 ; 3 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 11
  %.val67.i.i.i.i.i313 = load i8, ptr %i.xu, align 1, !tbaa !23, !noalias !20734
  %.not.i74.i.i.i.i.i314 = icmp eq i8 %.val67.i.i.i.i.i313, 0
  br i1 %.not.i74.i.i.i.i.i314, label %.lr.ph24.i.i.i.i.i333, label %bb.dh

.lr.ph24.i.i.i.i.i333:                            ; preds = %bb.dg, %.lr.ph24.i.i.i.i.i333
  %.24923.i.i.i.i.i334 = phi ptr [ %.249.val71.i.i.i.i.i335, %.lr.ph24.i.i.i.i.i333 ], [ %i.xt, %bb.dg ]
  %i.xv = getelementptr i8, ptr %.24923.i.i.i.i.i334, i64 160
  %.249.val71.i.i.i.i.i335 = load ptr, ptr %i.xv, align 8, !tbaa !20708, !noalias !20734 ; 5 uses
  %i.xw = getelementptr i8, ptr %.249.val71.i.i.i.i.i335, i64 11
  %.249.val66.i.i.i.i.i336 = load i8, ptr %i.xw, align 1, !tbaa !23, !noalias !20734
  %.not.i75.i.i.i.i.i337 = icmp eq i8 %.249.val66.i.i.i.i.i336, 0
  br i1 %.not.i75.i.i.i.i.i337, label %.lr.ph24.i.i.i.i.i333, label %._crit_edge25.i.i.i.i.i338, !llvm.loop !20738

._crit_edge25.i.i.i.i.i338:                       ; preds = %.lr.ph24.i.i.i.i.i333
  %i.xx = getelementptr i8, ptr %.249.val71.i.i.i.i.i335, i64 8
  %.249.val.i.i.i.i.i339 = load i8, ptr %i.xx, align 1, !tbaa !23, !noalias !20734
  %i.xy = zext i8 %.249.val.i.i.i.i.i339 to i64
  %.249.val64.i.i.i.i.i340 = load ptr, ptr %.249.val71.i.i.i.i.i335, align 8, !tbaa !20708, !noalias !20734
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
  %.350.val70.i.i.i.i.i332 = load i8, ptr %i.yc, align 1, !tbaa !23, !noalias !20734
  %i.yd = zext i8 %.350.val70.i.i.i.i.i332 to i64 ; 3 uses
  br i1 %or.cond.i.i.i.i.i318, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ye = add i64 %.246.i.i.i.i.i310, 1
  %i.yf = add i64 %i.ye, %i.yd
  %i.yg = getelementptr i8, ptr %.2.i.i.i.i.i317, i64 10
  %.2.val.i.i.i.i.i320 = load i8, ptr %i.yg, align 1, !tbaa !23, !noalias !20734
  %i.yh = zext i8 %.2.val.i.i.i.i.i320 to i64
  %.not.not.i.i.i.i.i321 = icmp samesign ult i64 %.243.i.i.i.i.i316, %i.yh
  br i1 %.not.not.i.i.i.i.i321, label %.backedge733, label %.preheader5.i.i.i.i.i323

.backedge733:                                     ; preds = %bb.dk, %bb.dj
  %.142.i.i.i.i.i311.be.in = phi i64 [ %.243.i.i.i.i.i316, %bb.dj ], [ %i.yj, %bb.dk ]
  %.1.i.i.i.i.i312.be = phi ptr [ %.2.i.i.i.i.i317, %bb.dj ], [ %.3.val63.i.i.i.i.i326, %bb.dk ]
  %.142.i.i.i.i.i311.be = add nuw nsw i64 %.142.i.i.i.i.i311.be.in, 1
  br label %bb.dg, !llvm.loop !20739

.preheader5.i.i.i.i.i323:                         ; preds = %bb.dj, %bb.dk
  %.3.i.i.i.i.i324 = phi ptr [ %.3.val63.i.i.i.i.i326, %bb.dk ], [ %.2.i.i.i.i.i317, %bb.dj ] ; 2 uses
  %i.yi = getelementptr i8, ptr %.3.i.i.i.i.i324, i64 8
  %.3.val.i.i.i.i.i325 = load i8, ptr %i.yi, align 1, !tbaa !23, !noalias !20734 ; 2 uses
  %i.yj = zext i8 %.3.val.i.i.i.i.i325 to i64     ; 2 uses
  %.3.val63.i.i.i.i.i326 = load ptr, ptr %.3.i.i.i.i.i324, align 8, !tbaa !20708, !noalias !20734 ; 4 uses
  %i.yk = icmp eq ptr %.3.val63.i.i.i.i.i326, %.sroa.022.0.sink.i.i7.i.i300
  %i.yl = icmp eq i64 %i.yj, %i.xq
  %or.cond61.i.i.i.i.i327 = select i1 %i.yk, i1 %i.yl, i1 false
  br i1 %or.cond61.i.i.i.i.i327, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS5_25CheckedCompareOptedOutCmpISt4lessIS7_EEESaIS7_ESt17integral_constantIiLi160EEEEEEERKS7_PSH_E13distance_slowENS2_IKSG_SI_SJ_EE.exit.i.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %.preheader5.i.i.i.i.i323
  %i.ym = getelementptr i8, ptr %.3.val63.i.i.i.i.i326, i64 10
  %.val.i.i.i.i.i328 = load i8, ptr %i.ym, align 1, !tbaa !23, !noalias !20734
  %.not.i.i.i.i.i329 = icmp ult i8 %.3.val.i.i.i.i.i325, %.val.i.i.i.i.i328
  br i1 %.not.i.i.i.i.i329, label %.backedge733, label %.preheader5.i.i.i.i.i323, !llvm.loop !20740

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
  %i.yp = load i64, ptr %i.qt, align 16, !tbaa !20707, !noalias !20734 ; 4 uses
  %i.yq = icmp eq i64 %.0.i.i.i.i68, %i.yp
  br i1 %i.yq, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5clearEv.exit.i.i.i, label %bb.dm

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE5clearEv.exit.i.i.i: ; preds = %bb.dl
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val.i.i37), !noalias !20734
  store <2 x ptr> <ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE9EmptyNodeEvE10empty_node, ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE9EmptyNodeEvE10empty_node>, ptr %18, align 16, !tbaa !20708, !noalias !20734
  store i64 0, ptr %i.qt, align 16, !tbaa !20707, !noalias !20734
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i.i.i.i276, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i.i.i.i277, i64 16, i1 false), !noalias !20734
  %i.zi = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i277, i64 16 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i276, i64 16
  %.not.i.i47.i.i.i278 = icmp eq ptr %i.zi, %i.zf
  br i1 %.not.i.i47.i.i.i278, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i275, !llvm.loop !20717

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i275, %bb.dn
  %i.zk = getelementptr i8, ptr %.pn3.i.i.i.i.i.i60, i64 11
  %.val31.i.i.i.i279 = load i8, ptr %i.zk, align 1, !tbaa !23, !noalias !20734
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
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !20708, !noalias !20734
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %i.zs), !noalias !20734
  %indvars.iv.next.i.i.i.i286 = add nuw nsw i64 %indvars.iv.i.i.i32.i285, 1 ; 2 uses
  %exitcond.not.i.i.i.i287 = icmp eq i64 %indvars.iv.next.i.i.i.i286, %wide.trip.count.i.i.i.i284
  br i1 %exitcond.not.i.i.i.i287, label %._crit_edge.i.i.i.i288, label %bb.do, !llvm.loop !20741

bb.dp:                                            ; preds = %bb.dp, %.lr.ph6.i.i.i.i291
  %.04.i.i.i.i292 = phi i8 [ %.02.i.i.i.i289, %.lr.ph6.i.i.i.i291 ], [ %.0.i48.i.i.i293, %bb.dp ] ; 3 uses
  %i.zt = sub i8 %.04.i.i.i.i292, %i.yt           ; 2 uses
  %i.zu = zext i8 %.04.i.i.i.i292 to i64
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zu
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !20708, !noalias !20734 ; 2 uses
  %i.zx = zext i8 %i.zt to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %i.zx
  store ptr %i.zw, ptr %i.zy, align 8, !tbaa !20708, !noalias !20734
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 8
  store i8 %i.zt, ptr %i.zz, align 1, !tbaa !23, !noalias !20734
  %.0.i48.i.i.i293 = add i8 %.04.i.i.i.i292, 1    ; 2 uses
  %.not.i49.i.i.i294 = icmp ugt i8 %.0.i48.i.i.i293, %.val.i45.i.i.i58
  br i1 %.not.i49.i.i.i294, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i, label %bb.dp, !llvm.loop !20742

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE13remove_valuesEhhPSB_.exit.i.i.i: ; preds = %bb.dp, %._crit_edge.i.i.i.i288, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i.i.i.i
  %i.aaa = sub i8 %.val.i45.i.i.i58, %i.yt
  store i8 %i.aaa, ptr %i.yu, align 1, !tbaa !23, !noalias !20734
  %i.aab = load i64, ptr %i.qt, align 16, !tbaa !20707, !noalias !20734
  %i.aac = sub i64 %i.aab, %.0.i.i.i.i68
  store i64 %i.aac, ptr %i.qt, align 16, !tbaa !20707, !noalias !20734
  %i.aad = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISE_EERKS6_PSJ_EE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr nonnull %.pn3.i.i.i.i.i.i60, i32 %.pn1.i.i.i.i.i.i61), !noalias !20734 ; 0 uses
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
  %.val34.i.i.i73 = load i8, ptr %i.aag, align 1, !tbaa !23, !noalias !20734
  %.not.i.i.i74 = icmp eq i8 %.val34.i.i.i73, 0
  br i1 %.not.i.i.i74, label %.thread.i.i.i.i.i.i240, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.i.i.i70
  %i.aah = sub nuw i64 %i.aaf, %i.aae
  %i.aai = getelementptr i8, ptr %.sroa.0100.0129.i.i.i72, i64 10 ; 2 uses
  %.val.i.i31.i75 = load i8, ptr %i.aai, align 1, !tbaa !23, !noalias !20734 ; 4 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.03.i.i55.i.i.i81, ptr noundef nonnull readonly align 16 dereferenceable(16) %.0122.i.i56.i.i.i82, i64 16, i1 false), !noalias !20734
  %i.aba = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i.i82, i64 16 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i.i81, i64 16
  %.not.i.i57.i.i.i83 = icmp eq ptr %i.aba, %i.aax
  br i1 %.not.i.i57.i.i.i83, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i, label %.lr.ph.i.i54.i.i.i80, !llvm.loop !20717

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE10transfer_nEmmmPSF_PSB_.exit.i58.i.i.i: ; preds = %.lr.ph.i.i54.i.i.i80
  %.val31.i59.pre.i.i.i84 = load i8, ptr %i.aag, align 1, !tbaa !23, !noalias !20734
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
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !20708, !noalias !20734 ; 5 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 11
  %.val55.i.i190 = load i8, ptr %i.abl, align 1, !tbaa !23, !noalias !20734 ; 2 uses
  %.not1.i.i191 = icmp eq i8 %.val55.i.i190, 0
  br i1 %.not1.i.i191, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abm = zext i8 %.val55.i.i190 to i64
  %i.abn = shl nuw nsw i64 %i.abm, 4
  %i.abo = add nuw nsw i64 %i.abn, 16
  br label %.loopexit.sink.split.i.i192

bb.du:                                            ; preds = %bb.ds
  %i.abp = getelementptr i8, ptr %i.abk, i64 10
  %.val66.i.i203 = load i8, ptr %i.abp, align 1, !tbaa !23, !noalias !20734
  %i.abq = icmp eq i8 %.val66.i.i203, 0
  br i1 %i.abq, label %.loopexit.sink.split.i.i192, label %.lr.ph.preheader.i.i204

.lr.ph.preheader.i.i204:                          ; preds = %bb.du
  %.val59.i.i205 = load ptr, ptr %i.abk, align 8, !tbaa !20708, !noalias !20734
  br label %.lr.ph.i.i206

.lr.ph.i.i206:                                    ; preds = %.lr.ph.i.i206, %.lr.ph.preheader.i.i204
  %.0497.i.i207 = phi ptr [ %.049.val69.i.i208, %.lr.ph.i.i206 ], [ %i.abk, %.lr.ph.preheader.i.i204 ]
  %i.abr = getelementptr i8, ptr %.0497.i.i207, i64 160
  %.049.val69.i.i208 = load ptr, ptr %i.abr, align 8, !tbaa !20708, !noalias !20734 ; 4 uses
  %i.abs = getelementptr i8, ptr %.049.val69.i.i208, i64 11
  %.049.val62.i.i209 = load i8, ptr %i.abs, align 1, !tbaa !23, !noalias !20734
  %.not.i.i62.i210 = icmp eq i8 %.049.val62.i.i209, 0
  br i1 %.not.i.i62.i210, label %.lr.ph.i.i206, label %._crit_edge.i63.i211, !llvm.loop !20743

._crit_edge.i63.i211:                             ; preds = %.lr.ph.i.i206
  %i.abt = getelementptr i8, ptr %.049.val69.i.i208, i64 8
  %.049.val.i.i212 = load i8, ptr %i.abt, align 1, !tbaa !23, !noalias !20734
  %i.abu = zext i8 %.049.val.i.i212 to i64
  %.049.val58.i.i213 = load ptr, ptr %.049.val69.i.i208, align 8, !tbaa !20708, !noalias !20734
  br label %bb.dv

bb.dv:                                            ; preds = %.backedge, %._crit_edge.i63.i211
  %.147.i.i216 = phi i64 [ %i.abu, %._crit_edge.i63.i211 ], [ %.147.i.i216.be, %.backedge ] ; 2 uses
  %.1.i.i217 = phi ptr [ %.049.val58.i.i213, %._crit_edge.i63.i211 ], [ %.1.i.i217.be, %.backedge ] ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.1.i.i217, i64 160
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abv, i64 %.147.i.i216
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !20708, !noalias !20734 ; 3 uses
  %i.aby = getelementptr i8, ptr %i.abx, i64 11
  %.val61.i.i218 = load i8, ptr %i.aby, align 1, !tbaa !23, !noalias !20734 ; 2 uses
  %.not.i70.i.i219 = icmp eq i8 %.val61.i.i218, 0
  br i1 %.not.i70.i.i219, label %.lr.ph11.i.i232, label %bb.dw

.lr.ph11.i.i232:                                  ; preds = %bb.dv, %.lr.ph11.i.i232
  %.15010.i.i233 = phi ptr [ %.150.val68.i.i234, %.lr.ph11.i.i232 ], [ %i.abx, %bb.dv ]
  %i.abz = getelementptr i8, ptr %.15010.i.i233, i64 160
  %.150.val68.i.i234 = load ptr, ptr %i.abz, align 8, !tbaa !20708, !noalias !20734 ; 5 uses
  %i.aca = getelementptr i8, ptr %.150.val68.i.i234, i64 11
  %.150.val60.i.i235 = load i8, ptr %i.aca, align 1, !tbaa !23, !noalias !20734 ; 2 uses
  %.not.i71.i.i236 = icmp eq i8 %.150.val60.i.i235, 0
  br i1 %.not.i71.i.i236, label %.lr.ph11.i.i232, label %._crit_edge12.i.i237, !llvm.loop !20744

._crit_edge12.i.i237:                             ; preds = %.lr.ph11.i.i232
  %i.acb = getelementptr i8, ptr %.150.val68.i.i234, i64 8
  %.150.val.i.i238 = load i8, ptr %i.acb, align 1, !tbaa !23, !noalias !20734
  %i.acc = zext i8 %.150.val.i.i238 to i64
  %.150.val57.i.i239 = load ptr, ptr %.150.val68.i.i234, align 8, !tbaa !20708, !noalias !20734
  br label %bb.dw

bb.dw:                                            ; preds = %._crit_edge12.i.i237, %bb.dv
  %.251.val.i.i220 = phi i8 [ %.150.val60.i.i235, %._crit_edge12.i.i237 ], [ %.val61.i.i218, %bb.dv ]
  %.251.i.i221 = phi ptr [ %.150.val68.i.i234, %._crit_edge12.i.i237 ], [ %i.abx, %bb.dv ]
  %.248.i.i222 = phi i64 [ %i.acc, %._crit_edge12.i.i237 ], [ %.147.i.i216, %bb.dv ] ; 2 uses
  %.2.i.i223 = phi ptr [ %.150.val57.i.i239, %._crit_edge12.i.i237 ], [ %.1.i.i217, %bb.dv ] ; 3 uses
  %i.acd = zext i8 %.251.val.i.i220 to i64
  %i.ace = shl nuw nsw i64 %i.acd, 4
  %i.acf = add nuw nsw i64 %i.ace, 16
  call void @_ZdlPvm(ptr noundef nonnull %.251.i.i221, i64 noundef %i.acf) #36, !noalias !20734
  %i.acg = getelementptr i8, ptr %.2.i.i223, i64 10
  %.2.val.i.i224 = load i8, ptr %i.acg, align 1, !tbaa !23, !noalias !20734
  %i.ach = zext i8 %.2.val.i.i224 to i64
  %.not.not.i.i225 = icmp samesign ult i64 %.248.i.i222, %i.ach
  br i1 %.not.not.i.i225, label %.backedge, label %.preheader2.i.i226

.backedge:                                        ; preds = %bb.dw, %bb.dy
  %.147.i.i216.be.in = phi i64 [ %.248.i.i222, %bb.dw ], [ %i.acl, %bb.dy ]
  %.1.i.i217.be = phi ptr [ %.2.i.i223, %bb.dw ], [ %.3.val56.i.i229, %bb.dy ]
  %.147.i.i216.be = add nuw nsw i64 %.147.i.i216.be.in, 1
  br label %bb.dv, !llvm.loop !20745

.preheader2.i.i226:                               ; preds = %bb.dw, %bb.dx
  %.3.i.i227 = phi ptr [ %.3.val56.i.i229, %bb.dx ], [ %.2.i.i223, %bb.dw ] ; 3 uses
  %i.aci = getelementptr i8, ptr %.3.i.i227, i64 8
  %.3.val.i.i228 = load i8, ptr %i.aci, align 1, !tbaa !23, !noalias !20734 ; 2 uses
  %.3.val56.i.i229 = load ptr, ptr %.3.i.i227, align 8, !tbaa !20708, !noalias !20734 ; 4 uses
  call void @_ZdlPvm(ptr noundef nonnull %.3.i.i227, i64 noundef 240) #36, !noalias !20734
  %i.acj = icmp eq ptr %.3.val56.i.i229, %.val59.i.i205
  br i1 %i.acj, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i, label %bb.dx

bb.dx:                                            ; preds = %.preheader2.i.i226
  %i.ack = getelementptr i8, ptr %.3.val56.i.i229, i64 10
  %.val.i64.i230 = load i8, ptr %i.ack, align 1, !tbaa !23, !noalias !20734
  %.not.i.i231 = icmp ult i8 %.3.val.i.i228, %.val.i64.i230
  br i1 %.not.i.i231, label %bb.dy, label %.preheader2.i.i226, !llvm.loop !20746

bb.dy:                                            ; preds = %bb.dx
  %i.acl = zext i8 %.3.val.i.i228 to i64
  br label %.backedge

.loopexit.sink.split.i.i192:                      ; preds = %bb.du, %bb.dt
  %.sink.i.i193 = phi i64 [ %i.abo, %bb.dt ], [ 240, %bb.du ]
  call void @_ZdlPvm(ptr noundef nonnull %i.abk, i64 noundef %.sink.i.i193) #36, !noalias !20734
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_114OveralignedKeyILm16EEEJNS4_25CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi160EEEEEE16clear_and_deleteEPSF_PSB_.exit.i: ; preds = %.preheader2.i.i226, %.loopexit.sink.split.i.i192
  %indvars.iv.next.i66.i.i.i194 = add nuw nsw i64 %indvars.iv.i65.i.i.i189, 1 ; 2 uses
  %exitcond.not.i67.i.i.i195 = icmp eq i64 %indvars.iv.next.i66.i.i.i194, %wide.trip.count.i64.i.i.i188
  br i1 %exitcond.not.i67.i.i.i195, label %._crit_edge.i68.i.i.i196, label %bb.ds, !llvm.loop !20741

bb.dz:                                            ; preds = %bb.dz, %.lr.ph6.i71.i.i.i199
  %.04.i72.i.i.i200 = phi i8 [ %.02.i69.i.i.i197, %.lr.ph6.i71.i.i.i199 ], [ %.0.i73.i.i.i201, %bb.dz ] ; 3 uses
  %i.acm = sub i8 %.04.i72.i.i.i200, %i.aam       ; 2 uses
  %i.acn = zext i8 %.04.i72.i.i.i200 to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.acn
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128BtreeMultiKeyTest_Erase_TestINS2_12MultiKeyCompEE8TestBodyEv:bb.a
  %i.ar = add i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %.2.i.i.i.i, i64 10
  %.2.val.i.i.i.i = load i8, ptr %i.as, align 1, !tbaa !23, !noalias !21139
  %i.at = zext i8 %.2.val.i.i.i.i to i64
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.at
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.j ], [ %i.av, %bb.k ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.j ], [ %.3.val63.i.i.i.i, %bb.k ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.g, !llvm.loop !21144

.preheader5.i.i.i.i:                              ; preds = %bb.j, %bb.k
  %.3.i.i.i.i = phi ptr [ %.3.val63.i.i.i.i, %bb.k ], [ %.2.i.i.i.i, %bb.j ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val.i.i.i.i = load i8, ptr %i.au, align 1, !tbaa !23, !noalias !21139 ; 2 uses
  %i.av = zext i8 %.3.val.i.i.i.i to i64          ; 2 uses
  %.3.val63.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !18053, !noalias !21139 ; 4 uses
  %i.aw = icmp eq ptr %.3.val63.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ax = icmp eq i64 %i.av, %i.ac
  %or.cond61.i.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader5.i.i.i.i
  %i.ay = getelementptr i8, ptr %.3.val63.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !23, !noalias !21139
  %.not.i.i.i.i = icmp ult i8 %.3.val.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !21145

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
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139 ; 4 uses
  %i.bc = icmp eq i64 %.0.i.i.i, %i.bb
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i, label %bb.m

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i: ; preds = %bb.l
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %.val.i), !noalias !21139
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !18053, !noalias !21139
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE9EmptyNodeEvE10empty_node, ptr %20, align 8, !tbaa !18053, !noalias !21139
  store i64 0, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i32 %.sroa.22.0.copyload.i to i64
  %i.be = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.bg, align 1, !tbaa !23, !noalias !21139 ; 5 uses
  %i.bh = and i32 %.sroa.22.0.copyload.i, 255     ; 2 uses
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.bl = and i32 %i.bj, 255                      ; 3 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = zext nneg i32 %i.bl to i64              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 5 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.bl, %i.bk
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.bs = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs ; 4 uses
  %i.bu = zext i8 %.val.i45.i.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = shl nuw nsw i64 %i.bo, 3
  %i.bx = add nsw i64 %i.bv, -8
  %i.by = sub nsw i64 %i.bx, %i.bw                ; 2 uses
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.by, 136
  br i1 %min.iters.check176, label %.lr.ph.i.i46.i.i.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.preheader.i.i.i.i
  %i.cb = sub nsw i64 %i.bs, %i.bo
  %i.cc = shl nsw i64 %i.cb, 3
  %i.cd = add nsw i64 %i.cc, -1
  %diff.check174 = icmp ult i64 %i.cd, 31
  br i1 %diff.check174, label %.lr.ph.i.i46.i.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck173
  %n.vec178 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec178, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bq, i64 %i.ce
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body179 ] ; 2 uses
  %i.ch = shl i64 %index180, 3                    ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.bt, i64 %i.ch ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <2 x i64>, ptr %next.gep182, align 4, !noalias !21139
  %wide.load184 = load <2 x i64>, ptr %i.ci, align 4, !noalias !21139
  %i.cj = getelementptr i8, ptr %next.gep181, i64 16
  store <2 x i64> %wide.load183, ptr %next.gep181, align 1, !noalias !21139
  store <2 x i64> %wide.load184, ptr %i.cj, align 1, !noalias !21139
  %index.next185 = add nuw i64 %index180, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.ck, label %middle.block186, label %vector.body179, !llvm.loop !21146

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.ca, %n.vec178
  br i1 %cmp.n187, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i.preheader

.lr.ph.i.i46.i.i.preheader:                       ; preds = %vector.memcheck173, %.lr.ph.preheader.i.i.i.i, %middle.block186
  %.03.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck173 ], [ %i.bt, %.lr.ph.preheader.i.i.i.i ], [ %i.cf, %middle.block186 ]
  %.0122.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck173 ], [ %i.bq, %.lr.ph.preheader.i.i.i.i ], [ %i.cg, %middle.block186 ]
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i.preheader, %.lr.ph.i.i46.i.i
  %.03.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i46.i.i ], [ %.03.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i46.i.i ], [ %.0122.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 4, !noalias !21139
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !21139
  %i.cl = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.cl, %i.br
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !21147

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %middle.block186, %bb.n
  %i.cn = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.cn, align 1, !tbaa !23, !noalias !21139
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %.not7.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.co = add nuw nsw i64 %i.bd, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.bi to i64
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.o, %.preheader.i.i.i
  %i.cq = trunc i32 %i.bj to i8
  %.02.i.i.i = add i8 %i.cq, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 2 uses
  %i.cs = add nuw nsw i64 %i.co, %indvars.iv.i.i.i
  %i.ct = and i64 %i.cs, 255
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !18053, !noalias !21139
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.cv), !noalias !21139
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !21148

bb.p:                                             ; preds = %bb.p, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.p ] ; 3 uses
  %i.cw = sub i8 %.04.i.i.i, %i.bf                ; 2 uses
  %i.cx = zext i8 %.04.i.i.i to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !18053, !noalias !21139 ; 2 uses
  %i.da = zext i8 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !18053, !noalias !21139
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cw, ptr %i.dc, align 1, !tbaa !23, !noalias !21139
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %bb.p, !llvm.loop !21072

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i: ; preds = %bb.p, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %i.dd = sub i8 %.val.i45.i.i, %i.bf
  store i8 %i.dd, ptr %i.bg, align 1, !tbaa !23, !noalias !21139
  %i.de = load i64, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139
  %i.df = sub i64 %i.de, %.0.i.i.i
  store i64 %i.df, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139
  %i.dg = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !21139 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.dh = sub i64 %i.bb, %.0.i.i.i                ; 2 uses
  %.not139.i.i = icmp ult i64 %i.bb, %.0.i.i.i
  br i1 %.not139.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.v
  %i.di = phi i64 [ %i.fs, %bb.v ], [ %i.bb, %bb.q ]
  %.sroa.13.0119.i.i = phi i32 [ %.sroa.13.1.i.i, %bb.v ], [ %.sroa.22.0.copyload.i, %bb.q ] ; 5 uses
  %.sroa.090.0118.i.i = phi ptr [ %.sroa.090.1.i.i, %bb.v ], [ %.sroa.01.0.copyload.i, %bb.q ] ; 7 uses
  %i.dj = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.dj, align 1, !tbaa !23, !noalias !21139
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.dk = sub nuw i64 %i.di, %i.dh
  %i.dl = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.dl, align 1, !tbaa !23, !noalias !21139 ; 5 uses
  %i.dm = zext i8 %.val.i.i to i32                ; 3 uses
  %i.dn = sub nsw i32 %i.dm, %.sroa.13.0119.i.i
  %i.do = sext i32 %i.dn to i64
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.do) ; 4 uses
  %i.dp = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.dq = zext i32 %.sroa.13.0119.i.i to i64
  %i.dr = and i32 %.sroa.13.0119.i.i, 255         ; 2 uses
  %i.ds = trunc i64 %.sroa.speculated.i.i to i32
  %i.dt = add i32 %i.dr, %i.ds                    ; 2 uses
  %i.du = and i32 %i.dt, 255                      ; 3 uses
  %i.dv = sub nsw i32 %i.dm, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = zext nneg i32 %i.du to i64              ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 12 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx ; 5 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.dw, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.du, %i.dm
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.r
  %i.eb = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eb ; 4 uses
  %i.ed = zext i8 %.val.i.i to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = shl nuw nsw i64 %i.dx, 3
  %i.eg = add nsw i64 %i.ee, -8
  %i.eh = sub nsw i64 %i.eg, %i.ef                ; 2 uses
  %i.ei = lshr exact i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i53.i.i
  %i.ek = sub nsw i64 %i.eb, %i.dx
  %i.el = shl nsw i64 %i.ek, 3
  %i.em = add nsw i64 %i.el, -1
  %diff.check = icmp ult i64 %i.em, 31
  br i1 %diff.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, 4611686018427387900     ; 3 uses
  %i.en = shl i64 %n.vec, 3                       ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ec, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.dz, i64 %i.en
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.eq ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.dz, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep170, align 4, !noalias !21139
  %wide.load171 = load <2 x i64>, ptr %i.er, align 4, !noalias !21139
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !noalias !21139
  store <2 x i64> %wide.load171, ptr %i.es, align 1, !noalias !21139
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !21149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i.preheader

.lr.ph.i.i54.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.preheader.i.i53.i.i, %middle.block
  %.03.i.i55.i.i.ph = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.preheader.i.i53.i.i ], [ %i.eo, %middle.block ]
  %.0122.i.i56.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.preheader.i.i53.i.i ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i.preheader, %.lr.ph.i.i54.i.i
  %.03.i.i55.i.i = phi ptr [ %i.ev, %.lr.ph.i.i54.i.i ], [ %.03.i.i55.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.eu, %.lr.ph.i.i54.i.i ], [ %.0122.i.i56.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 4, !noalias !21139
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !21139
  %i.eu = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.eu, %i.ea
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !21150

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i, %middle.block
  %.val31.i60.pre.i.i = load i8, ptr %i.dj, align 1, !tbaa !23, !noalias !21139
  %i.ew = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.ew, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i
  %.not7.i63.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.ex = add nuw nsw i64 %i.dq, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.s

._crit_edge.i69.i.i:                              ; preds = %bb.s, %.preheader.i62.i.i
  %i.ez = trunc i32 %i.dt to i8
  %.02.i70.i.i = add i8 %i.ez, 1                  ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i
  br i1 %.not3.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.s ] ; 2 uses
  %i.fb = add nuw nsw i64 %i.ex, %indvars.iv.i66.i.i
  %i.fc = and i64 %i.fb, 255
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !18053, !noalias !21139
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.fe), !noalias !21139
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.s, !llvm.loop !21148

bb.t:                                             ; preds = %bb.t, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.t ] ; 3 uses
  %i.ff = sub i8 %.04.i73.i.i, %i.dp              ; 2 uses
  %i.fg = zext i8 %.04.i73.i.i to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !18053, !noalias !21139 ; 2 uses
  %i.fj = zext i8 %i.ff to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fj
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !18053, !noalias !21139
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 %i.ff, ptr %i.fl, align 1, !tbaa !23, !noalias !21139
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %bb.t, !llvm.loop !21072

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i: ; preds = %bb.t, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, %bb.r
  %i.fm = sub i8 %.val.i.i, %i.dp
  store i8 %i.fm, ptr %i.dl, align 1, !tbaa !23, !noalias !21139
  %i.fn = and i64 %.sroa.speculated.i.i, 255
  %i.fo = load i64, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139
  %i.fp = sub i64 %i.fo, %i.fn
  store i64 %i.fp, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139
  %i.fq = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21139
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.fr = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21139
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.fq, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i ], [ %i.fr, %bb.u ] ; 2 uses
  %.sroa.13.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 1
  %.sroa.090.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %i.fs = load i64, ptr %i.ba, align 8, !tbaa !18042, !noalias !21139 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, %i.dh
  br i1 %i.ft, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !21151

.thread:                                          ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_12MultiKeyCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 0, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !9
  br label %bb.x

.loopexit:                                        ; preds = %bb.v, %bb.q, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_12MultiKeyCompEEEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 %.0.i.i.i, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !9
  %i.fu = icmp eq i64 %.0.i.i.i, 2
  br i1 %i.fu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.x:                                             ; preds = %.thread, %.loopexit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.937, ptr noundef nonnull @.str.429, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.fv = load i8, ptr %22, align 8, !tbaa !57, !range !66, !noundef !67
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ai, label %bb.z

end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_128BtreeMultiKeyTest_Erase_TestINS2_20MultiKeyThreeWayCompEE8TestBodyEv:bb.a
  %.not.not.i.i.i.i = icmp samesign ult i64 %.243.i.i.i.i, %i.at
  br i1 %.not.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.i.i.i.be.in = phi i64 [ %.243.i.i.i.i, %bb.j ], [ %i.av, %bb.k ]
  %.1.i.i.i.i.be = phi ptr [ %.2.i.i.i.i, %bb.j ], [ %.3.val.i.i.i.i, %bb.k ]
  %.142.i.i.i.i.be = add nuw nsw i64 %.142.i.i.i.i.be.in, 1
  br label %bb.g, !llvm.loop !21321

.preheader5.i.i.i.i:                              ; preds = %bb.j, %bb.k
  %.3.i.i.i.i = phi ptr [ %.3.val.i.i.i.i, %bb.k ], [ %.2.i.i.i.i, %bb.j ] ; 2 uses
  %i.au = getelementptr i8, ptr %.3.i.i.i.i, i64 8
  %.3.val67.i.i.i.i = load i8, ptr %i.au, align 1, !tbaa !23, !noalias !21316 ; 2 uses
  %i.av = zext i8 %.3.val67.i.i.i.i to i64        ; 2 uses
  %.3.val.i.i.i.i = load ptr, ptr %.3.i.i.i.i, align 8, !tbaa !20963, !noalias !21316 ; 4 uses
  %i.aw = icmp eq ptr %.3.val.i.i.i.i, %.sroa.0.0.copyload.i
  %i.ax = icmp eq i64 %i.av, %i.ac
  %or.cond61.i.i.i.i = select i1 %i.aw, i1 %i.ax, i1 false
  br i1 %or.cond61.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_E13distance_slowENS2_IKS9_SB_SC_EE.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.preheader5.i.i.i.i
  %i.ay = getelementptr i8, ptr %.3.val.i.i.i.i, i64 10
  %.val.i.i.i.i = load i8, ptr %i.ay, align 1, !tbaa !23, !noalias !21316
  %.not.i.i.i.i = icmp ult i8 %.3.val67.i.i.i.i, %.val.i.i.i.i
  br i1 %.not.i.i.i.i, label %.backedge, label %.preheader5.i.i.i.i, !llvm.loop !21322

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
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316 ; 6 uses
  %i.bc = icmp eq i64 %.0.i.i.i, %i.bb
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i, label %bb.m

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i: ; preds = %bb.l
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %.val.i), !noalias !21316
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8, !tbaa !20963, !noalias !21316
  store ptr @_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE9EmptyNodeEvE10empty_node, ptr %20, align 8, !tbaa !20963, !noalias !21316
  store i64 0, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  br i1 %i.j, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bd = zext i32 %.sroa.22.0.copyload.i to i64
  %i.be = sub nsw i32 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 10 ; 2 uses
  %.val.i45.i.i = load i8, ptr %i.bg, align 1, !tbaa !23, !noalias !21316 ; 5 uses
  %i.bh = and i32 %.sroa.22.0.copyload.i, 255     ; 2 uses
  %i.bi = and i32 %i.be, 255                      ; 2 uses
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = zext i8 %.val.i45.i.i to i32            ; 2 uses
  %i.bl = and i32 %i.bj, 255                      ; 3 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = zext nneg i32 %i.bl to i64              ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 12 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 5 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bn, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %i.bl, %i.bk
  br i1 %.not1.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.n
  %i.bs = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs ; 4 uses
  %i.bu = zext i8 %.val.i45.i.i to i64
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = shl nuw nsw i64 %i.bo, 3
  %i.bx = add nsw i64 %i.bv, -8
  %i.by = sub nsw i64 %i.bx, %i.bw                ; 2 uses
  %i.bz = lshr exact i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.by, 136
  br i1 %min.iters.check176, label %.lr.ph.i.i46.i.i.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph.preheader.i.i.i.i
  %i.cb = sub nsw i64 %i.bs, %i.bo
  %i.cc = shl nsw i64 %i.cb, 3
  %i.cd = add nsw i64 %i.cc, -1
  %diff.check174 = icmp ult i64 %i.cd, 31
  br i1 %diff.check174, label %.lr.ph.i.i46.i.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck173
  %n.vec178 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec178, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bq, i64 %i.ce
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next185, %vector.body179 ] ; 2 uses
  %i.ch = shl i64 %index180, 3                    ; 2 uses
  %next.gep181 = getelementptr i8, ptr %i.bt, i64 %i.ch ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.bq, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep182, i64 16
  %wide.load183 = load <2 x i64>, ptr %next.gep182, align 4, !noalias !21316
  %wide.load184 = load <2 x i64>, ptr %i.ci, align 4, !noalias !21316
  %i.cj = getelementptr i8, ptr %next.gep181, i64 16
  store <2 x i64> %wide.load183, ptr %next.gep181, align 1, !noalias !21316
  store <2 x i64> %wide.load184, ptr %i.cj, align 1, !noalias !21316
  %index.next185 = add nuw i64 %index180, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next185, %n.vec178
  br i1 %i.ck, label %middle.block186, label %vector.body179, !llvm.loop !21323

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.ca, %n.vec178
  br i1 %cmp.n187, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i.preheader

.lr.ph.i.i46.i.i.preheader:                       ; preds = %vector.memcheck173, %.lr.ph.preheader.i.i.i.i, %middle.block186
  %.03.i.i.i.i.ph = phi ptr [ %i.bt, %vector.memcheck173 ], [ %i.bt, %.lr.ph.preheader.i.i.i.i ], [ %i.cf, %middle.block186 ]
  %.0122.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck173 ], [ %i.bq, %.lr.ph.preheader.i.i.i.i ], [ %i.cg, %middle.block186 ]
  br label %.lr.ph.i.i46.i.i

.lr.ph.i.i46.i.i:                                 ; preds = %.lr.ph.i.i46.i.i.preheader, %.lr.ph.i.i46.i.i
  %.03.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i46.i.i ], [ %.03.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.0122.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i46.i.i ], [ %.0122.i.i.i.i.ph, %.lr.ph.i.i46.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i.i = load i64, ptr %.0122.i.i.i.i, align 4, !noalias !21316
  store i64 %.012.val.i.i.i.i, ptr %.03.i.i.i.i, align 1, !noalias !21316
  %i.cl = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i, i64 8
  %.not.i.i47.i.i = icmp eq ptr %i.cl, %i.br
  br i1 %.not.i.i47.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i, label %.lr.ph.i.i46.i.i, !llvm.loop !21324

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i: ; preds = %.lr.ph.i.i46.i.i, %middle.block186, %bb.n
  %i.cn = getelementptr i8, ptr %.sroa.01.0.copyload.i, i64 11
  %.val31.i.i.i = load i8, ptr %i.cn, align 1, !tbaa !23, !noalias !21316
  %.not.i32.i.i.i = icmp eq i8 %.val31.i.i.i, 0
  br i1 %.not.i32.i.i.i, label %.preheader.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

.preheader.i.i.i:                                 ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %.not7.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not7.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.co = add nuw nsw i64 %i.bd, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256
  %wide.trip.count.i.i.i = zext nneg i32 %i.bi to i64
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.o, %.preheader.i.i.i
  %i.cq = trunc i32 %i.bj to i8
  %.02.i.i.i = add i8 %i.cq, 1                    ; 2 uses
  %.not3.i.i.i = icmp ugt i8 %.02.i.i.i, %.val.i45.i.i
  br i1 %.not3.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 256 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.o ] ; 2 uses
  %i.cs = add nuw nsw i64 %i.co, %indvars.iv.i.i.i
  %i.ct = and i64 %i.cs, 255
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !20963, !noalias !21316
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.cv), !noalias !21316
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.o, !llvm.loop !21325

bb.p:                                             ; preds = %bb.p, %.lr.ph6.i.i.i
  %.04.i.i.i = phi i8 [ %.02.i.i.i, %.lr.ph6.i.i.i ], [ %.0.i48.i.i, %bb.p ] ; 3 uses
  %i.cw = sub i8 %.04.i.i.i, %i.bf                ; 2 uses
  %i.cx = zext i8 %.04.i.i.i to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !20963, !noalias !21316 ; 2 uses
  %i.da = zext i8 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.da
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !20963, !noalias !21316
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i8 %i.cw, ptr %i.dc, align 1, !tbaa !23, !noalias !21316
  %.0.i48.i.i = add i8 %.04.i.i.i, 1              ; 2 uses
  %.not.i49.i.i = icmp ugt i8 %.0.i48.i.i, %.val.i45.i.i
  br i1 %.not.i49.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit, label %bb.p, !llvm.loop !21138

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit: ; preds = %bb.p
  %.pre = load i64, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit, %._crit_edge.i.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i
  %i.dd = phi i64 [ %.pre, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i.loopexit ], [ %i.bb, %._crit_edge.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i.i.i ]
  %i.de = sub i8 %.val.i45.i.i, %i.bf
  store i8 %i.de, ptr %i.bg, align 1, !tbaa !23, !noalias !21316
  %i.df = sub i64 %i.dd, %.0.i.i.i
  store i64 %i.df, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316
  %i.dg = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.01.0.copyload.i, i32 %.sroa.22.0.copyload.i), !noalias !21316 ; 0 uses
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  %i.dh = sub i64 %i.bb, %.0.i.i.i                ; 2 uses
  %.not139.i.i = icmp ult i64 %i.bb, %.0.i.i.i
  br i1 %.not139.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %bb.v
  %i.di = phi i64 [ %i.fs, %bb.v ], [ %i.bb, %bb.q ]
  %.sroa.13.0119.i.i = phi i32 [ %.sroa.13.1.i.i, %bb.v ], [ %.sroa.22.0.copyload.i, %bb.q ] ; 5 uses
  %.sroa.090.0118.i.i = phi ptr [ %.sroa.090.1.i.i, %bb.v ], [ %.sroa.01.0.copyload.i, %bb.q ] ; 7 uses
  %i.dj = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 11 ; 2 uses
  %.val34.i.i = load i8, ptr %i.dj, align 1, !tbaa !23, !noalias !21316
  %.not.i.i = icmp eq i8 %.val34.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.dk = sub nuw i64 %i.di, %i.dh
  %i.dl = getelementptr i8, ptr %.sroa.090.0118.i.i, i64 10 ; 2 uses
  %.val.i.i = load i8, ptr %i.dl, align 1, !tbaa !23, !noalias !21316 ; 5 uses
  %i.dm = zext i8 %.val.i.i to i32                ; 3 uses
  %i.dn = sub nsw i32 %i.dm, %.sroa.13.0119.i.i
  %i.do = sext i32 %i.dn to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.do) ; 4 uses
  %i.dp = trunc i64 %.sroa.speculated.i.i to i8   ; 3 uses
  %i.dq = zext i32 %.sroa.13.0119.i.i to i64
  %i.dr = and i32 %.sroa.13.0119.i.i, 255         ; 2 uses
  %i.ds = trunc i64 %.sroa.speculated.i.i to i32
  %i.dt = add i32 %i.dr, %i.ds                    ; 2 uses
  %i.du = and i32 %i.dt, 255                      ; 3 uses
  %i.dv = sub nsw i32 %i.dm, %i.du
  %i.dw = sext i32 %i.dv to i64
  %i.dx = zext nneg i32 %i.du to i64              ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 12 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx ; 5 uses
  %.idx.i.i51.i.i = shl nuw nsw i64 %i.dw, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.idx.i.i51.i.i
  %.not1.i.i52.i.i = icmp eq i32 %i.du, %i.dm
  br i1 %.not1.i.i52.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph.preheader.i.i53.i.i

.lr.ph.preheader.i.i53.i.i:                       ; preds = %bb.r
  %i.eb = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eb ; 4 uses
  %i.ed = zext i8 %.val.i.i to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = shl nuw nsw i64 %i.dx, 3
  %i.eg = add nsw i64 %i.ee, -8
  %i.eh = sub nsw i64 %i.eg, %i.ef                ; 2 uses
  %i.ei = lshr exact i64 %i.eh, 3
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eh, 56
  br i1 %min.iters.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i53.i.i
  %i.ek = sub nsw i64 %i.eb, %i.dx
  %i.el = shl nsw i64 %i.ek, 3
  %i.em = add nsw i64 %i.el, -1
  %diff.check = icmp ult i64 %i.em, 31
  br i1 %diff.check, label %.lr.ph.i.i54.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ej, 4611686018427387900     ; 3 uses
  %i.en = shl i64 %n.vec, 3                       ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ec, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.dz, i64 %i.en
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ec, i64 %i.eq ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.dz, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep170, align 4, !noalias !21316
  %wide.load171 = load <2 x i64>, ptr %i.er, align 4, !noalias !21316
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 1, !noalias !21316
  store <2 x i64> %wide.load171, ptr %i.es, align 1, !noalias !21316
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !21326

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i.preheader

.lr.ph.i.i54.i.i.preheader:                       ; preds = %vector.memcheck, %.lr.ph.preheader.i.i53.i.i, %middle.block
  %.03.i.i55.i.i.ph = phi ptr [ %i.ec, %vector.memcheck ], [ %i.ec, %.lr.ph.preheader.i.i53.i.i ], [ %i.eo, %middle.block ]
  %.0122.i.i56.i.i.ph = phi ptr [ %i.dz, %vector.memcheck ], [ %i.dz, %.lr.ph.preheader.i.i53.i.i ], [ %i.ep, %middle.block ]
  br label %.lr.ph.i.i54.i.i

.lr.ph.i.i54.i.i:                                 ; preds = %.lr.ph.i.i54.i.i.preheader, %.lr.ph.i.i54.i.i
  %.03.i.i55.i.i = phi ptr [ %i.ev, %.lr.ph.i.i54.i.i ], [ %.03.i.i55.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.0122.i.i56.i.i = phi ptr [ %i.eu, %.lr.ph.i.i54.i.i ], [ %.0122.i.i56.i.i.ph, %.lr.ph.i.i54.i.i.preheader ] ; 2 uses
  %.012.val.i.i57.i.i = load i64, ptr %.0122.i.i56.i.i, align 4, !noalias !21316
  store i64 %.012.val.i.i57.i.i, ptr %.03.i.i55.i.i, align 1, !noalias !21316
  %i.eu = getelementptr inbounds nuw i8, ptr %.0122.i.i56.i.i, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.03.i.i55.i.i, i64 8
  %.not.i.i58.i.i = icmp eq ptr %i.eu, %i.ea
  br i1 %.not.i.i58.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, label %.lr.ph.i.i54.i.i, !llvm.loop !21327

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i: ; preds = %.lr.ph.i.i54.i.i, %middle.block
  %.val31.i60.pre.i.i = load i8, ptr %i.dj, align 1, !tbaa !23, !noalias !21316
  %i.ew = icmp eq i8 %.val31.i60.pre.i.i, 0
  br i1 %i.ew, label %.preheader.i62.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i

.preheader.i62.i.i:                               ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i
  %.not7.i63.i.i = icmp eq i8 %i.dp, 0
  br i1 %.not7.i63.i.i, label %._crit_edge.i69.i.i, label %.lr.ph.i64.i.i

.lr.ph.i64.i.i:                                   ; preds = %.preheader.i62.i.i
  %i.ex = add nuw nsw i64 %i.dq, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256
  %wide.trip.count.i65.i.i = and i64 %.sroa.speculated.i.i, 255
  br label %bb.s

._crit_edge.i69.i.i:                              ; preds = %bb.s, %.preheader.i62.i.i
  %i.ez = trunc i32 %i.dt to i8
  %.02.i70.i.i = add i8 %i.ez, 1                  ; 2 uses
  %.not3.i71.i.i = icmp ugt i8 %.02.i70.i.i, %.val.i.i
  br i1 %.not3.i71.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %.lr.ph6.i72.i.i

.lr.ph6.i72.i.i:                                  ; preds = %._crit_edge.i69.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.090.0118.i.i, i64 256 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph.i64.i.i
  %indvars.iv.i66.i.i = phi i64 [ 0, %.lr.ph.i64.i.i ], [ %indvars.iv.next.i67.i.i, %bb.s ] ; 2 uses
  %i.fb = add nuw nsw i64 %i.ex, %indvars.iv.i66.i.i
  %i.fc = and i64 %i.fb, 255
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20963, !noalias !21316
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef %i.fe), !noalias !21316
  %indvars.iv.next.i67.i.i = add nuw nsw i64 %indvars.iv.i66.i.i, 1 ; 2 uses
  %exitcond.not.i68.i.i = icmp eq i64 %indvars.iv.next.i67.i.i, %wide.trip.count.i65.i.i
  br i1 %exitcond.not.i68.i.i, label %._crit_edge.i69.i.i, label %bb.s, !llvm.loop !21325

bb.t:                                             ; preds = %bb.t, %.lr.ph6.i72.i.i
  %.04.i73.i.i = phi i8 [ %.02.i70.i.i, %.lr.ph6.i72.i.i ], [ %.0.i74.i.i, %bb.t ] ; 3 uses
  %i.ff = sub i8 %.04.i73.i.i, %i.dp              ; 2 uses
  %i.fg = zext i8 %.04.i73.i.i to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !20963, !noalias !21316 ; 2 uses
  %i.fj = zext i8 %i.ff to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fj
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !20963, !noalias !21316
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i8 %i.ff, ptr %i.fl, align 1, !tbaa !23, !noalias !21316
  %.0.i74.i.i = add i8 %.04.i73.i.i, 1            ; 2 uses
  %.not.i75.i.i = icmp ugt i8 %.0.i74.i.i, %.val.i.i
  br i1 %.not.i75.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i, label %bb.t, !llvm.loop !21138

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i: ; preds = %bb.t, %._crit_edge.i69.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i59.i.i, %bb.r
  %i.fm = sub i8 %.val.i.i, %i.dp
  store i8 %i.fm, ptr %i.dl, align 1, !tbaa !23, !noalias !21316
  %i.fn = and i64 %.sroa.speculated.i.i, 255
  %i.fo = load i64, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316
  %i.fp = sub i64 %i.fo, %i.fn
  store i64 %i.fp, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316
  %i.fq = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21316
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.fr = call fastcc { ptr, i32 } @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr nonnull %.sroa.090.0118.i.i, i32 %.sroa.13.0119.i.i), !noalias !21316
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.fq, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit76.i.i ], [ %i.fr, %bb.u ] ; 2 uses
  %.sroa.13.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 1
  %.sroa.090.1.i.i = extractvalue { ptr, i32 } %.pn.i.i, 0
  %i.fs = load i64, ptr %i.ba, align 8, !tbaa !20947, !noalias !21316 ; 2 uses
  %i.ft = icmp ugt i64 %i.fs, %i.dh
  br i1 %i.ft, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !21328

.thread:                                          ; preds = %_ZNK4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_20MultiKeyThreeWayCompEEEEEERKS6_PSA_EmiENS2_IKS9_SB_SC_EE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 0, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !9
  br label %bb.x

.loopexit:                                        ; preds = %bb.v, %bb.q, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE13remove_valuesEhhPSaIS5_E.exit.i.i, %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_20MultiKeyThreeWayCompEEEEE5clearEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  store i64 %.0.i.i.i, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  store i32 2, ptr %i.g, align 4, !tbaa !9
  %i.fu = icmp eq i64 %.0.i.i.i, 2
  br i1 %i.fu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.loopexit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.x:                                             ; preds = %.thread, %.loopexit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.937, ptr noundef nonnull @.str.429, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  %i.fv = load i8, ptr %21, align 8, !tbaa !57, !range !66, !noundef !67
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.ai, label %bb.z

end_hunk_6
