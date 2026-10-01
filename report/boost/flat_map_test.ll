Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 400
loop-unroll.NumUnrolled: 718
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_:bb.a
.lr.ph.i.i152.preheader487:                       ; preds = %vector.memcheck461, %.lr.ph.i.i152.preheader, %middle.block480
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck461 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.gh, %middle.block480 ]
  %.079.i.i154.ph = phi ptr [ %i.h, %vector.memcheck461 ], [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.gi, %middle.block480 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader487, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.gs, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader487 ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.gr, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader487 ] ; 4 uses
  %i.gl = load i32, ptr %.079.i.i154, align 4, !tbaa !501
  %i.gm = load i32, ptr %.010.i.i153, align 4, !tbaa !501
  store i32 %i.gm, ptr %.079.i.i154, align 4, !tbaa !501
  store i32 %i.gl, ptr %.010.i.i153, align 4, !tbaa !501
  %i.gn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !501
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !501
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !501
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !501
  %i.gr = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.gr, %i.gb
  br i1 %.not.i.i155, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152, !llvm.loop !2471

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157: ; preds = %.lr.ph.i.i152, %middle.block480, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.gt, ptr %10, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %4
  store ptr %i.gv, ptr %12, align 8, !tbaa !642, !alias.scope !2493
  store ptr %.0191.lcssa280, ptr %13, align 8, !tbaa !642, !alias.scope !2494
  store ptr %i.h, ptr %14, align 8, !tbaa !642, !alias.scope !2495
  store ptr %7, ptr %15, align 8, !tbaa !642, !alias.scope !2496
  store ptr %i.gb, ptr %16, align 8, !tbaa !642, !alias.scope !2497
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7swap_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa279, i64 noundef 0, i64 noundef %.0195.lcssa279, i1 noundef zeroext true)
  %i.gw = load ptr, ptr %11, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gx = load ptr, ptr %10, align 8, !tbaa !642  ; 2 uses
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !509 ; 3 uses
  %.not27.i = icmp eq ptr %i.gy, %i.gx
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.gx, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa281, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.hn, %bb.ab ], [ %i.gw, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 3 uses
  %i.gz = icmp eq ptr %.0108.lcssa282, %.01929.i
  br i1 %i.gz, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.hb, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.ha, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !501
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !501
  store i32 %i.hd, ptr %i.ha, align 4, !tbaa !501
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !501
  %i.he = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !501
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !501
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !501
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !501
  %.not.i.i.i = icmp eq ptr %i.gy, %i.ha
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !35

bb.y:                                             ; preds = %.lr.ph.i158
  %i.hi = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.hj = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !501 ; 2 uses
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !501 ; 2 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !501 ; 2 uses
  %i.hp = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 2 uses
  br i1 %i.hm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !501
  store i32 %i.ho, ptr %i.hj, align 4, !tbaa !501
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.hk, ptr %i.hn, align 4, !tbaa !501
  store i32 %i.ho, ptr %i.hi, align 4, !tbaa !501
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.hj, %bb.z ]
  %.1.i159 = phi ptr [ %i.hi, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !501
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !501
  store i32 %i.hs, ptr %i.hp, align 4, !tbaa !501
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !501
  %.not.i160 = icmp eq ptr %i.gy, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !2482

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !2498

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !2499

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !501 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !501 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !501
  %i.az = load i32, ptr %i.as, align 4, !tbaa !501
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !34

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !501
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !2500

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !501
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !501
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !2501

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !501
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !501
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !501
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !501
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2502

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSB_9select1stIiEEEEEEEENS0_7swap_opEEET1_T_SM_RT0_SN_SO_RSL_T2_T3_:bb.a
.lr.ph.i.i.preheader:                             ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa77 = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.bq, %.lr.ph ]
  %.lcssa75 = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.bp, %.lr.ph ]
  %.sroa.029.050.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph ] ; 2 uses
  %.sroa.024.049.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph ]
  %.sroa.020.048.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.sroa.029.050.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.lcssa75, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !501, !noalias !3242
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !501, !noalias !3242
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !501, !noalias !3242
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !501, !noalias !3242
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !3242
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !501, !noalias !3242
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !501, !noalias !3242
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !501, !noalias !3242
  %.not.i.i = icmp eq ptr %i.ac, %.lcssa77
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit, label %.lr.ph.i.i, !llvm.loop !42

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !642
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.04881 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.024.04980 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.029.05079 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ak = phi ptr [ %i.bp, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.020.04881, i64 -8 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.029.05079, i64 -8 ; 4 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !501
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !501
  %.not36 = icmp slt i32 %i.an, %i.ao
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph82
  %i.ap = getelementptr inbounds i8, ptr %.sroa.024.04980, i64 -8 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  store ptr %i.aq, ptr %1, align 8, !tbaa !642, !noalias !3243
  %i.ar = load ptr, ptr %0, align 8, !tbaa !642, !noalias !3244 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !642, !noalias !3244
  %i.at = load i64, ptr %i.as, align 4
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !501
  store i32 %i.au, ptr %i.as, align 4, !tbaa !529
  %i.av = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !501
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !530
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !501
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !529
  %i.az = getelementptr inbounds i8, ptr %.sroa.020.04881, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !501
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !530
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !501
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !529
  %i.bc = getelementptr inbounds i8, ptr %.sroa.024.04980, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !501
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !530
  store i64 %i.at, ptr %i.ap, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph82
  %i.be = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !642, !noalias !3245
  %i.bf = load ptr, ptr %0, align 8, !tbaa !642, !noalias !3246 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !642, !noalias !3246
  %i.bh = load i64, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !501
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !529
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !501
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !530
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !501
  store i32 %i.bm, ptr %i.be, align 4, !tbaa !529
  %i.bn = getelementptr inbounds i8, ptr %.sroa.029.05079, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !501
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !530
  store i64 %i.bh, ptr %i.am, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.020.1 = phi ptr [ %i.al, %bb.d ], [ %.sroa.020.04881, %bb.e ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %i.ap, %bb.d ], [ %.sroa.024.04980, %bb.e ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.05079, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !642   ; 3 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !642   ; 2 uses
  %.not35 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !3227

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit
  %.sroa.020.046 = phi ptr [ %.sroa.020.048.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %bb.f ]
  %.sroa.024.044 = phi ptr [ %.sroa.024.049.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %bb.f ]
  %.sroa.029.042 = phi ptr [ %.sroa.029.050.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %bb.f ]
  store ptr %.sroa.024.044, ptr %3, align 8, !tbaa !642
  store ptr %.sroa.029.042, ptr %6, align 8, !tbaa !642
  store ptr %.sroa.020.046, ptr %5, align 8, !tbaa !642
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !3247

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !3248

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !501 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !501 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !534
  %i.az = load i8, ptr %i.as, align 1, !tbaa !534
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !70

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !501
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3249

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !501
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !501
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3250

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !534
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !534
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !534
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !534
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3251

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
  br label %._crit_edge124
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !501, !noalias !3469
  %.not.i = icmp eq ptr %i.de, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !42

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.db, %i.z            ; 2 uses
  br i1 %.not23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.v, %.lr.ph.i29
  %.sroa.048.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.071.0, %bb.v ] ; 2 uses
  %.sroa.046.0 = phi ptr [ %i.dp, %.lr.ph.i29 ], [ %.sroa.066.0, %bb.v ] ; 2 uses
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %i.db, %bb.v ] ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -8 ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -8 ; 4 uses
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !3470
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !501, !noalias !3470
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !529, !noalias !3470
  %i.ds = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !501, !noalias !3470
  %i.du = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !530, !noalias !3470
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !501, !noalias !3470
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !529, !noalias !3470
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !501, !noalias !3470
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !530, !noalias !3470
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !3470
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !55

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.066.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !501, !noalias !3471
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !501, !noalias !3471
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !501, !noalias !3471
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !501, !noalias !3471
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !501, !noalias !3471
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !501, !noalias !3471
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !501, !noalias !3471
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !501, !noalias !3471
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !42

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !642
  %i.eh = load ptr, ptr %1, align 8, !tbaa !654   ; 4 uses
  %i.ei = sub i64 0, %.018.lcssa.i
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 %i.ei ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -1 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 -1 ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !534
  %i.en = load i8, ptr %i.el, align 1, !tbaa !534
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !534
  store i8 %i.em, ptr %i.el, align 1, !tbaa !534
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.eo = load ptr, ptr %2, align 8, !tbaa !654   ; 2 uses
  %i.ep = icmp eq ptr %i.ej, %i.eo
  br i1 %i.ep, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = icmp eq ptr %i.eo, %i.eh
  br i1 %i.eq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ej, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !654
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !642
  %i.er = load ptr, ptr %1, align 8, !tbaa !654
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -1 ; 2 uses
  store ptr %i.es, ptr %1, align 8, !tbaa !654
  %i.et = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.et to i64
  %i.eu = add i64 %.0140, %.neg
  %i.ev = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ev to i64
  %i.ew = add i64 %.sroa.speculated, %.neg24
  %i.ex = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ex, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3464

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ey = load ptr, ptr %6, align 8, !tbaa !642
  store ptr %i.ey, ptr %0, align 8, !tbaa !642
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !3472

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !3473

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !501 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !501 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !627
  %i.az = load i64, ptr %i.as, align 8, !tbaa !627
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !36

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !501
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3474

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !501
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !501
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3475

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !627
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !627
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !627
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !627
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3476

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !565
  store i32 0, ptr %i.ff, align 4, !tbaa !565
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !565
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !565
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !565
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !565
  store i32 0, ptr %i.fj, align 4, !tbaa !565
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !565
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !565
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !565
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 16
  %.not.i.i155.1 = icmp eq ptr %i.fn, %i.en
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !165

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !743
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !743
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fp, ptr %10, align 8, !tbaa !765
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %4
  store ptr %i.fr, ptr %12, align 8, !tbaa !765, !alias.scope !14205
  store ptr %.0191.lcssa282, ptr %13, align 8, !tbaa !765, !alias.scope !14206
  store ptr %i.h, ptr %14, align 8, !tbaa !765, !alias.scope !14207
  store ptr %7, ptr %15, align 8, !tbaa !765, !alias.scope !14208
  store ptr %i.en, ptr %16, align 8, !tbaa !765, !alias.scope !14209
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.261") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa281, i64 noundef 0, i64 noundef %.0195.lcssa281, i1 noundef zeroext true)
  %i.fs = load ptr, ptr %11, align 8, !tbaa !765
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ft = load ptr, ptr %10, align 8, !tbaa !765  ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !743 ; 3 uses
  %.not27.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ft, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.gj, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.fv = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 5 uses
  %i.fx = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !565
  store i32 0, ptr %i.fw, align 4, !tbaa !565
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !565
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !565
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !565
  %i.ga = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !565
  store i32 0, ptr %i.ga, align 4, !tbaa !565
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !565
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !565
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !565
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !167

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ge = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 4 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !565
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !565
  %i.gi = icmp slt i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 5 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !565 ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !565
  %i.gl = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.gf, align 4, !tbaa !565
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !565
  store i32 %i.gk, ptr %i.gf, align 4, !tbaa !565
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !565
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !565
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !565
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gf, %bb.z ]
  %.1.i159 = phi ptr [ %i.ge, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !565
  store i32 0, ptr %i.gl, align 4, !tbaa !565
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !565
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !565
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !565
  %.not.i160 = icmp eq ptr %i.fu, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !14204

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test11movable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !14210

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !14211

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !565 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !565 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !565
  %i.az = load i32, ptr %i.as, align 4, !tbaa !565
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !166

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !565
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !565
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test11movable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !565
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !565
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !565
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !565
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !14212

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !565
  store i32 0, ptr %.079.i.i, align 4, !tbaa !565
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !565
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !565
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !565
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !565
  store i32 0, ptr %i.by, align 4, !tbaa !565
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !565
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !565
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !565
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !14213

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !565
  store i32 0, ptr %i.bd, align 4, !tbaa !565
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !565
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !565
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !565
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test11movable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14214

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_SA_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSD_9select1stIS7_EEEEEEEENS0_7swap_opEEET1_T_SO_RT0_SP_RSN_T2_T3_:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.022.041.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.lcssa69, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !565, !noalias !14929
  store i32 0, ptr %i.z, align 4, !tbaa !565, !noalias !14929
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !565, !noalias !14929
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !565, !noalias !14929
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !565, !noalias !14929
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !565, !noalias !14929
  store i32 0, ptr %i.ad, align 4, !tbaa !565, !noalias !14929
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !565, !noalias !14929
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !565, !noalias !14929
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !565, !noalias !14929
  %.not.i.i = icmp eq ptr %i.z, %.lcssa71
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i, !llvm.loop !176

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !765
  br label %.loopexit

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.016.04074 = phi ptr [ %.sroa.016.1, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.022.04173 = phi ptr [ %.sroa.022.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ah = phi ptr [ %i.an, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.ai = phi ptr [ %i.bl, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -8 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -8 ; 4 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !565
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !565
  %.not28 = icmp slt i32 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 10 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !765, !noalias !541
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !765, !noalias !14930
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !565
  store i32 0, ptr %i.ao, align 4, !tbaa !565
  %i.at = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.ap, align 4, !tbaa !565
  %i.au = add i32 %i.at, 2
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %i.av = load i32, ptr %i.an, align 4, !tbaa !565
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !565
  store i32 0, ptr %i.an, align 4, !tbaa !565
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !565
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !565
  store i32 0, ptr %i.aq, align 4, !tbaa !565
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !565
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !565
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !565
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !565
  store <2 x i32> %i.as, ptr %i.aj, align 4, !tbaa !565
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph75
  %i.az = load ptr, ptr %0, align 8, !tbaa !765, !noalias !14931 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 5 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !765, !noalias !14931
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -4
  %i.be = load <2 x i32>, ptr %i.ba, align 4, !tbaa !565
  store i32 0, ptr %i.ba, align 4, !tbaa !565
  %i.bf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.bb, align 4, !tbaa !565
  %i.bg = add i32 %i.bf, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !565
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !565
  store i32 0, ptr %i.an, align 4, !tbaa !565
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !565
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !565
  store i32 0, ptr %i.bc, align 4, !tbaa !565
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !565
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !565
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !565
  store i32 %i.bk, ptr %i.bc, align 4, !tbaa !565
  store <2 x i32> %i.be, ptr %i.ak, align 4, !tbaa !565
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi ptr [ %i.ao, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.016.1 = phi ptr [ %i.aj, %bb.d ], [ %.sroa.016.04074, %bb.e ] ; 4 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.04173, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %storemerge29.in = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %storemerge29 = add i32 %storemerge29.in, -2
  store i32 %storemerge29, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501
  %i.bm = load ptr, ptr %2, align 8, !tbaa !765   ; 2 uses
  %i.bn = icmp eq ptr %i.an, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph, !llvm.loop !14918

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit
  %.sroa.016.037 = phi ptr [ %.sroa.016.040.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.f, %bb.c ], [ %.sroa.016.1, %bb.f ]
  %.sroa.022.035 = phi ptr [ %.sroa.022.041.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test11movable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.a, %bb.c ], [ %.sroa.022.1, %bb.f ]
  store ptr %.sroa.016.037, ptr %3, align 8, !tbaa !765
  store ptr %.sroa.022.035, ptr %5, align 8, !tbaa !765
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !14932

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !14933

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !565 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !565 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !534
  %i.az = load i8, ptr %i.as, align 1, !tbaa !534
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !565
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !565
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !565
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !565
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !565
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !565
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !14934

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !565
  store i32 0, ptr %.079.i.i, align 4, !tbaa !565
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !565
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !565
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !565
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !565
  store i32 0, ptr %i.by, align 4, !tbaa !565
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !565
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !565
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !565
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !14935

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !534
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !534
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !534
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !534
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14936

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test11movable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !565, !noalias !15115
  store i32 0, ptr %i.cl, align 4, !tbaa !565, !noalias !15115
  %i.cq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501, !noalias !15115
  store i32 0, ptr %i.cm, align 4, !tbaa !565, !noalias !15115
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501, !noalias !15115
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !565, !noalias !15115
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !565, !noalias !15115
  store i32 0, ptr %i.ck, align 4, !tbaa !565, !noalias !15115
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !565, !noalias !15115
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !565, !noalias !15115
  store i32 0, ptr %i.cn, align 4, !tbaa !565, !noalias !15115
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !565, !noalias !15115
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !565, !noalias !15115
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !565, !noalias !15115
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !565, !noalias !15115
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !565, !noalias !15115
  %i.cw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501, !noalias !15115
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !501, !noalias !15115
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !187

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !565, !noalias !15116
  store i32 0, ptr %i.cz, align 4, !tbaa !565, !noalias !15116
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !565, !noalias !15116
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !565, !noalias !15116
  store i32 %i.db, ptr %i.da, align 4, !tbaa !565, !noalias !15116
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !565, !noalias !15116
  store i32 0, ptr %i.dd, align 4, !tbaa !565, !noalias !15116
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !565, !noalias !15116
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !565, !noalias !15116
  store i32 %i.df, ptr %i.de, align 4, !tbaa !565, !noalias !15116
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !176

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread86 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread85 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !765
  %i.di = load ptr, ptr %1, align 8, !tbaa !654   ; 4 uses
  %i.dj = sub i64 0, %.018.lcssa.i
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !534
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !534
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !534
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !534
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !654   ; 2 uses
  %i.dq = icmp eq ptr %i.dk, %i.dp
  br i1 %i.dq, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq ptr %i.dp, %i.di
  br i1 %i.dr, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !654
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test11movable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !765
  %i.ds = load ptr, ptr %1, align 8, !tbaa !654
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !654
  %i.du = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.du to i64
  %i.dv = add i64 %.0100, %.neg
  %i.dw = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dw to i64
  %i.dx = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dy = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15109

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test11movable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dz = load ptr, ptr %6, align 8, !tbaa !765
  store ptr %i.dz, ptr %0, align 8, !tbaa !765
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !15117

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !15118

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !565 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !565 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !627
  %i.az = load i64, ptr %i.as, align 8, !tbaa !627
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !168

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !565
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !565
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test11movable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !565
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !565
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !565
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !565
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !15119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !565
  store i32 0, ptr %.079.i.i, align 4, !tbaa !565
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !565
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !565
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !565
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !565
  store i32 0, ptr %i.by, align 4, !tbaa !565
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !565
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !565
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !565
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !15120

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !627
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !627
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !627
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !627
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test11movable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test11movable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !15121

._crit_edge125.loopexit131:                       ; preds = %bb.l
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
.lr.ph.i.i154.preheader369:                       ; preds = %vector.memcheck343, %.lr.ph.i.i154.preheader, %middle.block362
  %.010.i.i155.ph = phi ptr [ %7, %vector.memcheck343 ], [ %7, %.lr.ph.i.i154.preheader ], [ %i.fw, %middle.block362 ]
  %.079.i.i156.ph = phi ptr [ %i.h, %vector.memcheck343 ], [ %i.h, %.lr.ph.i.i154.preheader ], [ %i.fx, %middle.block362 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader369, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.gh, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader369 ] ; 4 uses
  %.079.i.i156 = phi ptr [ %i.gg, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader369 ] ; 4 uses
  %i.ga = load i32, ptr %.079.i.i156, align 4, !tbaa !792
  %i.gb = load i32, ptr %.010.i.i155, align 4, !tbaa !792
  store i32 %i.gb, ptr %.079.i.i156, align 4, !tbaa !792
  store i32 %i.ga, ptr %.010.i.i155, align 4, !tbaa !792
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !792
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !792
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !792
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !792
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 8
  %.not.i.i157 = icmp eq ptr %i.gg, %i.fq
  br i1 %.not.i.i157, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, label %.lr.ph.i.i154, !llvm.loop !18439

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159: ; preds = %.lr.ph.i.i154, %middle.block362, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit152
  store ptr %7, ptr %i.a, align 8, !tbaa !789
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.gi, ptr %i.b, align 8, !tbaa !789
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.gi, ptr %10, align 8, !tbaa !813
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %4
  store ptr %i.gk, ptr %12, align 8, !tbaa !813, !alias.scope !18457
  store ptr %.0193.lcssa282, ptr %13, align 8, !tbaa !813, !alias.scope !18458
  store ptr %i.h, ptr %14, align 8, !tbaa !813, !alias.scope !18459
  store ptr %7, ptr %15, align 8, !tbaa !813, !alias.scope !18460
  store ptr %i.fq, ptr %16, align 8, !tbaa !813, !alias.scope !18461
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.324") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0197.lcssa281, i64 noundef 0, i64 noundef %.0197.lcssa281, i1 noundef zeroext true)
  %i.gl = load ptr, ptr %11, align 8, !tbaa !813
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gm = load ptr, ptr %10, align 8, !tbaa !813  ; 2 uses
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !789 ; 3 uses
  %.not27.i = icmp eq ptr %i.gn, %i.gm
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159, %bb.ab
  %.030.i = phi ptr [ %.1.i161, %bb.ab ], [ %i.gm, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159 ] ; 4 uses
  %.02128.i = phi ptr [ %i.hc, %bb.ab ], [ %i.gl, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159 ] ; 3 uses
  %i.go = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.go, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i160, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i160 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i160 ] ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 4 uses
  %i.gq = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !792
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !792
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !792
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !792
  %i.gt = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !792
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !792
  store i32 %i.gw, ptr %i.gt, align 4, !tbaa !792
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !792
  %.not.i.i.i = icmp eq ptr %i.gn, %i.gp
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !253

bb.y:                                             ; preds = %.lr.ph.i160
  %i.gx = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.gy = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.gz = load i32, ptr %i.gx, align 4, !tbaa !792 ; 2 uses
  %i.ha = load i32, ptr %i.gy, align 4, !tbaa !792 ; 2 uses
  %i.hb = icmp slt i32 %i.gz, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 4 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !792 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 2 uses
  br i1 %i.hb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !792
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !792
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.gz, ptr %i.hc, align 4, !tbaa !792
  store i32 %i.hd, ptr %i.gx, align 4, !tbaa !792
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gy, %bb.z ]
  %.1.i161 = phi ptr [ %i.gx, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !792
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !792
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !792
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !792
  %.not.i162 = icmp eq ptr %i.gn, %.1.i161
  br i1 %.not.i162, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i160, !llvm.loop !18450

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test12copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !18462

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !18463

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !792 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !792 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !792
  %i.az = load i32, ptr %i.as, align 4, !tbaa !792
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !252

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !792
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !792
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !792
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !792
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !792
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !18464

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !792
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !792
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !792
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !792
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !792
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !792
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !792
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !792
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !18465

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !792
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !792
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !792
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !792
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test12copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !18466

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_SA_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSD_9select1stIS7_EEEEEEEENS0_7swap_opEEET1_T_SO_RT0_SP_RSN_T2_T3_:bb.a
  %i.u = load ptr, ptr %4, align 8, !tbaa !813
  %i.v = icmp eq ptr %i.f, %i.u
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %.lr.ph68

.lr.ph:                                           ; preds = %bb.f
  %i.w = load ptr, ptr %4, align 8, !tbaa !813
  %i.x = icmp eq ptr %.sroa.016.1, %i.w
  br i1 %i.x, label %.lr.ph.i.i.preheader.loopexit, label %.lr.ph68, !llvm.loop !19181

.lr.ph.i.i.preheader.loopexit:                    ; preds = %.lr.ph
  store ptr %i.ap, ptr %0, align 8, !tbaa !813, !noalias !541
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.loopexit, %.lr.ph.preheader
  %.lcssa64 = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.bc, %.lr.ph.i.i.preheader.loopexit ]
  %.lcssa62 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.ao, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.022.041.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.022.1, %.lr.ph.i.i.preheader.loopexit ] ; 2 uses
  %.sroa.016.040.lcssa = phi ptr [ %i.f, %.lr.ph.preheader ], [ %.sroa.016.1, %.lr.ph.i.i.preheader.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.022.041.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.lcssa62, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !792, !noalias !19188
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !792, !noalias !19188
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !792, !noalias !19188
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !792, !noalias !19188
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !792, !noalias !19188
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !792, !noalias !19188
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !792, !noalias !19188
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !792, !noalias !19188
  %.not.i.i = icmp eq ptr %i.z, %.lcssa64
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !813
  br label %.loopexit

.lr.ph68:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.016.04067 = phi ptr [ %.sroa.016.1, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.022.04166 = phi ptr [ %.sroa.022.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ah = phi ptr [ %i.ao, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.ap, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.aj = phi i32 [ %storemerge29.in, %.lr.ph ], [ %storemerge29.in38, %.lr.ph.preheader ]
  %i.ak = getelementptr inbounds i8, ptr %.sroa.016.04067, i64 -8 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.022.04166, i64 -8 ; 4 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !792
  %i.an = load i32, ptr %i.al, align 4, !tbaa !792
  %.not28 = icmp slt i32 %i.am, %i.an
  %i.ao = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 7 uses
  store ptr %i.ao, ptr %1, align 8, !tbaa !813, !noalias !541
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !792 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !792 ; 2 uses
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.at = load i32, ptr %i.ao, align 4, !tbaa !792
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !792
  %i.au = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !792
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !792
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph68
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !792
  store i32 %i.aw, ptr %i.ao, align 4, !tbaa !792
  %i.ax = getelementptr inbounds i8, ptr %.sroa.016.04067, i64 -4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !792
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !792
  store i32 %i.aq, ptr %i.ak, align 4, !tbaa !792
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !792
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph68
  %i.az = load i32, ptr %i.al, align 4, !tbaa !792
  store i32 %i.az, ptr %i.ao, align 4, !tbaa !792
  %i.ba = getelementptr inbounds i8, ptr %.sroa.022.04166, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !792
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !792
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !792
  store i32 %i.as, ptr %i.ba, align 4, !tbaa !792
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1 = phi ptr [ %.sroa.016.04067, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %.sroa.022.1 = phi ptr [ %i.al, %bb.e ], [ %.sroa.022.04166, %bb.d ] ; 3 uses
  %storemerge29.in = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 2 uses
  %storemerge29 = add i32 %storemerge29.in, -2
  store i32 %storemerge29, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.bc = load ptr, ptr %2, align 8, !tbaa !813   ; 2 uses
  %i.bd = icmp eq ptr %i.ao, %i.bc
  br i1 %i.bd, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !19181

.loopexit.loopexit:                               ; preds = %bb.f
  store ptr %i.ap, ptr %0, align 8, !tbaa !813, !noalias !541
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit
  %.sroa.016.037 = phi ptr [ %.sroa.016.040.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.f, %bb.c ], [ %.sroa.016.1, %.loopexit.loopexit ]
  %.sroa.022.035 = phi ptr [ %.sroa.022.041.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.a, %bb.c ], [ %.sroa.022.1, %.loopexit.loopexit ]
  store ptr %.sroa.016.037, ptr %3, align 8, !tbaa !813
  store ptr %.sroa.022.035, ptr %5, align 8, !tbaa !813
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !19189

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !19190

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !792 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !792 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !534
  %i.az = load i8, ptr %i.as, align 1, !tbaa !534
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !288

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !792
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !792
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !792
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !792
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !792
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !19191

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !792
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !792
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !792
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !792
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !792
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !792
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !792
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !792
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !19192

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !534
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !534
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !534
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !534
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19193

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
  br label %._crit_edge124
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test12copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.ce = add i32 %.pre.i, 2
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.preheader.i
  %.sroa.045.0 = phi ptr [ %.pre113, %.lr.ph.preheader.i ], [ %i.ci, %.lr.ph.i26 ] ; 2 uses
  %.sroa.044.0 = phi ptr [ %i.br, %.lr.ph.preheader.i ], [ %i.cj, %.lr.ph.i26 ] ; 2 uses
  %i.cf = phi i32 [ %i.ce, %.lr.ph.preheader.i ], [ %i.cs, %.lr.ph.i26 ]
  %i.cg = phi ptr [ %i.bs, %.lr.ph.preheader.i ], [ %i.ch, %.lr.ph.i26 ] ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -8 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4
  %i.cl = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cn = load <2 x i32>, ptr %i.cj, align 4, !tbaa !792, !noalias !19400
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !19400
  %i.co = load i32, ptr %i.ci, align 4, !tbaa !792, !noalias !19400
  store i32 %i.co, ptr %i.cj, align 4, !tbaa !792, !noalias !19400
  %i.cp = load i32, ptr %i.cl, align 4, !tbaa !792, !noalias !19400
  store i32 %i.cp, ptr %i.ck, align 4, !tbaa !792, !noalias !19400
  %i.cq = load i32, ptr %i.ch, align 4, !tbaa !792, !noalias !19400
  store i32 %i.cq, ptr %i.ci, align 4, !tbaa !792, !noalias !19400
  %i.cr = load i32, ptr %i.cm, align 4, !tbaa !792, !noalias !19400
  store i32 %i.cr, ptr %i.cl, align 4, !tbaa !792, !noalias !19400
  store <2 x i32> %i.cn, ptr %i.ch, align 4, !tbaa !792, !noalias !19400
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !19400 ; 2 uses
  %i.ct = add i32 %i.cs, -2
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !19400
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !271

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bo, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cw, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.bo, %bb.l ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !792, !noalias !19401
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !792, !noalias !19401
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !792, !noalias !19401
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !792, !noalias !19401
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !792, !noalias !19401
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !792, !noalias !19401
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !792, !noalias !19401
  store i32 %i.db, ptr %i.da, align 4, !tbaa !792, !noalias !19401
  %.not.i.i28 = icmp eq ptr %i.cv, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dd = phi ptr [ %i.ac, %.loopexit ], [ %i.bu, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %.pre113, %.thread86 ], [ %i.ac, %bb.l ], [ %.pre113, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bx, %.lr.ph.i25 ], [ %i.bs, %.thread85 ], [ %i.cw, %.lr.ph.i.i ], [ %i.br, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !813
  %i.de = load ptr, ptr %1, align 8, !tbaa !654   ; 4 uses
  %i.df = sub i64 0, %.018.lcssa.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 %i.df ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dd
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -1 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.de, i64 -1 ; 2 uses
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !534
  %i.dk = load i8, ptr %i.di, align 1, !tbaa !534
  store i8 %i.dk, ptr %i.dh, align 1, !tbaa !534
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !534
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dl = load ptr, ptr %2, align 8, !tbaa !654   ; 2 uses
  %i.dm = icmp eq ptr %i.dg, %i.dl
  br i1 %i.dm, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dn = icmp eq ptr %i.dl, %i.de
  br i1 %i.dn, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.de, %bb.n ], [ %i.dg, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !654
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test12copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !813
  %i.do = load ptr, ptr %1, align 8, !tbaa !654
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -1 ; 2 uses
  store ptr %i.dp, ptr %1, align 8, !tbaa !654
  %i.dq = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dq to i64
  %i.dr = add i64 %.0100, %.neg
  %i.ds = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ds to i64
  %i.dt = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.du = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.du, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19394

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test12copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dv = load ptr, ptr %6, align 8, !tbaa !813
  store ptr %i.dv, ptr %0, align 8, !tbaa !813
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 168
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !19402

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !19403

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !792 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !792 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !627
  %i.az = load i64, ptr %i.as, align 8, !tbaa !627
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !254

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !792
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !792
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test12copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !792
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !792
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !792
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !19404

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !792
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !792
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !792
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !792
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !792
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !792
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !792
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !792
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !19405

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !627
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !627
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !627
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !627
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test12copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test12copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !19406

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
  %i.cp = select i1 %i.co, ptr %i.dh, ptr %i.di
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !838
  store i32 0, ptr %i.ff, align 4, !tbaa !838
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !838
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !838
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !838
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !838
  store i32 0, ptr %i.fj, align 4, !tbaa !838
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !838
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !838
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !838
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 16
  %.not.i.i155.1 = icmp eq ptr %i.fn, %i.en
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !339

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !835
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !835
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fp, ptr %10, align 8, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %4
  store ptr %i.fr, ptr %12, align 8, !tbaa !859, !alias.scope !23230
  store ptr %.0191.lcssa282, ptr %13, align 8, !tbaa !859, !alias.scope !23231
  store ptr %i.h, ptr %14, align 8, !tbaa !859, !alias.scope !23232
  store ptr %7, ptr %15, align 8, !tbaa !859, !alias.scope !23233
  store ptr %i.en, ptr %16, align 8, !tbaa !859, !alias.scope !23234
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.398") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa281, i64 noundef 0, i64 noundef %.0195.lcssa281, i1 noundef zeroext true)
  %i.fs = load ptr, ptr %11, align 8, !tbaa !859
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ft = load ptr, ptr %10, align 8, !tbaa !859  ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !835 ; 3 uses
  %.not27.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ft, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.gj, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.fv = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 5 uses
  %i.fx = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !838
  store i32 0, ptr %i.fw, align 4, !tbaa !838
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !838
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !838
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !838
  %i.ga = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !838
  store i32 0, ptr %i.ga, align 4, !tbaa !838
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !838
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !838
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !838
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !342

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ge = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 4 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !838
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !838
  %i.gi = icmp slt i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 5 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !838 ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !838
  %i.gl = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.gf, align 4, !tbaa !838
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !838
  store i32 %i.gk, ptr %i.gf, align 4, !tbaa !838
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !838
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !838
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !838
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gf, %bb.z ]
  %.1.i159 = phi ptr [ %i.ge, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !838
  store i32 0, ptr %i.gl, align 4, !tbaa !838
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !838
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !838
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !838
  %.not.i160 = icmp eq ptr %i.fu, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !23229

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !23235

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !23236

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !838
  %i.az = load i32, ptr %i.as, align 4, !tbaa !838
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !340

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !838
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !23237

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !23238

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !838
  store i32 0, ptr %i.bd, align 4, !tbaa !838
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !838
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !838
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !838
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23239

end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSD_9select1stIS7_EEEEEEEENS0_7swap_opEEET1_T_SO_RT0_SP_RSN_T2_T3_:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.022.041.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.lcssa69, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !838, !noalias !23953
  store i32 0, ptr %i.z, align 4, !tbaa !838, !noalias !23953
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !838, !noalias !23953
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !838, !noalias !23953
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !838, !noalias !23953
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !838, !noalias !23953
  store i32 0, ptr %i.ad, align 4, !tbaa !838, !noalias !23953
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !838, !noalias !23953
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !838, !noalias !23953
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !838, !noalias !23953
  %.not.i.i = icmp eq ptr %i.z, %.lcssa71
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i, !llvm.loop !351

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !859
  br label %.loopexit

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.016.04074 = phi ptr [ %.sroa.016.1, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.022.04173 = phi ptr [ %.sroa.022.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ah = phi ptr [ %i.an, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.ai = phi ptr [ %i.bl, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -8 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -8 ; 4 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !838
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !838
  %.not28 = icmp slt i32 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 10 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !859, !noalias !541
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !859, !noalias !23954
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !838
  store i32 0, ptr %i.ao, align 4, !tbaa !838
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.ap, align 4, !tbaa !838
  %i.au = add i32 %i.at, 2
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.av = load i32, ptr %i.an, align 4, !tbaa !838
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !838
  store i32 0, ptr %i.an, align 4, !tbaa !838
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !838
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !838
  store i32 0, ptr %i.aq, align 4, !tbaa !838
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !838
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !838
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !838
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !838
  store <2 x i32> %i.as, ptr %i.aj, align 4, !tbaa !838
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph75
  %i.az = load ptr, ptr %0, align 8, !tbaa !859, !noalias !23955 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 5 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !859, !noalias !23955
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -4
  %i.be = load <2 x i32>, ptr %i.ba, align 4, !tbaa !838
  store i32 0, ptr %i.ba, align 4, !tbaa !838
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.bb, align 4, !tbaa !838
  %i.bg = add i32 %i.bf, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !838
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !838
  store i32 0, ptr %i.an, align 4, !tbaa !838
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !838
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !838
  store i32 0, ptr %i.bc, align 4, !tbaa !838
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !838
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !838
  store i32 %i.bk, ptr %i.bc, align 4, !tbaa !838
  store <2 x i32> %i.be, ptr %i.ak, align 4, !tbaa !838
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi ptr [ %i.ao, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.016.1 = phi ptr [ %i.aj, %bb.d ], [ %.sroa.016.04074, %bb.e ] ; 4 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.04173, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %storemerge29.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %storemerge29 = add i32 %storemerge29.in, -2
  store i32 %storemerge29, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.bm = load ptr, ptr %2, align 8, !tbaa !859   ; 2 uses
  %i.bn = icmp eq ptr %i.an, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph, !llvm.loop !23942

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit
  %.sroa.016.037 = phi ptr [ %.sroa.016.040.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.f, %bb.c ], [ %.sroa.016.1, %bb.f ]
  %.sroa.022.035 = phi ptr [ %.sroa.022.041.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.a, %bb.c ], [ %.sroa.022.1, %bb.f ]
  store ptr %.sroa.016.037, ptr %3, align 8, !tbaa !859
  store ptr %.sroa.022.035, ptr %5, align 8, !tbaa !859
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !23956

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !23957

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !534
  %i.az = load i8, ptr %i.as, align 1, !tbaa !534
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !379

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !838
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !23958

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !23959

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !534
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !534
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !534
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !534
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23960

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !838, !noalias !24139
  store i32 0, ptr %i.cl, align 4, !tbaa !838, !noalias !24139
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !24139
  store i32 0, ptr %i.cm, align 4, !tbaa !838, !noalias !24139
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !24139
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !838, !noalias !24139
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !838, !noalias !24139
  store i32 0, ptr %i.ck, align 4, !tbaa !838, !noalias !24139
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !838, !noalias !24139
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !838, !noalias !24139
  store i32 0, ptr %i.cn, align 4, !tbaa !838, !noalias !24139
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !838, !noalias !24139
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !838, !noalias !24139
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !838, !noalias !24139
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !838, !noalias !24139
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !838, !noalias !24139
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !24139
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !24139
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !362

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !838, !noalias !24140
  store i32 0, ptr %i.cz, align 4, !tbaa !838, !noalias !24140
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !838, !noalias !24140
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !838, !noalias !24140
  store i32 %i.db, ptr %i.da, align 4, !tbaa !838, !noalias !24140
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !838, !noalias !24140
  store i32 0, ptr %i.dd, align 4, !tbaa !838, !noalias !24140
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !838, !noalias !24140
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !838, !noalias !24140
  store i32 %i.df, ptr %i.de, align 4, !tbaa !838, !noalias !24140
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !351

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread86 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread85 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !859
  %i.di = load ptr, ptr %1, align 8, !tbaa !654   ; 4 uses
  %i.dj = sub i64 0, %.018.lcssa.i
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !534
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !534
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !534
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !534
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !654   ; 2 uses
  %i.dq = icmp eq ptr %i.dk, %i.dp
  br i1 %i.dq, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq ptr %i.dp, %i.di
  br i1 %i.dr, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !654
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !859
  %i.ds = load ptr, ptr %1, align 8, !tbaa !654
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !654
  %i.du = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.du to i64
  %i.dv = add i64 %.0100, %.neg
  %i.dw = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dw to i64
  %i.dx = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dy = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24133

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dz = load ptr, ptr %6, align 8, !tbaa !859
  store ptr %i.dz, ptr %0, align 8, !tbaa !859
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !24141

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !24142

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !627
  %i.az = load i64, ptr %i.as, align 8, !tbaa !627
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !343

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !838
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !24143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !24144

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !627
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !627
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !627
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !627
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !24145

._crit_edge125.loopexit131:                       ; preds = %bb.l
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !838
  store i32 0, ptr %i.ff, align 4, !tbaa !838
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !838
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !838
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !838
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !838
  store i32 0, ptr %i.fj, align 4, !tbaa !838
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !838
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !838
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !838
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 16
  %.not.i.i155.1 = icmp eq ptr %i.fn, %i.en
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !339

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !835
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !835
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fp, ptr %10, align 8, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %4
  store ptr %i.fr, ptr %12, align 8, !tbaa !859, !alias.scope !27654
  store ptr %.0191.lcssa282, ptr %13, align 8, !tbaa !859, !alias.scope !27655
  store ptr %i.h, ptr %14, align 8, !tbaa !859, !alias.scope !27656
  store ptr %7, ptr %15, align 8, !tbaa !859, !alias.scope !27657
  store ptr %i.en, ptr %16, align 8, !tbaa !859, !alias.scope !27658
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.398") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa281, i64 noundef 0, i64 noundef %.0195.lcssa281, i1 noundef zeroext true)
  %i.fs = load ptr, ptr %11, align 8, !tbaa !859
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ft = load ptr, ptr %10, align 8, !tbaa !859  ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !835 ; 3 uses
  %.not27.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEENS0_7swap_opEPS9_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ft, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.gj, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.fv = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 5 uses
  %i.fx = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !838
  store i32 0, ptr %i.fw, align 4, !tbaa !838
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !838
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !838
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !838
  %i.ga = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !838
  store i32 0, ptr %i.ga, align 4, !tbaa !838
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !838
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !838
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !838
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEENS0_7swap_opEPS9_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !342

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ge = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 4 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !838
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !838
  %i.gi = icmp slt i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 5 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !838 ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !838
  %i.gl = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.gf, align 4, !tbaa !838
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !838
  store i32 %i.gk, ptr %i.gf, align 4, !tbaa !838
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !838
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !838
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !838
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gf, %bb.z ]
  %.1.i159 = phi ptr [ %i.ge, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !838
  store i32 0, ptr %i.gl, align 4, !tbaa !838
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !838
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !838
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !838
  %.not.i160 = icmp eq ptr %i.fu, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEENS0_7swap_opEPS9_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !27653

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentESt4pairINS5_24movable_and_copyable_intES8_ENS3_9select1stIS8_EEEENS0_7swap_opEPS9_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !27659

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !27660

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !838
  %i.az = load i32, ptr %i.as, align 4, !tbaa !838
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !429

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareINS5_16less_transparentES7_NS9_9select1stIS6_EEEES8_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !838
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !27661

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !27662

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !838
  store i32 0, ptr %i.bd, align 4, !tbaa !838
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !838
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !838
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !838
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27663

end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_10antistableINS0_7inverseINS5_3dtl23flat_tree_value_compareINS6_16less_transparentES8_NSD_9select1stIS7_EEEEEEEENS0_7swap_opEEET1_T_SN_RT0_SO_RSM_T2_T3_:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.022.041.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.lcssa69, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !838, !noalias !28342
  store i32 0, ptr %i.z, align 4, !tbaa !838, !noalias !28342
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !838, !noalias !28342
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !838, !noalias !28342
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !838, !noalias !28342
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !838, !noalias !28342
  store i32 0, ptr %i.ad, align 4, !tbaa !838, !noalias !28342
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !838, !noalias !28342
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !838, !noalias !28342
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !838, !noalias !28342
  %.not.i.i = icmp eq ptr %i.z, %.lcssa71
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit, label %.lr.ph.i.i, !llvm.loop !351

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !859
  br label %.loopexit

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.016.04074 = phi ptr [ %.sroa.016.1, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.022.04173 = phi ptr [ %.sroa.022.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ah = phi ptr [ %i.an, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.ai = phi ptr [ %i.bl, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -8 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -8 ; 4 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !838
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !838
  %.not28 = icmp slt i32 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 10 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !859, !noalias !541
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !859, !noalias !28343
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !838
  store i32 0, ptr %i.ao, align 4, !tbaa !838
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.ap, align 4, !tbaa !838
  %i.au = add i32 %i.at, 2
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.av = load i32, ptr %i.an, align 4, !tbaa !838
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !838
  store i32 0, ptr %i.an, align 4, !tbaa !838
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !838
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !838
  store i32 0, ptr %i.aq, align 4, !tbaa !838
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !838
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !838
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !838
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !838
  store <2 x i32> %i.as, ptr %i.aj, align 4, !tbaa !838
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph75
  %i.az = load ptr, ptr %0, align 8, !tbaa !859, !noalias !28344 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 5 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !859, !noalias !28344
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -4
  %i.be = load <2 x i32>, ptr %i.ba, align 4, !tbaa !838
  store i32 0, ptr %i.ba, align 4, !tbaa !838
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  store i32 0, ptr %i.bb, align 4, !tbaa !838
  %i.bg = add i32 %i.bf, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !838
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !838
  store i32 0, ptr %i.an, align 4, !tbaa !838
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !838
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !838
  store i32 0, ptr %i.bc, align 4, !tbaa !838
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !838
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !838
  store i32 %i.bk, ptr %i.bc, align 4, !tbaa !838
  store <2 x i32> %i.be, ptr %i.ak, align 4, !tbaa !838
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi ptr [ %i.ao, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.016.1 = phi ptr [ %i.aj, %bb.d ], [ %.sroa.016.04074, %bb.e ] ; 4 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.04173, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %storemerge29.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %storemerge29 = add i32 %storemerge29.in, -2
  store i32 %storemerge29, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501
  %i.bm = load ptr, ptr %2, align 8, !tbaa !859   ; 2 uses
  %i.bn = icmp eq ptr %i.an, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph, !llvm.loop !28331

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit
  %.sroa.016.037 = phi ptr [ %.sroa.016.040.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.f, %bb.c ], [ %.sroa.016.1, %bb.f ]
  %.sroa.022.035 = phi ptr [ %.sroa.022.041.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_EET0_NS0_9forward_tET_SD_SB_.exit ], [ %i.a, %bb.c ], [ %.sroa.022.1, %bb.f ]
  store ptr %.sroa.016.037, ptr %3, align 8, !tbaa !859
  store ptr %.sroa.022.035, ptr %5, align 8, !tbaa !859
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !28345

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !28346

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !534
  %i.az = load i8, ptr %i.as, align 1, !tbaa !534
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !461

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !838
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !28347

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !28348

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !534
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !534
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !534
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !534
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28349

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareINSB_16less_transparentESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !838, !noalias !28528
  store i32 0, ptr %i.cl, align 4, !tbaa !838, !noalias !28528
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !28528
  store i32 0, ptr %i.cm, align 4, !tbaa !838, !noalias !28528
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !28528
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !838, !noalias !28528
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !838, !noalias !28528
  store i32 0, ptr %i.ck, align 4, !tbaa !838, !noalias !28528
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !838, !noalias !28528
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !838, !noalias !28528
  store i32 0, ptr %i.cn, align 4, !tbaa !838, !noalias !28528
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !838, !noalias !28528
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !838, !noalias !28528
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !838, !noalias !28528
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !838, !noalias !28528
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !838, !noalias !28528
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !28528
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !501, !noalias !28528
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !362

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !838, !noalias !28529
  store i32 0, ptr %i.cz, align 4, !tbaa !838, !noalias !28529
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !838, !noalias !28529
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !838, !noalias !28529
  store i32 %i.db, ptr %i.da, align 4, !tbaa !838, !noalias !28529
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !838, !noalias !28529
  store i32 0, ptr %i.dd, align 4, !tbaa !838, !noalias !28529
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !838, !noalias !28529
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !838, !noalias !28529
  store i32 %i.df, ptr %i.de, align 4, !tbaa !838, !noalias !28529
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !351

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread86 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread85 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !859
  %i.di = load ptr, ptr %1, align 8, !tbaa !654   ; 4 uses
  %i.dj = sub i64 0, %.018.lcssa.i
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !534
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !534
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !534
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !534
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !654   ; 2 uses
  %i.dq = icmp eq ptr %i.dk, %i.dp
  br i1 %i.dq, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq ptr %i.dp, %i.di
  br i1 %i.dr, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !654
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !859
  %i.ds = load ptr, ptr %1, align 8, !tbaa !654
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !654
  %i.du = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.du to i64
  %i.dv = add i64 %.0100, %.neg
  %i.dw = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dw to i64
  %i.dx = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dy = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28522

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dz = load ptr, ptr %6, align 8, !tbaa !859
  store ptr %i.dz, ptr %0, align 8, !tbaa !859
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !643
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !28530

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !28531

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !838 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !838 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !627
  %i.az = load i64, ptr %i.as, align 8, !tbaa !627
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !430

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !838
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !838
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareINS7_16less_transparentES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !838
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !838
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !838
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !838
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !28532

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !838
  store i32 0, ptr %.079.i.i, align 4, !tbaa !838
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !838
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !838
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !838
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !838
  store i32 0, ptr %i.by, align 4, !tbaa !838
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !838
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !838
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !838
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !28533

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !627
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !627
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !627
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !627
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28534

._crit_edge125.loopexit131:                       ; preds = %bb.l
end_hunk_14
