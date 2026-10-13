Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 400
loop-unroll.NumUnrolled: 718
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_:bb.a
  %i.is = icmp eq i64 %index.next442, %n.vec427
  br i1 %i.is, label %middle.block443, label %vector.body428, !llvm.loop !2412

middle.block443:                                  ; preds = %vector.body428
  %cmp.n444 = icmp eq i64 %i.ii, %n.vec427
  br i1 %cmp.n444, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145.preheader483

.lr.ph.i.i145.preheader483:                       ; preds = %vector.memcheck422, %.lr.ph.i.i145.preheader, %middle.block443
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck422 ], [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.io, %middle.block443 ]
  %.079.i.i147.ph = phi ptr [ %i.ia, %vector.memcheck422 ], [ %i.ia, %.lr.ph.i.i145.preheader ], [ %i.ip, %middle.block443 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader483, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.iy, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader483 ] ; 3 uses
  %.079.i.i147 = phi ptr [ %i.ix, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader483 ] ; 3 uses
  %i.it = load i32, ptr %.079.i.i147, align 4, !tbaa !501
  store i32 %i.it, ptr %.010.i.i146, align 4, !tbaa !529
  %i.iu = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !501
  %i.iw = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !530
  %i.ix = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.ix, %i.hz
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145, !llvm.loop !2413

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150: ; preds = %.lr.ph.i.i145, %middle.block443, %bb.a, %.thread
  %.0108.lcssa280 = phi ptr [ %1, %bb.a ], [ %i.ic, %.thread ], [ %i.ic, %middle.block443 ], [ %i.ic, %.lr.ph.i.i145 ]
  %.0111.lcssa279 = phi ptr [ %i.f, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block443 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa278 = phi ptr [ %i.e, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %middle.block443 ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa277 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %middle.block443 ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 3 uses
  %i.iz = getelementptr i8, ptr %i.h, i64 %.idx210 ; 3 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  %i.ja = add i64 %.idx210, -8                    ; 2 uses
  %i.jb = lshr exact i64 %i.ja, 3
  %i.jc = add nuw nsw i64 %i.jb, 1                ; 2 uses
  %min.iters.check453 = icmp ult i64 %i.ja, 56
  br i1 %min.iters.check453, label %.lr.ph.i.i152.preheader482, label %vector.memcheck454

vector.memcheck454:                               ; preds = %.lr.ph.i.i152.preheader
  %i.jd = getelementptr i8, ptr %7, i64 %.idx210
  %bound0455 = icmp ult ptr %7, %i.iz
  %bound1456 = icmp ult ptr %i.h, %i.jd
  %found.conflict457 = and i1 %bound0455, %bound1456
  br i1 %found.conflict457, label %.lr.ph.i.i152.preheader482, label %vector.ph458

vector.ph458:                                     ; preds = %vector.memcheck454
  %n.vec459 = and i64 %i.jc, 4611686018427387900  ; 3 uses
  %i.je = shl i64 %n.vec459, 3                    ; 2 uses
  %i.jf = getelementptr i8, ptr %7, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.h, i64 %i.je
  br label %vector.body460

vector.body460:                                   ; preds = %vector.body460, %vector.ph458
  %index461 = phi i64 [ 0, %vector.ph458 ], [ %index.next474, %vector.body460 ] ; 2 uses
  %i.jh = shl i64 %index461, 3                    ; 3 uses
  %i.ji = or disjoint i64 %i.jh, 16               ; 2 uses
  %next.gep462 = getelementptr i8, ptr %7, i64 %i.jh
  %next.gep463 = getelementptr i8, ptr %7, i64 %i.ji
  %next.gep464 = getelementptr i8, ptr %i.h, i64 %i.jh
  %next.gep465 = getelementptr i8, ptr %i.h, i64 %i.ji
  %wide.vec466 = load <4 x i32>, ptr %next.gep464, align 4, !tbaa !501, !alias.scope !2439
  %wide.vec469 = load <4 x i32>, ptr %next.gep465, align 4, !tbaa !501, !alias.scope !2439
  store <4 x i32> %wide.vec466, ptr %next.gep462, align 4, !tbaa !501, !alias.scope !2440, !noalias !2439
  store <4 x i32> %wide.vec469, ptr %next.gep463, align 4, !tbaa !501, !alias.scope !2440, !noalias !2439
  %index.next474 = add nuw i64 %index461, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next474, %n.vec459
  br i1 %i.jj, label %middle.block475, label %vector.body460, !llvm.loop !2417

middle.block475:                                  ; preds = %vector.body460
  %cmp.n476 = icmp eq i64 %i.jc, %n.vec459
  br i1 %cmp.n476, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader482

.lr.ph.i.i152.preheader482:                       ; preds = %vector.memcheck454, %.lr.ph.i.i152.preheader, %middle.block475
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck454 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.jf, %middle.block475 ]
  %.079.i.i154.ph = phi ptr [ %i.h, %vector.memcheck454 ], [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.jg, %middle.block475 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader482, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.jp, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader482 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.jo, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader482 ] ; 3 uses
  %i.jk = load i32, ptr %.079.i.i154, align 4, !tbaa !501
  store i32 %i.jk, ptr %.010.i.i153, align 4, !tbaa !529
  %i.jl = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !501
  %i.jn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !530
  %i.jo = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.jo, %i.iz
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152, !llvm.loop !2418

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157: ; preds = %.lr.ph.i.i152, %middle.block475, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jq, ptr %i.b, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.jq, ptr %10, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %4
  store ptr %i.js, ptr %12, align 8, !tbaa !642, !alias.scope !2441
  store ptr %.0191.lcssa278, ptr %13, align 8, !tbaa !642, !alias.scope !2442
  store ptr %i.h, ptr %14, align 8, !tbaa !642, !alias.scope !2443
  store ptr %7, ptr %15, align 8, !tbaa !642, !alias.scope !2444
  store ptr %i.iz, ptr %16, align 8, !tbaa !642, !alias.scope !2445
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa277, i64 noundef 0, i64 noundef %.0195.lcssa277, i1 noundef zeroext true)
  %i.jt = load ptr, ptr %11, align 8, !tbaa !642
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.ju = load ptr, ptr %10, align 8, !tbaa !642  ; 2 uses
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !509 ; 3 uses
  %.not27.i = icmp eq ptr %i.jv, %i.ju
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, %bb.y
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.ju, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa279, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.ki, %bb.y ], [ %i.jt, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 3 uses
  %i.jw = icmp eq ptr %.0108.lcssa280, %.01929.i
  br i1 %i.jw, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jy, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 3 uses
  %i.jy = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !501
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !529
  %i.ka = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !501
  %i.kc = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !530
  %.not.i.i.i = icmp eq ptr %i.jv, %i.jx
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !26

bb.y:                                             ; preds = %.lr.ph.i158
  %i.kd = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 2 uses
  %i.ke = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 2 uses
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !501 ; 2 uses
  %i.kg = load i32, ptr %i.ke, align 4, !tbaa !501 ; 2 uses
  %i.kh = icmp slt i32 %i.kf, %i.kg               ; 3 uses
  %i.ki = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.kf, i32 %i.kg)
  %.01929..030.i = select i1 %i.kh, ptr %.01929.i, ptr %.030.i
  %..01929.i = select i1 %i.kh, ptr %i.ke, ptr %.01929.i
  %.030..i = select i1 %i.kh, ptr %.030.i, ptr %i.kd ; 2 uses
  store i32 %..i, ptr %i.ki, align 4, !tbaa !529
  %.sink.in.i = getelementptr inbounds i8, ptr %.01929..030.i, i64 -4
  %.sink.i159 = load i32, ptr %.sink.in.i, align 4, !tbaa !501
  %i.kj = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  store i32 %.sink.i159, ptr %i.kj, align 4, !tbaa !530
  %.not.i160 = icmp eq ptr %i.jv, %.030..i
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !31

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit: ; preds = %bb.y, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.d = add i64 %5, %4                           ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr %7, ptr %i.b, align 8, !tbaa !509
  %i.f = getelementptr [8 x i8], ptr %1, i64 %3   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr %i.f, ptr %i.c, align 8, !tbaa !509
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g ; 18 uses
  %.not216 = icmp eq i64 %i.d, 0
  br i1 %.not216, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp eq i64 %5, 0
  %i.j = select i1 %i.i, i64 0, i64 %4            ; 2 uses
  %i.k = add i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.d)
  %.idx208 = shl i64 %2, 3                        ; 5 uses
  %.not121 = icmp eq i64 %6, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 10 uses
  %i.m = shl i64 %3, 3                            ; 2 uses
  %i.n = shl i64 %2, 3
  %scevgep315 = getelementptr i8, ptr %7, i64 4   ; 5 uses
  %i.o = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep319 = getelementptr i8, ptr %1, i64 %i.o ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = getelementptr i8, ptr %1, i64 %i.o
  %i.s = add i64 %.idx208, -8                     ; 2 uses
  %i.t = lshr exact i64 %i.s, 3
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 296
  %bound0320 = icmp ult ptr %7, %scevgep
  %bound1321 = icmp ult ptr %scevgep315, %scevgep
  %found.conflict322 = and i1 %bound0320, %bound1321
  %bound0327 = icmp ult ptr %7, %i.h
  %bound1328 = icmp ult ptr %i.f, %scevgep
  %found.conflict329 = and i1 %bound0327, %bound1328
  %stride.check = icmp slt i64 %.idx208, 0
  %i.v = or i1 %found.conflict329, %stride.check
  %bound0331 = icmp ult ptr %7, %i.h
  %bound1332 = icmp ult ptr %scevgep319, %scevgep
  %found.conflict333 = and i1 %bound0331, %bound1332
  %invariant.op = or i1 %i.v, %found.conflict333
  %bound0358 = icmp ult ptr %scevgep315, %i.h
  %bound1359 = icmp ult ptr %i.f, %scevgep
  %found.conflict360 = and i1 %bound0358, %bound1359
  %bound0363 = icmp ult ptr %scevgep315, %i.h
  %bound1364 = icmp ult ptr %scevgep319, %scevgep
  %found.conflict365 = and i1 %bound0363, %bound1364
  %stride.check366 = icmp slt i64 %.idx208, 0
  %i.w = or i1 %found.conflict365, %stride.check366
  %invariant.op517 = or i1 %found.conflict360, %i.w
  %bound0378 = icmp ult ptr %i.f, %i.h
  %bound1379 = icmp ult ptr %scevgep319, %i.h
  %found.conflict380 = and i1 %bound0378, %bound1379
  %n.vec = and i64 %i.u, 4611686018427387902      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 3 uses
  %i.y = getelementptr i8, ptr %7, i64 %i.x       ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.z = phi ptr [ %7, %.lr.ph ], [ %i.eq, %bb.x ] ; 5 uses
  %i.aa = phi ptr [ %i.f, %.lr.ph ], [ %i.ay, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ey, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.j, %.lr.ph ], [ %i.ew, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.eu, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.et, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.x ] ; 4 uses
  %i.ab = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ac = mul i64 %i.n, %indvar                   ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.q, i64 %i.ac
  %scevgep317.a = getelementptr i8, ptr %i.r, i64 %i.ac
  %i.ad = icmp ult i64 %.0104226, %.0
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.as, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ar, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02226.i, %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae
  %i.ag = mul i64 %.027.i, %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !501 ; 2 uses
  %i.al = load i32, ptr %i.af, align 4, !tbaa !501 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp slt i32 %i.al, %i.ak
  br i1 %i.an, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !501
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !501
  %i.aq = icmp slt i32 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !34

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread24.i ] ; 7 uses
  %i.at = add i64 %.022.lcssa.i, 2
  %i.au = call i64 @llvm.umax.i64(i64 %.0, i64 %i.at) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.au, i64 %.0195217)
  %i.av = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.av, 3                        ; 2 uses
  %i.aw = getelementptr i8, ptr %i.aa, i64 %.idx  ; 13 uses
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %2 ; 6 uses
  %i.ay = getelementptr i8, ptr %i.aa, i64 %.idx208 ; 8 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !509 ; 10 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.z
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !501
  %i.bd = load i32, ptr %i.aw, align 4, !tbaa !501
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bf = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bg = icmp eq ptr %.0191218, %i.l
  br i1 %i.bg, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bh = trunc nuw i8 %.0108222 to i1
  br i1 %i.bh, label %bb.j, label %.thread272

.thread272:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !501
  %i.bj = load i32, ptr %.0191218, align 4, !tbaa !501
  %i.bk = icmp slt i32 %i.bi, %i.bj               ; 4 uses
  %i.bl = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bm = xor i1 %i.bk, %i.bl
  br i1 %i.bm, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bn = phi i1 [ true, %._crit_edge ], [ %i.bk, %bb.i ]
  br i1 %i.bb, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bo = add i64 %i.ab, -8
  %i.bp = sub i64 %i.bo, %i.ba                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check402 = icmp ult i64 %i.bp, 24
  br i1 %min.iters.check402, label %.lr.ph.i.i.preheader490, label %vector.memcheck393

vector.memcheck393:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep394.a = getelementptr i8, ptr %i.az, i64 8
  %i.bs = add i64 %i.ab, -8
  %i.bt = sub i64 %i.bs, %i.ba
  %i.bu = and i64 %i.bt, -8                       ; 2 uses
  %scevgep395.a = getelementptr i8, ptr %scevgep394.a, i64 %i.bu
  %scevgep396.a = getelementptr i8, ptr %.0114219, i64 8
  %scevgep397 = getelementptr i8, ptr %scevgep396.a, i64 %i.bu
  %bound0398 = icmp ult ptr %i.az, %scevgep397
  %bound1399 = icmp ult ptr %.0114219, %scevgep395.a
  %found.conflict400 = and i1 %bound0398, %bound1399
  br i1 %found.conflict400, label %.lr.ph.i.i.preheader490, label %vector.ph403

vector.ph403:                                     ; preds = %vector.memcheck393
  %n.vec404 = and i64 %i.br, 4611686018427387902  ; 3 uses
  %i.bv = shl i64 %n.vec404, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %.0114219, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.az, i64 %i.bv
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next417, %vector.body405 ] ; 2 uses
  %i.by = shl i64 %index406, 3                    ; 2 uses
  %next.gep407.a = getelementptr i8, ptr %.0114219, i64 %i.by ; 2 uses
  %next.gep408 = getelementptr i8, ptr %i.az, i64 %i.by ; 2 uses
  %wide.vec409 = load <4 x i32>, ptr %next.gep408, align 4, !tbaa !501, !alias.scope !2483, !noalias !2484
  %wide.vec412 = load <4 x i32>, ptr %next.gep407.a, align 4, !tbaa !501, !alias.scope !2484
  store <4 x i32> %wide.vec412, ptr %next.gep408, align 4, !tbaa !501, !alias.scope !2483, !noalias !2484
  store <4 x i32> %wide.vec409, ptr %next.gep407.a, align 4, !tbaa !501, !alias.scope !2484
  %index.next417 = add nuw i64 %index406, 2       ; 2 uses
  %i.bz = icmp eq i64 %index.next417, %n.vec404
  br i1 %i.bz, label %middle.block418, label %vector.body405, !llvm.loop !2449

middle.block418:                                  ; preds = %vector.body405
  %cmp.n419 = icmp eq i64 %i.br, %n.vec404
  br i1 %cmp.n419, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader490

.lr.ph.i.i.preheader490:                          ; preds = %vector.memcheck393, %.lr.ph.i.i.preheader, %middle.block418
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck393 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block418 ]
  %.079.i.i.ph = phi ptr [ %i.az, %vector.memcheck393 ], [ %i.az, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block418 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader490, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader490 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader490 ] ; 4 uses
  %i.ca = load i32, ptr %.079.i.i, align 4, !tbaa !501
  %i.cb = load i32, ptr %.010.i.i, align 4, !tbaa !501
  store i32 %i.cb, ptr %.079.i.i, align 4, !tbaa !501
  store i32 %i.ca, ptr %.010.i.i, align 4, !tbaa !501
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !501
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !501
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !501
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !501
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cg, %i.z
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2450

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block418, %bb.j
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader489, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ci = shl i64 %.022.lcssa.i, 3
  %i.cj = add i64 %i.ci, 8
  %i.ck = mul i64 %2, %i.cj
  %scevgep314 = getelementptr i8, ptr %scevgep313, i64 %i.ck ; 5 uses
  %scevgep318 = getelementptr i8, ptr %scevgep317.a, i64 %.idx ; 5 uses
  %bound0 = icmp ult ptr %7, %scevgep314
  %bound1 = icmp ult ptr %i.aw, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict322
  %bound0323 = icmp ult ptr %7, %i.ax
  %bound1324 = icmp ult ptr %scevgep318, %scevgep
  %found.conflict325 = and i1 %bound0323, %bound1324
  %conflict.rdx326 = or i1 %conflict.rdx, %found.conflict325
  %conflict.rdx335.reass = or i1 %conflict.rdx326, %invariant.op
  %bound0336 = icmp ult ptr %i.aw, %scevgep
  %bound1337 = icmp ult ptr %scevgep315, %scevgep314
  %found.conflict338 = and i1 %bound0336, %bound1337
  %conflict.rdx339 = or i1 %conflict.rdx335.reass, %found.conflict338
  %bound0340 = icmp ult ptr %i.aw, %i.ax
  %bound1341 = icmp ult ptr %scevgep318, %scevgep314
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx343 = or i1 %conflict.rdx339, %found.conflict342
  %bound0344 = icmp ult ptr %i.aw, %i.h
  %bound1345 = icmp ult ptr %i.f, %scevgep314
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx348 = or i1 %found.conflict346, %conflict.rdx343
  %bound0349 = icmp ult ptr %i.aw, %i.h
  %bound1350 = icmp ult ptr %scevgep319, %scevgep314
  %found.conflict351 = and i1 %bound0349, %bound1350
  %conflict.rdx353 = or i1 %found.conflict351, %conflict.rdx348
  %bound0354 = icmp ult ptr %scevgep315, %i.ax
  %bound1355 = icmp ult ptr %scevgep318, %scevgep
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %conflict.rdx353, %found.conflict356
  %conflict.rdx367.reass = or i1 %conflict.rdx357, %invariant.op517
  %bound0368 = icmp ult ptr %scevgep318, %i.h
  %bound1369 = icmp ult ptr %i.f, %i.ax
  %found.conflict370 = and i1 %bound0368, %bound1369
  %conflict.rdx372 = or i1 %found.conflict370, %conflict.rdx367.reass
  %bound0373 = icmp ult ptr %scevgep318, %i.h
  %bound1374 = icmp ult ptr %scevgep319, %i.ax
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx377 = or i1 %found.conflict375, %conflict.rdx372
  %conflict.rdx383 = or i1 %found.conflict380, %conflict.rdx377
  br i1 %conflict.rdx383, label %.lr.ph.i125.preheader489, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cl = getelementptr i8, ptr %i.aw, i64 %i.x
  %i.cm = getelementptr i8, ptr %i.aa, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cn ; 2 uses
  %next.gep384.a = getelementptr i8, ptr %i.aw, i64 %i.cn ; 2 uses
  %next.gep385 = getelementptr i8, ptr %i.aa, i64 %i.cn ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !alias.scope !2485, !noalias !2486
  %wide.vec = load <4 x i32>, ptr %next.gep384.a, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %wide.vec387 = load <4 x i32>, ptr %next.gep385, align 4, !tbaa !501
  store <4 x i32> %wide.vec387, ptr %next.gep384.a, align 4, !tbaa !501
  store <2 x i64> %wide.load, ptr %next.gep385, align 4, !alias.scope !2487, !noalias !2488
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !2458

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader489

.lr.ph.i125.preheader489:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.y, %middle.block ]
  %.02032.i.ph = phi ptr [ %i.aw, %vector.memcheck ], [ %i.aw, %.lr.ph.i125.preheader ], [ %i.cl, %middle.block ]
  %.02131.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i125.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.preheader489, %.lr.ph.i125
  %.033.i = phi ptr [ %i.cr, %.lr.ph.i125 ], [ %.033.i.ph, %.lr.ph.i125.preheader489 ] ; 4 uses
  %.02032.i = phi ptr [ %i.cq, %.lr.ph.i125 ], [ %.02032.i.ph, %.lr.ph.i125.preheader489 ] ; 4 uses
  %.02131.i = phi ptr [ %i.cp, %.lr.ph.i125 ], [ %.02131.i.ph, %.lr.ph.i125.preheader489 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.033.i, i64 8 ; 2 uses
  %i.cs = load i64, ptr %.033.i, align 4
  %i.ct = load i32, ptr %.02032.i, align 4, !tbaa !501
  store i32 %i.ct, ptr %.033.i, align 4, !tbaa !529
  %i.cu = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !501
  %i.cw = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !530
  %i.cx = load i32, ptr %.02131.i, align 4, !tbaa !501
  store i32 %i.cx, ptr %.02032.i, align 4, !tbaa !529
  %i.cy = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !501
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !530
  store i64 %i.cs, ptr %.02131.i, align 4
  %.not28.i = icmp eq ptr %i.cp, %i.ay
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !2459

._crit_edge.i:                                    ; preds = %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.y, %middle.block ], [ %i.cr, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.da = load <2 x i32>, ptr %i.bf, align 4, !tbaa !501
  %i.db = load <2 x i32>, ptr %.0106223, align 4, !tbaa !501
  store <2 x i32> %i.db, ptr %i.bf, align 4, !tbaa !501
  store <2 x i32> %i.da, ptr %.0106223, align 4, !tbaa !501
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dc = icmp eq ptr %i.bf, %.0191218
  br i1 %i.dc, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.dd, ptr %i.bf, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !509
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.de = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ay, ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.p:                                             ; preds = %.thread272, %bb.n
  %i.df = phi i1 [ true, %.thread272 ], [ %i.bk, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !640
  %i.dg = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ay, ptr noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dh = phi i1 [ %i.bk, %bb.o ], [ %i.df, %bb.p ]
  %i.di = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.dj = phi ptr [ %i.de, %bb.o ], [ %i.dg, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !509 ; 4 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl                ; 2 uses
  br i1 %i.dm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  %i.dn = load ptr, ptr %i.c, align 8, !tbaa !509 ; 4 uses
  %i.do = ptrtoint ptr %i.ay to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ds ; 2 uses
  %.not.i126 = icmp eq ptr %i.dn, %i.dt
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.dn, %i.ay
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.preheader.i127, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.dw, %.lr.ph.i129 ], [ %7, %.preheader.i127 ] ; 4 uses
  %.02032.i131 = phi ptr [ %i.dv, %.lr.ph.i129 ], [ %i.dt, %.preheader.i127 ] ; 4 uses
  %.02131.i132 = phi ptr [ %i.du, %.lr.ph.i129 ], [ %i.dn, %.preheader.i127 ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8 ; 2 uses
  %i.dx = load i64, ptr %.033.i130, align 4
  %i.dy = load i32, ptr %.02032.i131, align 4, !tbaa !501
  store i32 %i.dy, ptr %.033.i130, align 4, !tbaa !529
  %i.dz = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !501
  %i.eb = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !530
  %i.ec = load i32, ptr %.02131.i132, align 4, !tbaa !501
  store i32 %i.ec, ptr %.02032.i131, align 4, !tbaa !529
  %i.ed = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !501
  store i32 %i.ee, ptr %i.dz, align 4, !tbaa !530
  store i64 %i.dx, ptr %.02131.i132, align 4
  %.not28.i133 = icmp eq ptr %i.du, %i.ay
  br i1 %.not28.i133, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !2460

._crit_edge.i134:                                 ; preds = %.lr.ph.i129, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.dw, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.ef = load <2 x i32>, ptr %i.bf, align 4, !tbaa !501
  %i.eg = load <2 x i32>, ptr %.0106223, align 4, !tbaa !501
  store <2 x i32> %i.eg, ptr %i.bf, align 4, !tbaa !501
  store <2 x i32> %i.ef, ptr %.0106223, align 4, !tbaa !501
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.eh = icmp eq ptr %i.bf, %.0191218
  br i1 %i.eh, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ei = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.ei, ptr %i.bf, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.b, align 8, !tbaa !509
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ej = load <2 x i32>, ptr %i.bf, align 4, !tbaa !501
  %i.ek = load <2 x i32>, ptr %.0106223, align 4, !tbaa !501
  store <2 x i32> %i.ek, ptr %i.bf, align 4, !tbaa !501
  store <2 x i32> %i.ej, ptr %.0106223, align 4, !tbaa !501
  %i.el = icmp eq ptr %i.bf, %.0191218
  br i1 %i.el, label %_ZN5boost7movelib15detail_adaptive10update_keyIPSt4pairIiiEEEvT_S6_RS6_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = icmp eq ptr %.0191218, %.0106223
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_S5_S5_SD_NS0_7swap_opEEET3_T_SG_T0_T1_RT2_SJ_SF_NS0_9iter_sizeISI_E4typeESN_SN_SN_T4_bT5_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 8 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 6 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !501 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !501 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.ay = load i64, ptr %.030.i.i, align 4
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !529
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !530
  %i.bc = load i32, ptr %.026.i.i, align 4, !tbaa !501
  store i32 %i.bc, ptr %.025.i.i, align 4, !tbaa !529
  %i.bd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !501
  store i32 %i.be, ptr %i.az, align 4, !tbaa !530
  store i64 %i.ay, ptr %.026.i.i, align 4
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 8 ; 3 uses
  %i.bg = load i32, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.au, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.bg, ptr %.028.ph.i.i, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !501
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !501
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !501
  %.not42.i.i = icmp eq ptr %i.bf, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !56

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038125, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.bw, %bb.k ], [ %i.as, %bb.i ] ; 5 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083122, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aq, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 8 uses
  %.026.i21.i = phi ptr [ %i.bn, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 6 uses
  %.025.i22.i = phi ptr [ %i.bo, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.bl = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !501 ; 2 uses
  %i.bm = load i32, ptr %.025.i22.i, align 4, !tbaa !501 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.bl, %i.bm
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.030.i20.i, align 4
  store i32 %i.bm, ptr %.030.i20.i, align 4, !tbaa !529
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !501
  %i.bs = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !530
  %i.bt = load i32, ptr %.026.i21.i, align 4, !tbaa !501
  store i32 %i.bt, ptr %.025.i22.i, align 4, !tbaa !529
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !501
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !530
  store i64 %i.bp, ptr %.026.i21.i, align 4
  %.not44.i.i = icmp eq ptr %i.bn, %i.ao
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !58

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 8 ; 3 uses
  %i.bx = load i32, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bl, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.028.ph.i17.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %.not43.i32.i = icmp eq ptr %i.bw, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !58

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.cf, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.cn, %bb.o ], [ %i.as, %bb.m ] ; 5 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.cf, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ci, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 6 uses
  %i.cc = load i32, ptr %.0.i.i, align 4, !tbaa !501 ; 2 uses
  %i.cd = load i32, ptr %.021.i.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 4 uses
  %i.cg = load i32, ptr %.024.i.i, align 4, !tbaa !501 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  store i32 %i.cc, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.0.i.i, align 4, !tbaa !501
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !501
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !501
  %i.cm = icmp eq ptr %i.ci, %i.ao
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 8 ; 3 uses
  store i32 %i.cd, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.021.i.i.ph, align 4, !tbaa !501
  %i.co = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !501
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !501
  %i.cr = icmp eq ptr %i.cn, %4
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.cu, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.dc, %bb.r ], [ %i.as, %bb.p ] ; 5 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.cu, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %.0.i16.i = phi ptr [ %i.cx, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 6 uses
  %i.cs = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ct = load i32, ptr %.0.i16.i, align 4, !tbaa !501 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.cs, %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 8 ; 4 uses
  %i.cv = load i32, ptr %.024.i14.i, align 4, !tbaa !501 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 8 ; 2 uses
  store i32 %i.ct, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.0.i16.i, align 4, !tbaa !501
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !501
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !501
  %i.db = icmp eq ptr %i.cx, %i.ao
  br i1 %i.db, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !59

bb.r:                                             ; preds = %.preheader.i13.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 8 ; 3 uses
  store i32 %i.cs, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.021.i15.i.ph, align 4, !tbaa !501
  %i.dd = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !501
  store i32 %i.df, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !501
  %i.dg = icmp eq ptr %i.dc, %4
  br i1 %i.dg, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.dc, %bb.r ], [ %i.cn, %bb.o ], [ %i.as, %bb.p ], [ %i.as, %bb.m ], [ %i.bf, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.bw, %bb.k ]
  %.184.ph = phi ptr [ %i.ao, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ao, %bb.n ], [ %i.ao, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ax, %.split.i.i ], [ %i.bo, %.split.i24.i ], [ %i.aq, %bb.q ], [ %i.aq, %bb.n ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aq, %bb.o ], [ %i.aq, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.cu, %bb.q ], [ %i.cf, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.cf, %bb.o ], [ %i.cu, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !509
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 33 uses
  %.080 = phi ptr [ %i.aq, %bb.i ], [ %i.aq, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 24 uses
  %i.dh = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 20 uses
  %.184294 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080257 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.di = icmp eq ptr %.184, %i.dh
  br i1 %i.di, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ar
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.dj = shl i64 %.022.lcssa.i, 3
  %i.dk = add i64 %i.dj, 8
  %i.dl = mul i64 %6, %i.dk
  %i.dm = add i64 %i.t, %i.dl
  %i.dn = sub i64 %i.dm, %.080257                 ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 136
  br i1 %min.iters.check, label %.lr.ph.i48.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %scevgep = getelementptr i8, ptr %.080, i64 4
  %i.dq = shl i64 %.022.lcssa.i, 3
  %i.dr = add i64 %i.dq, 8
  %i.ds = mul i64 %6, %i.dr
  %i.dt = add i64 %i.v, %i.ds
  %i.du = sub i64 %i.dt, %.080257
  %i.dv = and i64 %i.du, -8                       ; 4 uses
  %scevgep258 = getelementptr i8, ptr %scevgep, i64 %i.dv ; 3 uses
  %scevgep259 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %scevgep260 = getelementptr i8, ptr %scevgep259, i64 %i.dv ; 3 uses
  %scevgep261 = getelementptr i8, ptr %.080, i64 4 ; 3 uses
  %scevgep262 = getelementptr i8, ptr %.080, i64 8
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.dv ; 3 uses
  %scevgep264 = getelementptr i8, ptr %.184, i64 8
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.dv ; 3 uses
  %bound0 = icmp ult ptr %.080, %scevgep260
  %bound1 = icmp ult ptr %.184, %scevgep258
  %found.conflict = and i1 %bound0, %bound1
  %bound0266 = icmp ult ptr %.080, %scevgep263
  %bound1267 = icmp ult ptr %scevgep261, %scevgep258
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx = or i1 %found.conflict, %found.conflict268
  %bound0269 = icmp ult ptr %.080, %scevgep265
  %bound1270 = icmp ult ptr %scevgep259, %scevgep258
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx, %found.conflict271
  %bound0273 = icmp ult ptr %.184, %scevgep263
  %bound1274 = icmp ult ptr %scevgep261, %scevgep260
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  %bound0277 = icmp ult ptr %.184, %scevgep265
  %bound1278 = icmp ult ptr %scevgep259, %scevgep260
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  %bound0281 = icmp ult ptr %scevgep261, %scevgep265
  %bound1282 = icmp ult ptr %scevgep259, %scevgep263
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  br i1 %conflict.rdx284, label %.lr.ph.i48.preheader441, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387902     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %.080, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.dz ; 2 uses
  %next.gep285 = getelementptr i8, ptr %.080, i64 %i.dz ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !501
  %wide.vec287 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec287, ptr %next.gep285, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !2995

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader441

.lr.ph.i48.preheader441:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.dx, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader441, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ei, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader441 ] ; 4 uses
  %.079.i = phi ptr [ %i.eh, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader441 ] ; 4 uses
  %i.eb = load i32, ptr %.079.i, align 4, !tbaa !501
  %i.ec = load i32, ptr %.010.i, align 4, !tbaa !501
  store i32 %i.ec, ptr %.079.i, align 4, !tbaa !501
  store i32 %i.eb, ptr %.010.i, align 4, !tbaa !501
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !501
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !501
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !501
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !501
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.eh, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48, !llvm.loop !2996

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ao           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.ej = sub i64 %i.l, %.184294                  ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.ej, 216
  br i1 %min.iters.check418, label %.lr.ph.i49.preheader444, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph.i49.preheader
  %scevgep347 = getelementptr i8, ptr %i.dh, i64 8
  %i.em = sub i64 %i.n, %.184294
  %i.en = and i64 %i.em, -8                       ; 4 uses
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.en ; 6 uses
  %scevgep349 = getelementptr i8, ptr %.080, i64 4 ; 6 uses
  %scevgep351.a = getelementptr i8, ptr %scevgep349, i64 %i.en ; 5 uses
  %scevgep352.a = getelementptr i8, ptr %i.dh, i64 4 ; 5 uses
  %scevgep353.a = getelementptr i8, ptr %.080, i64 8
  %scevgep354.a = getelementptr i8, ptr %scevgep353.a, i64 %i.en ; 5 uses
  %scevgep355.a = getelementptr i8, ptr %.184, i64 8
  %scevgep356.a = getelementptr i8, ptr %scevgep355.a, i64 %i.en ; 10 uses
  %scevgep357 = getelementptr i8, ptr %.184, i64 4 ; 5 uses
  %11 = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x ptr> poison, ptr %scevgep351.a, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %scevgep348, i64 1 ; 2 uses
  %15 = insertelement <4 x ptr> %14, ptr %scevgep354.a, i64 2
  %16 = insertelement <4 x ptr> %15, ptr %scevgep356.a, i64 3
  %17 = icmp ult <4 x ptr> %12, %16
  %18 = insertelement <4 x ptr> poison, ptr %.080, i64 0
  %19 = insertelement <4 x ptr> %18, ptr %scevgep352.a, i64 1
  %20 = insertelement <4 x ptr> %19, ptr %scevgep349, i64 2
  %21 = insertelement <4 x ptr> %20, ptr %.184, i64 3
  %22 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %23 = icmp ult <4 x ptr> %21, %22
  %24 = and <4 x i1> %17, %23
  %bound0373 = icmp ult ptr %i.dh, %scevgep356.a
  %bound1374 = icmp ult ptr %scevgep357, %scevgep348
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0377 = icmp ult ptr %.080, %scevgep348
  %bound1378 = icmp ult ptr %scevgep352.a, %scevgep351.a
  %found.conflict379 = and i1 %bound0377, %bound1378
  %bound0380 = icmp ult ptr %.080, %scevgep354.a
  %bound0381 = icmp ult ptr %scevgep349, %scevgep351.a
  %found.conflict382 = and i1 %bound0380, %bound0381
  %bound1382 = icmp ult ptr %.080, %scevgep356.a
  %bound1385 = icmp ult ptr %.184, %scevgep351.a
  %found.conflict386 = and i1 %bound1382, %bound1385
  %bound0385 = icmp ult ptr %.080, %scevgep356.a
  %bound1386 = icmp ult ptr %scevgep357, %scevgep351.a
  %found.conflict387 = and i1 %bound0385, %bound1386
  %bound0392 = icmp ult ptr %scevgep352.a, %scevgep354.a
  %bound0389 = icmp ult ptr %scevgep349, %scevgep348
  %found.conflict394 = and i1 %bound0392, %bound0389
  %bound1390 = icmp ult ptr %scevgep352.a, %scevgep356.a
  %bound1397 = icmp ult ptr %.184, %scevgep348
  %found.conflict398 = and i1 %bound1390, %bound1397
  %bound0393 = icmp ult ptr %scevgep352.a, %scevgep356.a
  %bound1394 = icmp ult ptr %scevgep357, %scevgep348
  %found.conflict395 = and i1 %bound0393, %bound1394
  %bound0404 = icmp ult ptr %scevgep349, %scevgep356.a
  %bound0397 = icmp ult ptr %.184, %scevgep354.a
  %found.conflict406 = and i1 %bound0404, %bound0397
  %bound1398 = icmp ult ptr %scevgep349, %scevgep356.a
  %bound1409 = icmp ult ptr %scevgep357, %scevgep354.a
  %found.conflict410 = and i1 %bound1398, %bound1409
  %bound0401 = icmp ult ptr %.184, %scevgep356.a
  %bound1402 = icmp ult ptr %scevgep357, %scevgep356.a
  %found.conflict403 = and i1 %bound0401, %bound1402
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0
  %op.rdx = or i1 %26, %found.conflict375
  %op.rdx439 = or i1 %found.conflict379, %found.conflict382
  %conflict.rdx408 = or i1 %found.conflict386, %found.conflict387
  %op.rdx441 = or i1 %found.conflict394, %found.conflict398
  %op.rdx442 = or i1 %found.conflict395, %found.conflict406
  %op.rdx443 = or i1 %found.conflict410, %found.conflict403
  %conflict.rdx412 = or i1 %op.rdx, %op.rdx439
  %op.rdx445 = or i1 %conflict.rdx408, %op.rdx441
  %op.rdx446 = or i1 %op.rdx442, %op.rdx443
  %op.rdx447 = or i1 %conflict.rdx412, %op.rdx445
  %conflict.rdx416 = or i1 %op.rdx447, %op.rdx446
  br i1 %conflict.rdx416, label %.lr.ph.i49.preheader444, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck346
  %n.vec420 = and i64 %i.el, 4611686018427387902  ; 3 uses
  %i.eo = shl i64 %n.vec420, 3                    ; 3 uses
  %i.ep = getelementptr i8, ptr %i.dh, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %.080, i64 %i.eo
  %i.er = getelementptr i8, ptr %.184, i64 %i.eo
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph419
  %index422 = phi i64 [ 0, %vector.ph419 ], [ %index.next434, %vector.body421 ] ; 2 uses
  %i.es = shl i64 %index422, 3                    ; 3 uses
  %next.gep423.a = getelementptr i8, ptr %i.dh, i64 %i.es ; 2 uses
  %next.gep424.a = getelementptr i8, ptr %.080, i64 %i.es ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.184, i64 %i.es ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep423.a, align 4, !alias.scope !3009, !noalias !3010
  %wide.vec426 = load <4 x i32>, ptr %next.gep424.a, align 4, !tbaa !501
  store <4 x i32> %wide.vec426, ptr %next.gep423.a, align 4, !tbaa !501
  %wide.vec430 = load <4 x i32>, ptr %next.gep425, align 4, !tbaa !501
  store <4 x i32> %wide.vec430, ptr %next.gep424.a, align 4, !tbaa !501
  store <2 x i64> %wide.load, ptr %next.gep425, align 4, !alias.scope !3011, !noalias !3012
  %index.next434 = add nuw i64 %index422, 2       ; 2 uses
  %i.et = icmp eq i64 %index.next434, %n.vec420
  br i1 %i.et, label %middle.block435, label %vector.body421, !llvm.loop !3004

middle.block435:                                  ; preds = %vector.body421
  %cmp.n436 = icmp eq i64 %i.el, %n.vec420
  br i1 %cmp.n436, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader444

.lr.ph.i49.preheader444:                          ; preds = %vector.memcheck346, %.lr.ph.i49.preheader, %middle.block435
  %.012.i.ph = phi ptr [ %i.dh, %vector.memcheck346 ], [ %i.dh, %.lr.ph.i49.preheader ], [ %i.ep, %middle.block435 ] ; 5 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck346 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.eq, %middle.block435 ] ; 5 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck346 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.er, %middle.block435 ] ; 6 uses
  %.0810.i.ph497 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.eu = sub i64 %i.l, %.0810.i.ph497            ; 2 uses
  %i.ev = and i64 %i.eu, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ev, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i49.prol, label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader444
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 8 ; 2 uses
  %i.ez = load i64, ptr %.012.i.ph, align 4
  %i.fa = load i32, ptr %.0711.i.ph, align 4, !tbaa !501
  store i32 %i.fa, ptr %.012.i.ph, align 4, !tbaa !529
  %i.fb = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !501
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !530
  %i.fe = load i32, ptr %.0810.i.ph, align 4, !tbaa !501
  store i32 %i.fe, ptr %.0711.i.ph, align 4, !tbaa !529
  %i.ff = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !501
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !530
  store i64 %i.ez, ptr %.0810.i.ph, align 4
  br label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader444
  %.lcssa494.unr = phi ptr [ poison, %.lr.ph.i49.preheader444 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ex, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ew, %.lr.ph.i49.prol ]
  %i.fh = icmp ult i64 %i.eu, 8
  br i1 %i.fh, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.fv, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.fu, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.ft, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.fl = load i64, ptr %.012.i, align 4
  %i.fm = load i32, ptr %.0711.i, align 4, !tbaa !501
  store i32 %i.fm, ptr %.012.i, align 4, !tbaa !529
  %i.fn = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !501
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !530
  %i.fq = load i32, ptr %.0810.i, align 4, !tbaa !501
  store i32 %i.fq, ptr %.0711.i, align 4, !tbaa !529
  %i.fr = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !501
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !530
  store i64 %i.fl, ptr %.0810.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.fw = load i64, ptr %i.fk, align 4
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !501
  store i32 %i.fx, ptr %i.fk, align 4, !tbaa !529
  %i.fy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !501
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !530
  %i.gb = load i32, ptr %i.fi, align 4, !tbaa !501
  store i32 %i.gb, ptr %i.fj, align 4, !tbaa !529
  %i.gc = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !501
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !530
  store i64 %i.fw, ptr %i.fi, align 4
  %.not.i50.1 = icmp eq ptr %i.ft, %i.ao
  br i1 %.not.i50.1, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49, !llvm.loop !3005

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ge = sub i64 %i.p, %.184294                  ; 2 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check326 = icmp ult i64 %i.ge, 104
  br i1 %min.iters.check326, label %.lr.ph.i.i.preheader442, label %vector.memcheck292

vector.memcheck292:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep293 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %i.gh = sub i64 %i.r, %.184294
  %i.gi = and i64 %i.gh, -8                       ; 4 uses
  %scevgep295 = getelementptr i8, ptr %scevgep293, i64 %i.gi ; 3 uses
  %scevgep296 = getelementptr i8, ptr %i.dh, i64 4 ; 4 uses
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.gi ; 3 uses
  %scevgep298 = getelementptr i8, ptr %.184, i64 8
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.gi ; 3 uses
  %scevgep300 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.gi ; 3 uses
  %bound0302 = icmp ult ptr %.184, %scevgep297
  %bound1303 = icmp ult ptr %i.dh, %scevgep295
  %found.conflict304 = and i1 %bound0302, %bound1303
  %bound0305 = icmp ult ptr %.184, %scevgep299
  %bound1306 = icmp ult ptr %scevgep293, %scevgep295
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %found.conflict304, %found.conflict307
  %bound0309 = icmp ult ptr %.184, %scevgep301
  %bound1310 = icmp ult ptr %scevgep296, %scevgep295
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  %bound0313 = icmp ult ptr %i.dh, %scevgep299
  %bound1314 = icmp ult ptr %scevgep293, %scevgep297
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx316 = or i1 %conflict.rdx312, %found.conflict315
  %bound0317 = icmp ult ptr %i.dh, %scevgep301
  %bound1318 = icmp ult ptr %scevgep296, %scevgep297
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx316, %found.conflict319
  %bound0321 = icmp ult ptr %scevgep293, %scevgep301
  %bound1322 = icmp ult ptr %scevgep296, %scevgep299
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %.lr.ph.i.i.preheader442, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck292
  %n.vec328 = and i64 %i.gg, 4611686018427387902  ; 3 uses
  %i.gj = shl i64 %n.vec328, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.dh, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %.184, i64 %i.gj
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next341, %vector.body329 ] ; 2 uses
  %i.gm = shl i64 %index330, 3                    ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.dh, i64 %i.gm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %.184, i64 %i.gm ; 2 uses
  %wide.vec333 = load <4 x i32>, ptr %next.gep332, align 4, !tbaa !501
  %wide.vec336 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !501
  store <4 x i32> %wide.vec336, ptr %next.gep332, align 4, !tbaa !501
  store <4 x i32> %wide.vec333, ptr %next.gep331, align 4, !tbaa !501
  %index.next341 = add nuw i64 %index330, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next341, %n.vec328
  br i1 %i.gn, label %middle.block342, label %vector.body329, !llvm.loop !3006

middle.block342:                                  ; preds = %vector.body329
  %cmp.n343 = icmp eq i64 %i.gg, %n.vec328
  br i1 %cmp.n343, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader442

.lr.ph.i.i.preheader442:                          ; preds = %vector.memcheck292, %.lr.ph.i.i.preheader, %middle.block342
  %.010.i.i.ph = phi ptr [ %i.dh, %vector.memcheck292 ], [ %i.dh, %.lr.ph.i.i.preheader ], [ %i.gk, %middle.block342 ] ; 5 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck292 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.gl, %middle.block342 ] ; 6 uses
  %.079.i.i.ph498 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.go = sub i64 %i.l, %.079.i.i.ph498           ; 2 uses
  %i.gp = and i64 %i.go, 8
  %lcmp.mod500.not.not = icmp eq i64 %i.gp, 0
  br i1 %lcmp.mod500.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader442
  %i.gq = load i32, ptr %.079.i.i.ph, align 4, !tbaa !501
  %i.gr = load i32, ptr %.010.i.i.ph, align 4, !tbaa !501
  store i32 %i.gr, ptr %.079.i.i.ph, align 4, !tbaa !501
  store i32 %i.gq, ptr %.010.i.i.ph, align 4, !tbaa !501
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !501
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !501
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !501
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !501
  %i.gw = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 8 ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 8 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 6 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !501 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !501 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.ay = load i64, ptr %.030.i.i, align 4
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !529
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !530
  %i.bc = load i32, ptr %.026.i.i, align 4, !tbaa !501
  store i32 %i.bc, ptr %.025.i.i, align 4, !tbaa !529
  %i.bd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !501
  store i32 %i.be, ptr %i.az, align 4, !tbaa !530
  store i64 %i.ay, ptr %.026.i.i, align 4
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 8 ; 3 uses
  %i.bg = load i32, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.au, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.bg, ptr %.028.ph.i.i, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !501
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !501
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !501
  %.not42.i.i = icmp eq ptr %i.bf, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !56

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038124, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.bw, %bb.k ], [ %i.as, %bb.i ] ; 5 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083121, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aq, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 8 uses
  %.026.i21.i = phi ptr [ %i.bn, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 6 uses
  %.025.i22.i = phi ptr [ %i.bo, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.bl = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !501 ; 2 uses
  %i.bm = load i32, ptr %.025.i22.i, align 4, !tbaa !501 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.bl, %i.bm
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.030.i20.i, align 4
  store i32 %i.bm, ptr %.030.i20.i, align 4, !tbaa !529
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !501
  %i.bs = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !530
  %i.bt = load i32, ptr %.026.i21.i, align 4, !tbaa !501
  store i32 %i.bt, ptr %.025.i22.i, align 4, !tbaa !529
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !501
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !530
  store i64 %i.bp, ptr %.026.i21.i, align 4
  %.not44.i.i = icmp eq ptr %i.bn, %i.ao
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !58

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 8 ; 3 uses
  %i.bx = load i32, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bl, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.028.ph.i17.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %.not43.i32.i = icmp eq ptr %i.bw, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !58

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.cf, %bb.o ], [ %.038124, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.cn, %bb.o ], [ %i.as, %bb.m ] ; 5 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083121, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.cf, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ci, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 6 uses
  %i.cc = load i32, ptr %.0.i.i, align 4, !tbaa !501 ; 2 uses
  %i.cd = load i32, ptr %.021.i.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 4 uses
  %i.cg = load i32, ptr %.024.i.i, align 4, !tbaa !501 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  store i32 %i.cc, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.0.i.i, align 4, !tbaa !501
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !501
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !501
  %i.cm = icmp eq ptr %i.ci, %i.ao
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 8 ; 3 uses
  store i32 %i.cd, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.021.i.i.ph, align 4, !tbaa !501
  %i.co = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !501
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !501
  %i.cr = icmp eq ptr %i.cn, %4
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.cu, %bb.r ], [ %.038124, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.dc, %bb.r ], [ %i.as, %bb.p ] ; 5 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083121, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.cu, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %.0.i16.i = phi ptr [ %i.cx, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 6 uses
  %i.cs = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ct = load i32, ptr %.0.i16.i, align 4, !tbaa !501 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.cs, %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 8 ; 4 uses
  %i.cv = load i32, ptr %.024.i14.i, align 4, !tbaa !501 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 8 ; 2 uses
  store i32 %i.ct, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.0.i16.i, align 4, !tbaa !501
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !501
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !501
  %i.db = icmp eq ptr %i.cx, %i.ao
  br i1 %i.db, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !59

bb.r:                                             ; preds = %.preheader.i13.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 8 ; 3 uses
  store i32 %i.cs, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.021.i15.i.ph, align 4, !tbaa !501
  %i.dd = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !501
  store i32 %i.df, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !501
  %i.dg = icmp eq ptr %i.dc, %4
  br i1 %i.dg, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.dc, %bb.r ], [ %i.cn, %bb.o ], [ %i.as, %bb.p ], [ %i.as, %bb.m ], [ %i.bf, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.bw, %bb.k ]
  %.184.ph = phi ptr [ %i.ao, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083121, %bb.p ], [ %.083121, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ao, %bb.n ], [ %i.ao, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ax, %.split.i.i ], [ %i.bo, %.split.i24.i ], [ %i.aq, %bb.q ], [ %i.aq, %bb.n ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aq, %bb.o ], [ %i.aq, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.cu, %bb.q ], [ %i.cf, %bb.n ], [ %.038124, %bb.p ], [ %.038124, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.cf, %bb.o ], [ %i.cu, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !509
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083121, %bb.i ], [ %.083121, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 33 uses
  %.080 = phi ptr [ %i.aq, %bb.i ], [ %i.aq, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 24 uses
  %i.dh = phi ptr [ %.038124, %bb.i ], [ %.038124, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 20 uses
  %.184293 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080256 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.di = icmp eq ptr %.184, %i.dh
  br i1 %i.di, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ar
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.dj = shl i64 %.022.lcssa.i, 3
  %i.dk = add i64 %i.dj, 8
  %i.dl = mul i64 %6, %i.dk
  %i.dm = add i64 %i.t, %i.dl
  %i.dn = sub i64 %i.dm, %.080256                 ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 136
  br i1 %min.iters.check, label %.lr.ph.i48.preheader440, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %scevgep = getelementptr i8, ptr %.080, i64 4
  %i.dq = shl i64 %.022.lcssa.i, 3
  %i.dr = add i64 %i.dq, 8
  %i.ds = mul i64 %6, %i.dr
  %i.dt = add i64 %i.v, %i.ds
  %i.du = sub i64 %i.dt, %.080256
  %i.dv = and i64 %i.du, -8                       ; 4 uses
  %scevgep257 = getelementptr i8, ptr %scevgep, i64 %i.dv ; 3 uses
  %scevgep258 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.dv ; 3 uses
  %scevgep260 = getelementptr i8, ptr %.080, i64 4 ; 3 uses
  %scevgep261 = getelementptr i8, ptr %.080, i64 8
  %scevgep262 = getelementptr i8, ptr %scevgep261, i64 %i.dv ; 3 uses
  %scevgep263 = getelementptr i8, ptr %.184, i64 8
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.dv ; 3 uses
  %bound0 = icmp ult ptr %.080, %scevgep259
  %bound1 = icmp ult ptr %.184, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  %bound0265 = icmp ult ptr %.080, %scevgep262
  %bound1266 = icmp ult ptr %scevgep260, %scevgep257
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx = or i1 %found.conflict, %found.conflict267
  %bound0268 = icmp ult ptr %.080, %scevgep264
  %bound1269 = icmp ult ptr %scevgep258, %scevgep257
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx, %found.conflict270
  %bound0272 = icmp ult ptr %.184, %scevgep262
  %bound1273 = icmp ult ptr %scevgep260, %scevgep259
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx275 = or i1 %conflict.rdx271, %found.conflict274
  %bound0276 = icmp ult ptr %.184, %scevgep264
  %bound1277 = icmp ult ptr %scevgep258, %scevgep259
  %found.conflict278 = and i1 %bound0276, %bound1277
  %conflict.rdx279 = or i1 %conflict.rdx275, %found.conflict278
  %bound0280 = icmp ult ptr %scevgep260, %scevgep264
  %bound1281 = icmp ult ptr %scevgep258, %scevgep262
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx279, %found.conflict282
  br i1 %conflict.rdx283, label %.lr.ph.i48.preheader440, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387902     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %.080, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.dz ; 2 uses
  %next.gep284 = getelementptr i8, ptr %.080, i64 %i.dz ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep284, align 4, !tbaa !501
  %wide.vec286 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec286, ptr %next.gep284, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !3310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader440

.lr.ph.i48.preheader440:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.dx, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader440, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ei, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader440 ] ; 4 uses
  %.079.i = phi ptr [ %i.eh, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader440 ] ; 4 uses
  %i.eb = load i32, ptr %.079.i, align 4, !tbaa !501
  %i.ec = load i32, ptr %.010.i, align 4, !tbaa !501
  store i32 %i.ec, ptr %.079.i, align 4, !tbaa !501
  store i32 %i.eb, ptr %.010.i, align 4, !tbaa !501
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !501
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !501
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !501
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !501
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.eh, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48, !llvm.loop !3311

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ao           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.ej = sub i64 %i.l, %.184293                  ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check417 = icmp ult i64 %i.ej, 216
  br i1 %min.iters.check417, label %.lr.ph.i49.preheader443, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph.i49.preheader
  %scevgep346 = getelementptr i8, ptr %i.dh, i64 8
  %i.em = sub i64 %i.n, %.184293
  %i.en = and i64 %i.em, -8                       ; 4 uses
  %scevgep347 = getelementptr i8, ptr %scevgep346, i64 %i.en ; 6 uses
  %scevgep348 = getelementptr i8, ptr %.080, i64 4 ; 6 uses
  %scevgep350.a = getelementptr i8, ptr %scevgep348, i64 %i.en ; 5 uses
  %scevgep351.a = getelementptr i8, ptr %i.dh, i64 4 ; 5 uses
  %scevgep352.a = getelementptr i8, ptr %.080, i64 8
  %scevgep353.a = getelementptr i8, ptr %scevgep352.a, i64 %i.en ; 5 uses
  %scevgep354.a = getelementptr i8, ptr %.184, i64 8
  %scevgep355.a = getelementptr i8, ptr %scevgep354.a, i64 %i.en ; 10 uses
  %scevgep356 = getelementptr i8, ptr %.184, i64 4 ; 5 uses
  %11 = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x ptr> poison, ptr %scevgep350.a, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %scevgep347, i64 1 ; 2 uses
  %15 = insertelement <4 x ptr> %14, ptr %scevgep353.a, i64 2
  %16 = insertelement <4 x ptr> %15, ptr %scevgep355.a, i64 3
  %17 = icmp ult <4 x ptr> %12, %16
  %18 = insertelement <4 x ptr> poison, ptr %.080, i64 0
  %19 = insertelement <4 x ptr> %18, ptr %scevgep351.a, i64 1
  %20 = insertelement <4 x ptr> %19, ptr %scevgep348, i64 2
  %21 = insertelement <4 x ptr> %20, ptr %.184, i64 3
  %22 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %23 = icmp ult <4 x ptr> %21, %22
  %24 = and <4 x i1> %17, %23
  %bound0372 = icmp ult ptr %i.dh, %scevgep355.a
  %bound1373 = icmp ult ptr %scevgep356, %scevgep347
  %found.conflict374 = and i1 %bound0372, %bound1373
  %bound0376 = icmp ult ptr %.080, %scevgep347
  %bound1377 = icmp ult ptr %scevgep351.a, %scevgep350.a
  %found.conflict378 = and i1 %bound0376, %bound1377
  %bound0379 = icmp ult ptr %.080, %scevgep353.a
  %bound0380 = icmp ult ptr %scevgep348, %scevgep350.a
  %found.conflict381 = and i1 %bound0379, %bound0380
  %bound1381 = icmp ult ptr %.080, %scevgep355.a
  %bound1384 = icmp ult ptr %.184, %scevgep350.a
  %found.conflict385 = and i1 %bound1381, %bound1384
  %bound0384 = icmp ult ptr %.080, %scevgep355.a
  %bound1385 = icmp ult ptr %scevgep356, %scevgep350.a
  %found.conflict386 = and i1 %bound0384, %bound1385
  %bound0391 = icmp ult ptr %scevgep351.a, %scevgep353.a
  %bound0388 = icmp ult ptr %scevgep348, %scevgep347
  %found.conflict393 = and i1 %bound0391, %bound0388
  %bound1389 = icmp ult ptr %scevgep351.a, %scevgep355.a
  %bound1396 = icmp ult ptr %.184, %scevgep347
  %found.conflict397 = and i1 %bound1389, %bound1396
  %bound0392 = icmp ult ptr %scevgep351.a, %scevgep355.a
  %bound1393 = icmp ult ptr %scevgep356, %scevgep347
  %found.conflict394 = and i1 %bound0392, %bound1393
  %bound0403 = icmp ult ptr %scevgep348, %scevgep355.a
  %bound0396 = icmp ult ptr %.184, %scevgep353.a
  %found.conflict405 = and i1 %bound0403, %bound0396
  %bound1397 = icmp ult ptr %scevgep348, %scevgep355.a
  %bound1408 = icmp ult ptr %scevgep356, %scevgep353.a
  %found.conflict409 = and i1 %bound1397, %bound1408
  %bound0400 = icmp ult ptr %.184, %scevgep355.a
  %bound1401 = icmp ult ptr %scevgep356, %scevgep355.a
  %found.conflict402 = and i1 %bound0400, %bound1401
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0
  %op.rdx = or i1 %26, %found.conflict374
  %op.rdx438 = or i1 %found.conflict378, %found.conflict381
  %conflict.rdx407 = or i1 %found.conflict385, %found.conflict386
  %op.rdx440 = or i1 %found.conflict393, %found.conflict397
  %op.rdx441 = or i1 %found.conflict394, %found.conflict405
  %op.rdx442 = or i1 %found.conflict409, %found.conflict402
  %conflict.rdx411 = or i1 %op.rdx, %op.rdx438
  %op.rdx444 = or i1 %conflict.rdx407, %op.rdx440
  %op.rdx445 = or i1 %op.rdx441, %op.rdx442
  %op.rdx446 = or i1 %conflict.rdx411, %op.rdx444
  %conflict.rdx415 = or i1 %op.rdx446, %op.rdx445
  br i1 %conflict.rdx415, label %.lr.ph.i49.preheader443, label %vector.ph418

vector.ph418:                                     ; preds = %vector.memcheck345
  %n.vec419 = and i64 %i.el, 4611686018427387902  ; 3 uses
  %i.eo = shl i64 %n.vec419, 3                    ; 3 uses
  %i.ep = getelementptr i8, ptr %i.dh, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %.080, i64 %i.eo
  %i.er = getelementptr i8, ptr %.184, i64 %i.eo
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph418
  %index421 = phi i64 [ 0, %vector.ph418 ], [ %index.next433, %vector.body420 ] ; 2 uses
  %i.es = shl i64 %index421, 3                    ; 3 uses
  %next.gep422.a = getelementptr i8, ptr %i.dh, i64 %i.es ; 2 uses
  %next.gep423.a = getelementptr i8, ptr %.080, i64 %i.es ; 2 uses
  %next.gep424 = getelementptr i8, ptr %.184, i64 %i.es ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep422.a, align 4, !alias.scope !3324, !noalias !3325
  %wide.vec425 = load <4 x i32>, ptr %next.gep423.a, align 4, !tbaa !501
  store <4 x i32> %wide.vec425, ptr %next.gep422.a, align 4, !tbaa !501
  %wide.vec429 = load <4 x i32>, ptr %next.gep424, align 4, !tbaa !501
  store <4 x i32> %wide.vec429, ptr %next.gep423.a, align 4, !tbaa !501
  store <2 x i64> %wide.load, ptr %next.gep424, align 4, !alias.scope !3326, !noalias !3327
  %index.next433 = add nuw i64 %index421, 2       ; 2 uses
  %i.et = icmp eq i64 %index.next433, %n.vec419
  br i1 %i.et, label %middle.block434, label %vector.body420, !llvm.loop !3319

middle.block434:                                  ; preds = %vector.body420
  %cmp.n435 = icmp eq i64 %i.el, %n.vec419
  br i1 %cmp.n435, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader443

.lr.ph.i49.preheader443:                          ; preds = %vector.memcheck345, %.lr.ph.i49.preheader, %middle.block434
  %.012.i.ph = phi ptr [ %i.dh, %vector.memcheck345 ], [ %i.dh, %.lr.ph.i49.preheader ], [ %i.ep, %middle.block434 ] ; 5 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck345 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.eq, %middle.block434 ] ; 5 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck345 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.er, %middle.block434 ] ; 6 uses
  %.0810.i.ph496 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.eu = sub i64 %i.l, %.0810.i.ph496            ; 2 uses
  %i.ev = and i64 %i.eu, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ev, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i49.prol, label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader443
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 8 ; 2 uses
  %i.ez = load i64, ptr %.012.i.ph, align 4
  %i.fa = load i32, ptr %.0711.i.ph, align 4, !tbaa !501
  store i32 %i.fa, ptr %.012.i.ph, align 4, !tbaa !529
  %i.fb = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !501
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !530
  %i.fe = load i32, ptr %.0810.i.ph, align 4, !tbaa !501
  store i32 %i.fe, ptr %.0711.i.ph, align 4, !tbaa !529
  %i.ff = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !501
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !530
  store i64 %i.ez, ptr %.0810.i.ph, align 4
  br label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader443
  %.lcssa493.unr = phi ptr [ poison, %.lr.ph.i49.preheader443 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader443 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader443 ], [ %i.ex, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader443 ], [ %i.ew, %.lr.ph.i49.prol ]
  %i.fh = icmp ult i64 %i.eu, 8
  br i1 %i.fh, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.fv, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.fu, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.ft, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.fl = load i64, ptr %.012.i, align 4
  %i.fm = load i32, ptr %.0711.i, align 4, !tbaa !501
  store i32 %i.fm, ptr %.012.i, align 4, !tbaa !529
  %i.fn = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !501
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !530
  %i.fq = load i32, ptr %.0810.i, align 4, !tbaa !501
  store i32 %i.fq, ptr %.0711.i, align 4, !tbaa !529
  %i.fr = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !501
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !530
  store i64 %i.fl, ptr %.0810.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.fw = load i64, ptr %i.fk, align 4
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !501
  store i32 %i.fx, ptr %i.fk, align 4, !tbaa !529
  %i.fy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !501
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !530
  %i.gb = load i32, ptr %i.fi, align 4, !tbaa !501
  store i32 %i.gb, ptr %i.fj, align 4, !tbaa !529
  %i.gc = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !501
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !530
  store i64 %i.fw, ptr %i.fi, align 4
  %.not.i50.1 = icmp eq ptr %i.ft, %i.ao
  br i1 %.not.i50.1, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49, !llvm.loop !3320

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ge = sub i64 %i.p, %.184293                  ; 2 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check325 = icmp ult i64 %i.ge, 104
  br i1 %min.iters.check325, label %.lr.ph.i.i.preheader441, label %vector.memcheck291

vector.memcheck291:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep292 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %i.gh = sub i64 %i.r, %.184293
  %i.gi = and i64 %i.gh, -8                       ; 4 uses
  %scevgep294 = getelementptr i8, ptr %scevgep292, i64 %i.gi ; 3 uses
  %scevgep295 = getelementptr i8, ptr %i.dh, i64 4 ; 4 uses
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.gi ; 3 uses
  %scevgep297 = getelementptr i8, ptr %.184, i64 8
  %scevgep298 = getelementptr i8, ptr %scevgep297, i64 %i.gi ; 3 uses
  %scevgep299 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep300 = getelementptr i8, ptr %scevgep299, i64 %i.gi ; 3 uses
  %bound0301 = icmp ult ptr %.184, %scevgep296
  %bound1302 = icmp ult ptr %i.dh, %scevgep294
  %found.conflict303 = and i1 %bound0301, %bound1302
  %bound0304 = icmp ult ptr %.184, %scevgep298
  %bound1305 = icmp ult ptr %scevgep292, %scevgep294
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %found.conflict303, %found.conflict306
  %bound0308 = icmp ult ptr %.184, %scevgep300
  %bound1309 = icmp ult ptr %scevgep295, %scevgep294
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %i.dh, %scevgep298
  %bound1313 = icmp ult ptr %scevgep292, %scevgep296
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %i.dh, %scevgep300
  %bound1317 = icmp ult ptr %scevgep295, %scevgep296
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %scevgep292, %scevgep300
  %bound1321 = icmp ult ptr %scevgep295, %scevgep298
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  br i1 %conflict.rdx323, label %.lr.ph.i.i.preheader441, label %vector.ph326

vector.ph326:                                     ; preds = %vector.memcheck291
  %n.vec327 = and i64 %i.gg, 4611686018427387902  ; 3 uses
  %i.gj = shl i64 %n.vec327, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.dh, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %.184, i64 %i.gj
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next340, %vector.body328 ] ; 2 uses
  %i.gm = shl i64 %index329, 3                    ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.dh, i64 %i.gm ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.184, i64 %i.gm ; 2 uses
  %wide.vec332 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !501
  %wide.vec335 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !501
  store <4 x i32> %wide.vec335, ptr %next.gep331, align 4, !tbaa !501
  store <4 x i32> %wide.vec332, ptr %next.gep330, align 4, !tbaa !501
  %index.next340 = add nuw i64 %index329, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next340, %n.vec327
  br i1 %i.gn, label %middle.block341, label %vector.body328, !llvm.loop !3321

middle.block341:                                  ; preds = %vector.body328
  %cmp.n342 = icmp eq i64 %i.gg, %n.vec327
  br i1 %cmp.n342, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader441

.lr.ph.i.i.preheader441:                          ; preds = %vector.memcheck291, %.lr.ph.i.i.preheader, %middle.block341
  %.010.i.i.ph = phi ptr [ %i.dh, %vector.memcheck291 ], [ %i.dh, %.lr.ph.i.i.preheader ], [ %i.gk, %middle.block341 ] ; 5 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck291 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.gl, %middle.block341 ] ; 6 uses
  %.079.i.i.ph497 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.go = sub i64 %i.l, %.079.i.i.ph497           ; 2 uses
  %i.gp = and i64 %i.go, 8
  %lcmp.mod499.not.not = icmp eq i64 %i.gp, 0
  br i1 %lcmp.mod499.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader441
  %i.gq = load i32, ptr %.079.i.i.ph, align 4, !tbaa !501
  %i.gr = load i32, ptr %.010.i.i.ph, align 4, !tbaa !501
  store i32 %i.gr, ptr %.079.i.i.ph, align 4, !tbaa !501
  store i32 %i.gq, ptr %.010.i.i.ph, align 4, !tbaa !501
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !501
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !501
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !501
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !501
  %i.gw = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 8 ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_:bb.a
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 8 uses
  %.026.i.i = phi ptr [ %i.aw, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 6 uses
  %.025.i.i = phi ptr [ %i.ax, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.at = load i32, ptr %.025.i.i, align 4, !tbaa !501 ; 2 uses
  %i.au = load i32, ptr %.028.ph.i.i, align 4, !tbaa !501 ; 2 uses
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8 ; 2 uses
  %i.ay = load i64, ptr %.030.i.i, align 4
  store i32 %i.at, ptr %.030.i.i, align 4, !tbaa !529
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !501
  %i.bb = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !530
  %i.bc = load i32, ptr %.026.i.i, align 4, !tbaa !501
  store i32 %i.bc, ptr %.025.i.i, align 4, !tbaa !529
  %i.bd = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !501
  store i32 %i.be, ptr %i.az, align 4, !tbaa !530
  store i64 %i.ay, ptr %.026.i.i, align 4
  %.not43.i.i = icmp eq ptr %i.aw, %i.ao
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !56

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 8 ; 3 uses
  %i.bg = load i32, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.au, ptr %.030.i.i, align 4, !tbaa !501
  store i32 %i.bg, ptr %.028.ph.i.i, align 4, !tbaa !501
  %i.bh = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !501
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !501
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !501
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !501
  %.not42.i.i = icmp eq ptr %i.bf, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 8 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !56

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038125, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.bw, %bb.k ], [ %i.as, %bb.i ] ; 5 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083122, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aq, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 8 uses
  %.026.i21.i = phi ptr [ %i.bn, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 6 uses
  %.025.i22.i = phi ptr [ %i.bo, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.bl = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !501 ; 2 uses
  %i.bm = load i32, ptr %.025.i22.i, align 4, !tbaa !501 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.bl, %i.bm
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 8 ; 2 uses
  %i.bp = load i64, ptr %.030.i20.i, align 4
  store i32 %i.bm, ptr %.030.i20.i, align 4, !tbaa !529
  %i.bq = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !501
  %i.bs = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !530
  %i.bt = load i32, ptr %.026.i21.i, align 4, !tbaa !501
  store i32 %i.bt, ptr %.025.i22.i, align 4, !tbaa !529
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !501
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !530
  store i64 %i.bp, ptr %.026.i21.i, align 4
  %.not44.i.i = icmp eq ptr %i.bn, %i.ao
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !58

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 8 ; 3 uses
  %i.bx = load i32, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bl, ptr %.030.i20.i, align 4, !tbaa !501
  store i32 %i.bx, ptr %.028.ph.i17.i, align 4, !tbaa !501
  %i.by = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !501
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !501
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !501
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !501
  %.not43.i32.i = icmp eq ptr %i.bw, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 8 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !58

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.cf, %bb.o ], [ %.038125, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.cn, %bb.o ], [ %i.as, %bb.m ] ; 5 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083122, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.cf, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ci, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 6 uses
  %i.cc = load i32, ptr %.0.i.i, align 4, !tbaa !501 ; 2 uses
  %i.cd = load i32, ptr %.021.i.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 8 ; 4 uses
  %i.cg = load i32, ptr %.024.i.i, align 4, !tbaa !501 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  store i32 %i.cc, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.0.i.i, align 4, !tbaa !501
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !501
  store i32 %i.cl, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !501
  %i.cm = icmp eq ptr %i.ci, %i.ao
  br i1 %i.cm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !57

bb.o:                                             ; preds = %.preheader.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 8 ; 3 uses
  store i32 %i.cd, ptr %.024.i.i, align 4, !tbaa !501
  store i32 %i.cg, ptr %.021.i.i.ph, align 4, !tbaa !501
  %i.co = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.ch, align 4, !tbaa !501
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !501
  store i32 %i.cq, ptr %i.ch, align 4, !tbaa !501
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !501
  %i.cr = icmp eq ptr %i.cn, %4
  br i1 %i.cr, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !57

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.cu, %bb.r ], [ %.038125, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.dc, %bb.r ], [ %i.as, %bb.p ] ; 5 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083122, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.cu, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %.0.i16.i = phi ptr [ %i.cx, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 6 uses
  %i.cs = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !501 ; 2 uses
  %i.ct = load i32, ptr %.0.i16.i, align 4, !tbaa !501 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.cs, %i.ct
  %i.cu = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 8 ; 4 uses
  %i.cv = load i32, ptr %.024.i14.i, align 4, !tbaa !501 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 8 ; 2 uses
  store i32 %i.ct, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.0.i16.i, align 4, !tbaa !501
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !501
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !501
  %i.db = icmp eq ptr %i.cx, %i.ao
  br i1 %i.db, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !59

bb.r:                                             ; preds = %.preheader.i13.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 8 ; 3 uses
  store i32 %i.cs, ptr %.024.i14.i, align 4, !tbaa !501
  store i32 %i.cv, ptr %.021.i15.i.ph, align 4, !tbaa !501
  %i.dd = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.cw, align 4, !tbaa !501
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !501
  store i32 %i.df, ptr %i.cw, align 4, !tbaa !501
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !501
  %i.dg = icmp eq ptr %i.dc, %4
  br i1 %i.dg, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.dc, %bb.r ], [ %i.cn, %bb.o ], [ %i.as, %bb.p ], [ %i.as, %bb.m ], [ %i.bf, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.bw, %bb.k ]
  %.184.ph = phi ptr [ %i.ao, %.split.i.i ], [ %i.ao, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083122, %bb.p ], [ %.083122, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ao, %bb.n ], [ %i.ao, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ax, %.split.i.i ], [ %i.bo, %.split.i24.i ], [ %i.aq, %bb.q ], [ %i.aq, %bb.n ], [ %i.aq, %bb.p ], [ %i.aq, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aq, %bb.o ], [ %i.aq, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.cu, %bb.q ], [ %i.cf, %bb.n ], [ %.038125, %bb.p ], [ %.038125, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.cf, %bb.o ], [ %i.cu, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !509
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083122, %bb.i ], [ %.083122, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 33 uses
  %.080 = phi ptr [ %i.aq, %bb.i ], [ %i.aq, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 24 uses
  %i.dh = phi ptr [ %.038125, %bb.i ], [ %.038125, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit.sink.split ] ; 20 uses
  %.184294 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %.080257 = ptrtoaddr ptr %.080 to i64           ; 2 uses
  %i.di = icmp eq ptr %.184, %i.dh
  br i1 %i.di, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ar
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %bb.t
  %i.dj = shl i64 %.022.lcssa.i, 3
  %i.dk = add i64 %i.dj, 8
  %i.dl = mul i64 %6, %i.dk
  %i.dm = add i64 %i.t, %i.dl
  %i.dn = sub i64 %i.dm, %.080257                 ; 2 uses
  %i.do = lshr i64 %i.dn, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dn, 136
  br i1 %min.iters.check, label %.lr.ph.i48.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i48.preheader
  %scevgep = getelementptr i8, ptr %.080, i64 4
  %i.dq = shl i64 %.022.lcssa.i, 3
  %i.dr = add i64 %i.dq, 8
  %i.ds = mul i64 %6, %i.dr
  %i.dt = add i64 %i.v, %i.ds
  %i.du = sub i64 %i.dt, %.080257
  %i.dv = and i64 %i.du, -8                       ; 4 uses
  %scevgep258 = getelementptr i8, ptr %scevgep, i64 %i.dv ; 3 uses
  %scevgep259 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %scevgep260 = getelementptr i8, ptr %scevgep259, i64 %i.dv ; 3 uses
  %scevgep261 = getelementptr i8, ptr %.080, i64 4 ; 3 uses
  %scevgep262 = getelementptr i8, ptr %.080, i64 8
  %scevgep263 = getelementptr i8, ptr %scevgep262, i64 %i.dv ; 3 uses
  %scevgep264 = getelementptr i8, ptr %.184, i64 8
  %scevgep265 = getelementptr i8, ptr %scevgep264, i64 %i.dv ; 3 uses
  %bound0 = icmp ult ptr %.080, %scevgep260
  %bound1 = icmp ult ptr %.184, %scevgep258
  %found.conflict = and i1 %bound0, %bound1
  %bound0266 = icmp ult ptr %.080, %scevgep263
  %bound1267 = icmp ult ptr %scevgep261, %scevgep258
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx = or i1 %found.conflict, %found.conflict268
  %bound0269 = icmp ult ptr %.080, %scevgep265
  %bound1270 = icmp ult ptr %scevgep259, %scevgep258
  %found.conflict271 = and i1 %bound0269, %bound1270
  %conflict.rdx272 = or i1 %conflict.rdx, %found.conflict271
  %bound0273 = icmp ult ptr %.184, %scevgep263
  %bound1274 = icmp ult ptr %scevgep261, %scevgep260
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx272, %found.conflict275
  %bound0277 = icmp ult ptr %.184, %scevgep265
  %bound1278 = icmp ult ptr %scevgep259, %scevgep260
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  %bound0281 = icmp ult ptr %scevgep261, %scevgep265
  %bound1282 = icmp ult ptr %scevgep259, %scevgep263
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  br i1 %conflict.rdx284, label %.lr.ph.i48.preheader441, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387902     ; 3 uses
  %i.dw = shl i64 %n.vec, 3                       ; 2 uses
  %i.dx = getelementptr i8, ptr %.184, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %.080, i64 %i.dw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.184, i64 %i.dz ; 2 uses
  %next.gep285 = getelementptr i8, ptr %.080, i64 %i.dz ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep285, align 4, !tbaa !501
  %wide.vec287 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec287, ptr %next.gep285, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !3535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48.preheader441

.lr.ph.i48.preheader441:                          ; preds = %vector.memcheck, %.lr.ph.i48.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i48.preheader ], [ %i.dx, %middle.block ]
  %.079.i.ph = phi ptr [ %.080, %vector.memcheck ], [ %.080, %.lr.ph.i48.preheader ], [ %i.dy, %middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader441, %.lr.ph.i48
  %.010.i = phi ptr [ %i.ei, %.lr.ph.i48 ], [ %.010.i.ph, %.lr.ph.i48.preheader441 ] ; 4 uses
  %.079.i = phi ptr [ %i.eh, %.lr.ph.i48 ], [ %.079.i.ph, %.lr.ph.i48.preheader441 ] ; 4 uses
  %i.eb = load i32, ptr %.079.i, align 4, !tbaa !501
  %i.ec = load i32, ptr %.010.i, align 4, !tbaa !501
  store i32 %i.ec, ptr %.079.i, align 4, !tbaa !501
  store i32 %i.eb, ptr %.010.i, align 4, !tbaa !501
  %i.ed = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !501
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !501
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !501
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !501
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.eh, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i48, !llvm.loop !3536

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET1_RT_SG_RT0_SI_SJ_SF_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ao           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.ej = sub i64 %i.l, %.184294                  ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check418 = icmp ult i64 %i.ej, 216
  br i1 %min.iters.check418, label %.lr.ph.i49.preheader444, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph.i49.preheader
  %scevgep347 = getelementptr i8, ptr %i.dh, i64 8
  %i.em = sub i64 %i.n, %.184294
  %i.en = and i64 %i.em, -8                       ; 4 uses
  %scevgep348 = getelementptr i8, ptr %scevgep347, i64 %i.en ; 6 uses
  %scevgep349 = getelementptr i8, ptr %.080, i64 4 ; 6 uses
  %scevgep351.a = getelementptr i8, ptr %scevgep349, i64 %i.en ; 5 uses
  %scevgep352.a = getelementptr i8, ptr %i.dh, i64 4 ; 5 uses
  %scevgep353.a = getelementptr i8, ptr %.080, i64 8
  %scevgep354.a = getelementptr i8, ptr %scevgep353.a, i64 %i.en ; 5 uses
  %scevgep355.a = getelementptr i8, ptr %.184, i64 8
  %scevgep356.a = getelementptr i8, ptr %scevgep355.a, i64 %i.en ; 10 uses
  %scevgep357 = getelementptr i8, ptr %.184, i64 4 ; 5 uses
  %11 = insertelement <4 x ptr> poison, ptr %i.dh, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %13 = insertelement <4 x ptr> poison, ptr %scevgep351.a, i64 0
  %14 = insertelement <4 x ptr> %13, ptr %scevgep348, i64 1 ; 2 uses
  %15 = insertelement <4 x ptr> %14, ptr %scevgep354.a, i64 2
  %16 = insertelement <4 x ptr> %15, ptr %scevgep356.a, i64 3
  %17 = icmp ult <4 x ptr> %12, %16
  %18 = insertelement <4 x ptr> poison, ptr %.080, i64 0
  %19 = insertelement <4 x ptr> %18, ptr %scevgep352.a, i64 1
  %20 = insertelement <4 x ptr> %19, ptr %scevgep349, i64 2
  %21 = insertelement <4 x ptr> %20, ptr %.184, i64 3
  %22 = shufflevector <4 x ptr> %14, <4 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %23 = icmp ult <4 x ptr> %21, %22
  %24 = and <4 x i1> %17, %23
  %bound0373 = icmp ult ptr %i.dh, %scevgep356.a
  %bound1374 = icmp ult ptr %scevgep357, %scevgep348
  %found.conflict375 = and i1 %bound0373, %bound1374
  %bound0377 = icmp ult ptr %.080, %scevgep348
  %bound1378 = icmp ult ptr %scevgep352.a, %scevgep351.a
  %found.conflict379 = and i1 %bound0377, %bound1378
  %bound0380 = icmp ult ptr %.080, %scevgep354.a
  %bound0381 = icmp ult ptr %scevgep349, %scevgep351.a
  %found.conflict382 = and i1 %bound0380, %bound0381
  %bound1382 = icmp ult ptr %.080, %scevgep356.a
  %bound1385 = icmp ult ptr %.184, %scevgep351.a
  %found.conflict386 = and i1 %bound1382, %bound1385
  %bound0385 = icmp ult ptr %.080, %scevgep356.a
  %bound1386 = icmp ult ptr %scevgep357, %scevgep351.a
  %found.conflict387 = and i1 %bound0385, %bound1386
  %bound0392 = icmp ult ptr %scevgep352.a, %scevgep354.a
  %bound0389 = icmp ult ptr %scevgep349, %scevgep348
  %found.conflict394 = and i1 %bound0392, %bound0389
  %bound1390 = icmp ult ptr %scevgep352.a, %scevgep356.a
  %bound1397 = icmp ult ptr %.184, %scevgep348
  %found.conflict398 = and i1 %bound1390, %bound1397
  %bound0393 = icmp ult ptr %scevgep352.a, %scevgep356.a
  %bound1394 = icmp ult ptr %scevgep357, %scevgep348
  %found.conflict395 = and i1 %bound0393, %bound1394
  %bound0404 = icmp ult ptr %scevgep349, %scevgep356.a
  %bound0397 = icmp ult ptr %.184, %scevgep354.a
  %found.conflict406 = and i1 %bound0404, %bound0397
  %bound1398 = icmp ult ptr %scevgep349, %scevgep356.a
  %bound1409 = icmp ult ptr %scevgep357, %scevgep354.a
  %found.conflict410 = and i1 %bound1398, %bound1409
  %bound0401 = icmp ult ptr %.184, %scevgep356.a
  %bound1402 = icmp ult ptr %scevgep357, %scevgep356.a
  %found.conflict403 = and i1 %bound0401, %bound1402
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0
  %op.rdx = or i1 %26, %found.conflict375
  %op.rdx439 = or i1 %found.conflict379, %found.conflict382
  %conflict.rdx408 = or i1 %found.conflict386, %found.conflict387
  %op.rdx441 = or i1 %found.conflict394, %found.conflict398
  %op.rdx442 = or i1 %found.conflict395, %found.conflict406
  %op.rdx443 = or i1 %found.conflict410, %found.conflict403
  %conflict.rdx412 = or i1 %op.rdx, %op.rdx439
  %op.rdx445 = or i1 %conflict.rdx408, %op.rdx441
  %op.rdx446 = or i1 %op.rdx442, %op.rdx443
  %op.rdx447 = or i1 %conflict.rdx412, %op.rdx445
  %conflict.rdx416 = or i1 %op.rdx447, %op.rdx446
  br i1 %conflict.rdx416, label %.lr.ph.i49.preheader444, label %vector.ph419

vector.ph419:                                     ; preds = %vector.memcheck346
  %n.vec420 = and i64 %i.el, 4611686018427387902  ; 3 uses
  %i.eo = shl i64 %n.vec420, 3                    ; 3 uses
  %i.ep = getelementptr i8, ptr %i.dh, i64 %i.eo  ; 2 uses
  %i.eq = getelementptr i8, ptr %.080, i64 %i.eo
  %i.er = getelementptr i8, ptr %.184, i64 %i.eo
  br label %vector.body421

vector.body421:                                   ; preds = %vector.body421, %vector.ph419
  %index422 = phi i64 [ 0, %vector.ph419 ], [ %index.next434, %vector.body421 ] ; 2 uses
  %i.es = shl i64 %index422, 3                    ; 3 uses
  %next.gep423.a = getelementptr i8, ptr %i.dh, i64 %i.es ; 2 uses
  %next.gep424.a = getelementptr i8, ptr %.080, i64 %i.es ; 2 uses
  %next.gep425 = getelementptr i8, ptr %.184, i64 %i.es ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep423.a, align 4, !alias.scope !3549, !noalias !3550
  %wide.vec426 = load <4 x i32>, ptr %next.gep424.a, align 4, !tbaa !501
  store <4 x i32> %wide.vec426, ptr %next.gep423.a, align 4, !tbaa !501
  %wide.vec430 = load <4 x i32>, ptr %next.gep425, align 4, !tbaa !501
  store <4 x i32> %wide.vec430, ptr %next.gep424.a, align 4, !tbaa !501
  store <2 x i64> %wide.load, ptr %next.gep425, align 4, !alias.scope !3551, !noalias !3552
  %index.next434 = add nuw i64 %index422, 2       ; 2 uses
  %i.et = icmp eq i64 %index.next434, %n.vec420
  br i1 %i.et, label %middle.block435, label %vector.body421, !llvm.loop !3544

middle.block435:                                  ; preds = %vector.body421
  %cmp.n436 = icmp eq i64 %i.el, %n.vec420
  br i1 %cmp.n436, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49.preheader444

.lr.ph.i49.preheader444:                          ; preds = %vector.memcheck346, %.lr.ph.i49.preheader, %middle.block435
  %.012.i.ph = phi ptr [ %i.dh, %vector.memcheck346 ], [ %i.dh, %.lr.ph.i49.preheader ], [ %i.ep, %middle.block435 ] ; 5 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck346 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.eq, %middle.block435 ] ; 5 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck346 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.er, %middle.block435 ] ; 6 uses
  %.0810.i.ph497 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.eu = sub i64 %i.l, %.0810.i.ph497            ; 2 uses
  %i.ev = and i64 %i.eu, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ev, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i49.prol, label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader444
  %i.ew = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 8 ; 2 uses
  %i.ez = load i64, ptr %.012.i.ph, align 4
  %i.fa = load i32, ptr %.0711.i.ph, align 4, !tbaa !501
  store i32 %i.fa, ptr %.012.i.ph, align 4, !tbaa !529
  %i.fb = getelementptr inbounds nuw i8, ptr %.0711.i.ph, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !501
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.ph, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !530
  %i.fe = load i32, ptr %.0810.i.ph, align 4, !tbaa !501
  store i32 %i.fe, ptr %.0711.i.ph, align 4, !tbaa !529
  %i.ff = getelementptr inbounds nuw i8, ptr %.0810.i.ph, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !501
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !530
  store i64 %i.ez, ptr %.0810.i.ph, align 4
  br label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader444
  %.lcssa494.unr = phi ptr [ poison, %.lr.ph.i49.preheader444 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ey, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ex, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader444 ], [ %i.ew, %.lr.ph.i49.prol ]
  %i.fh = icmp ult i64 %i.eu, 8
  br i1 %i.fh, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.fv, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0711.i = phi ptr [ %i.fu, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %.0810.i = phi ptr [ %i.ft, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i, i64 8 ; 2 uses
  %i.fl = load i64, ptr %.012.i, align 4
  %i.fm = load i32, ptr %.0711.i, align 4, !tbaa !501
  store i32 %i.fm, ptr %.012.i, align 4, !tbaa !529
  %i.fn = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !501
  %i.fp = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !530
  %i.fq = load i32, ptr %.0810.i, align 4, !tbaa !501
  store i32 %i.fq, ptr %.0711.i, align 4, !tbaa !529
  %i.fr = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !501
  store i32 %i.fs, ptr %i.fn, align 4, !tbaa !530
  store i64 %i.fl, ptr %.0810.i, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.fw = load i64, ptr %i.fk, align 4
  %i.fx = load i32, ptr %i.fj, align 4, !tbaa !501
  store i32 %i.fx, ptr %i.fk, align 4, !tbaa !529
  %i.fy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !501
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !530
  %i.gb = load i32, ptr %i.fi, align 4, !tbaa !501
  store i32 %i.gb, ptr %i.fj, align 4, !tbaa !529
  %i.gc = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !501
  store i32 %i.gd, ptr %i.fy, align 4, !tbaa !530
  store i64 %i.fw, ptr %i.fi, align 4
  %.not.i50.1 = icmp eq ptr %i.ft, %i.ao
  br i1 %.not.i50.1, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i49, !llvm.loop !3545

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.ge = sub i64 %i.p, %.184294                  ; 2 uses
  %i.gf = lshr i64 %i.ge, 3
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check326 = icmp ult i64 %i.ge, 104
  br i1 %min.iters.check326, label %.lr.ph.i.i.preheader442, label %vector.memcheck292

vector.memcheck292:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep293 = getelementptr i8, ptr %.184, i64 4 ; 4 uses
  %i.gh = sub i64 %i.r, %.184294
  %i.gi = and i64 %i.gh, -8                       ; 4 uses
  %scevgep295 = getelementptr i8, ptr %scevgep293, i64 %i.gi ; 3 uses
  %scevgep296 = getelementptr i8, ptr %i.dh, i64 4 ; 4 uses
  %scevgep297 = getelementptr i8, ptr %scevgep296, i64 %i.gi ; 3 uses
  %scevgep298 = getelementptr i8, ptr %.184, i64 8
  %scevgep299 = getelementptr i8, ptr %scevgep298, i64 %i.gi ; 3 uses
  %scevgep300 = getelementptr i8, ptr %i.dh, i64 8
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.gi ; 3 uses
  %bound0302 = icmp ult ptr %.184, %scevgep297
  %bound1303 = icmp ult ptr %i.dh, %scevgep295
  %found.conflict304 = and i1 %bound0302, %bound1303
  %bound0305 = icmp ult ptr %.184, %scevgep299
  %bound1306 = icmp ult ptr %scevgep293, %scevgep295
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %found.conflict304, %found.conflict307
  %bound0309 = icmp ult ptr %.184, %scevgep301
  %bound1310 = icmp ult ptr %scevgep296, %scevgep295
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  %bound0313 = icmp ult ptr %i.dh, %scevgep299
  %bound1314 = icmp ult ptr %scevgep293, %scevgep297
  %found.conflict315 = and i1 %bound0313, %bound1314
  %conflict.rdx316 = or i1 %conflict.rdx312, %found.conflict315
  %bound0317 = icmp ult ptr %i.dh, %scevgep301
  %bound1318 = icmp ult ptr %scevgep296, %scevgep297
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx316, %found.conflict319
  %bound0321 = icmp ult ptr %scevgep293, %scevgep301
  %bound1322 = icmp ult ptr %scevgep296, %scevgep299
  %found.conflict323 = and i1 %bound0321, %bound1322
  %conflict.rdx324 = or i1 %conflict.rdx320, %found.conflict323
  br i1 %conflict.rdx324, label %.lr.ph.i.i.preheader442, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck292
  %n.vec328 = and i64 %i.gg, 4611686018427387902  ; 3 uses
  %i.gj = shl i64 %n.vec328, 3                    ; 2 uses
  %i.gk = getelementptr i8, ptr %i.dh, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %.184, i64 %i.gj
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next341, %vector.body329 ] ; 2 uses
  %i.gm = shl i64 %index330, 3                    ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.dh, i64 %i.gm ; 2 uses
  %next.gep332 = getelementptr i8, ptr %.184, i64 %i.gm ; 2 uses
  %wide.vec333 = load <4 x i32>, ptr %next.gep332, align 4, !tbaa !501
  %wide.vec336 = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !501
  store <4 x i32> %wide.vec336, ptr %next.gep332, align 4, !tbaa !501
  store <4 x i32> %wide.vec333, ptr %next.gep331, align 4, !tbaa !501
  %index.next341 = add nuw i64 %index330, 2       ; 2 uses
  %i.gn = icmp eq i64 %index.next341, %n.vec328
  br i1 %i.gn, label %middle.block342, label %vector.body329, !llvm.loop !3546

middle.block342:                                  ; preds = %vector.body329
  %cmp.n343 = icmp eq i64 %i.gg, %n.vec328
  br i1 %cmp.n343, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit, label %.lr.ph.i.i.preheader442

.lr.ph.i.i.preheader442:                          ; preds = %vector.memcheck292, %.lr.ph.i.i.preheader, %middle.block342
  %.010.i.i.ph = phi ptr [ %i.dh, %vector.memcheck292 ], [ %i.dh, %.lr.ph.i.i.preheader ], [ %i.gk, %middle.block342 ] ; 5 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck292 ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.gl, %middle.block342 ] ; 6 uses
  %.079.i.i.ph498 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.go = sub i64 %i.l, %.079.i.i.ph498           ; 2 uses
  %i.gp = and i64 %i.go, 8
  %lcmp.mod500.not.not = icmp eq i64 %i.gp, 0
  br i1 %lcmp.mod500.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader442
  %i.gq = load i32, ptr %.079.i.i.ph, align 4, !tbaa !501
  %i.gr = load i32, ptr %.010.i.i.ph, align 4, !tbaa !501
  store i32 %i.gr, ptr %.079.i.i.ph, align 4, !tbaa !501
  store i32 %i.gq, ptr %.010.i.i.ph, align 4, !tbaa !501
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !501
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !501
  store i32 %i.gv, ptr %i.gs, align 4, !tbaa !501
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !501
  %i.gw = getelementptr inbounds nuw i8, ptr %.079.i.i.ph, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 8 ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %.058.lcssa299 = phi ptr [ %i.f, %bb.a ], [ %i.if, %.thread ], [ %i.if, %middle.block464 ], [ %i.if, %.lr.ph.i.i90 ]
  %.0214.lcssa298 = phi i64 [ 0, %bb.a ], [ %.0214.lcssa.ph, %.thread ], [ %.0214.lcssa.ph, %middle.block464 ], [ %.0214.lcssa.ph, %.lr.ph.i.i90 ] ; 2 uses
  %.sroa.0189.0.lcssa297 = phi ptr [ %i.e, %bb.a ], [ %.sroa.0189.0.lcssa.ph, %.thread ], [ %.sroa.0189.0.lcssa.ph, %middle.block464 ], [ %.sroa.0189.0.lcssa.ph, %.lr.ph.i.i90 ]
  %.sroa.0179.0.lcssa296 = phi ptr [ %i.g, %bb.a ], [ %.sroa.0179.0.lcssa.ph, %.thread ], [ %.sroa.0179.0.lcssa.ph, %middle.block464 ], [ %.sroa.0179.0.lcssa.ph, %.lr.ph.i.i90 ]
  %.idx229 = shl i64 %6, 3                        ; 3 uses
  %i.jd = getelementptr i8, ptr %i.i, i64 %.idx229 ; 3 uses
  %.not3.i.i = icmp eq i64 %6, 0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94.preheader

.lr.ph.i.i94.preheader:                           ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93
  %i.je = add i64 %.idx229, -8                    ; 2 uses
  %i.jf = lshr exact i64 %i.je, 3
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check474 = icmp ult i64 %i.je, 56
  br i1 %min.iters.check474, label %.lr.ph.i.i94.preheader503, label %vector.memcheck475

vector.memcheck475:                               ; preds = %.lr.ph.i.i94.preheader
  %i.jh = getelementptr i8, ptr %7, i64 %.idx229
  %bound0476 = icmp ult ptr %7, %i.jd
  %bound1477 = icmp ult ptr %i.i, %i.jh
  %found.conflict478 = and i1 %bound0476, %bound1477
  br i1 %found.conflict478, label %.lr.ph.i.i94.preheader503, label %vector.ph479

vector.ph479:                                     ; preds = %vector.memcheck475
  %n.vec480 = and i64 %i.jg, 4611686018427387900  ; 3 uses
  %i.ji = shl i64 %n.vec480, 3                    ; 2 uses
  %i.jj = getelementptr i8, ptr %i.i, i64 %i.ji
  %i.jk = getelementptr i8, ptr %7, i64 %i.ji
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph479
  %index482 = phi i64 [ 0, %vector.ph479 ], [ %index.next495, %vector.body481 ] ; 2 uses
  %i.jl = shl i64 %index482, 3                    ; 3 uses
  %i.jm = or disjoint i64 %i.jl, 16               ; 2 uses
  %next.gep483 = getelementptr i8, ptr %i.i, i64 %i.jl
  %next.gep484 = getelementptr i8, ptr %i.i, i64 %i.jm
  %next.gep485 = getelementptr i8, ptr %7, i64 %i.jl
  %next.gep486 = getelementptr i8, ptr %7, i64 %i.jm
  %wide.vec487 = load <4 x i32>, ptr %next.gep483, align 4, !tbaa !501, !alias.scope !6942
  %wide.vec490 = load <4 x i32>, ptr %next.gep484, align 4, !tbaa !501, !alias.scope !6942
  store <4 x i32> %wide.vec487, ptr %next.gep485, align 4, !tbaa !501, !alias.scope !6943, !noalias !6942
  store <4 x i32> %wide.vec490, ptr %next.gep486, align 4, !tbaa !501, !alias.scope !6943, !noalias !6942
  %index.next495 = add nuw i64 %index482, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next495, %n.vec480
  br i1 %i.jn, label %middle.block496, label %vector.body481, !llvm.loop !6907

middle.block496:                                  ; preds = %vector.body481
  %cmp.n497 = icmp eq i64 %i.jg, %n.vec480
  br i1 %cmp.n497, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94.preheader503

.lr.ph.i.i94.preheader503:                        ; preds = %vector.memcheck475, %.lr.ph.i.i94.preheader, %middle.block496
  %.ph = phi ptr [ %i.i, %vector.memcheck475 ], [ %i.i, %.lr.ph.i.i94.preheader ], [ %i.jj, %middle.block496 ]
  %.04.i.i.ph = phi ptr [ %7, %vector.memcheck475 ], [ %7, %.lr.ph.i.i94.preheader ], [ %i.jk, %middle.block496 ]
  br label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %.lr.ph.i.i94.preheader503, %.lr.ph.i.i94
  %i.jo = phi ptr [ %i.jt, %.lr.ph.i.i94 ], [ %.ph, %.lr.ph.i.i94.preheader503 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.ju, %.lr.ph.i.i94 ], [ %.04.i.i.ph, %.lr.ph.i.i94.preheader503 ] ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !501
  store i32 %i.jp, ptr %.04.i.i, align 4, !tbaa !529
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !501
  %i.js = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !530
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i95 = icmp eq ptr %i.jt, %i.jd
  br i1 %.not.i.i95, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94, !llvm.loop !6908

_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i94, %middle.block496, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93
  store ptr %7, ptr %i.a, align 8, !tbaa !509
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jv, ptr %i.b, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr %i.jv, ptr %20, align 8, !tbaa !642
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.jw = load ptr, ptr %0, align 8, !tbaa !533, !noalias !6944
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %5
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %4
  store ptr %i.jy, ptr %22, align 8, !tbaa !533, !alias.scope !6945
  store ptr %.sroa.0189.0.lcssa297, ptr %23, align 8, !tbaa !533, !alias.scope !6946
  store ptr %i.i, ptr %24, align 8, !tbaa !533, !alias.scope !6947
  store ptr %7, ptr %25, align 8, !tbaa !642, !alias.scope !6948
  store ptr %i.jd, ptr %26, align 8, !tbaa !533, !alias.scope !6949
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_NS3_IS8_EESA_SJ_NS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.193") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0214.lcssa298, i64 noundef 0, i64 noundef %.0214.lcssa298, i1 noundef zeroext true)
  %i.jz = load ptr, ptr %21, align 8, !tbaa !509, !noalias !6950
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  %i.ka = load ptr, ptr %20, align 8, !tbaa !642  ; 2 uses
  %i.kb = load ptr, ptr %i.a, align 8, !tbaa !509 ; 3 uses
  %.not15.i = icmp eq ptr %i.kb, %i.ka
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.y
  %.sroa.0.0 = phi ptr [ %i.kq, %bb.y ], [ %i.jz, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 3 uses
  %i.kc = phi ptr [ %.306, %bb.y ], [ %.sroa.0179.0.lcssa296, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 4 uses
  %.016.i = phi ptr [ %.016.i., %bb.y ], [ %i.ka, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 4 uses
  %i.kd = icmp eq ptr %.058.lcssa299, %i.kc
  br i1 %i.kd, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i96, %.lr.ph.i.i.i
  %i.ke = phi ptr [ %i.kg, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i96 ] ; 2 uses
  %.05.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i96 ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 -8 ; 2 uses
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !501, !noalias !6951
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !529, !noalias !6951
  %i.ki = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !501, !noalias !6951
  %i.kk = getelementptr inbounds i8, ptr %i.ke, i64 -4
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !530, !noalias !6951
  %.not.i.i.i = icmp eq ptr %i.kb, %i.kf
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !107

bb.y:                                             ; preds = %.lr.ph.i96
  %i.kl = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.km = getelementptr inbounds i8, ptr %i.kc, i64 -8 ; 2 uses
  %i.kn = load i32, ptr %i.kl, align 4, !tbaa !501 ; 2 uses
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !501 ; 2 uses
  %i.kp = icmp slt i32 %i.kn, %i.ko               ; 3 uses
  %i.kq = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = call i32 @llvm.smax.i32(i32 %i.kn, i32 %i.ko)
  %..016.i = select i1 %i.kp, ptr %i.kc, ptr %.016.i
  %.306 = select i1 %i.kp, ptr %i.km, ptr %i.kc
  %.016.i. = select i1 %i.kp, ptr %.016.i, ptr %i.kl ; 2 uses
  store i32 %., ptr %i.kq, align 4, !tbaa !529
  %.sink.in = getelementptr inbounds i8, ptr %..016.i, i64 -4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !501
  %i.kr = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink, ptr %i.kr, align 4, !tbaa !530
  %.not.i98 = icmp eq ptr %i.kb, %.016.i.
  br i1 %.not.i98, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i96, !llvm.loop !108

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.y, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 12 uses
  %19 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 11 uses
  %20 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 8 uses
  %21 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 6 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.193", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !533, !noalias !7022 ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.d = load ptr, ptr %7, align 8, !tbaa !509    ; 3 uses
  store ptr %i.d, ptr %18, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store ptr %i.d, ptr %19, align 8, !tbaa !533
  %i.e = load ptr, ptr %1, align 8, !tbaa !509    ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %3 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  store ptr %i.f, ptr %20, align 8, !tbaa !533
  %i.g = mul i64 %i.a, %2
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g ; 18 uses
  %.not251 = icmp eq i64 %i.a, 0
  br i1 %.not251, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp eq i64 %5, 0
  %i.j = select i1 %i.i, i64 0, i64 %4            ; 2 uses
  %i.k = add i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.a)
  %.idx242 = shl i64 %2, 3                        ; 5 uses
  %.not62 = icmp eq i64 %6, 0
  %.not68.i = icmp eq i64 %2, 0
  %i.l = shl i64 %3, 3                            ; 2 uses
  %i.m = shl i64 %2, 3
  %i.n = or disjoint i64 %i.l, 4                  ; 2 uses
  %scevgep360 = getelementptr i8, ptr %i.e, i64 %i.n ; 5 uses
  %i.o = getelementptr i8, ptr %i.e, i64 %i.l
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = getelementptr i8, ptr %i.e, i64 %i.n
  %i.r = add i64 %.idx242, -8                     ; 2 uses
  %i.s = lshr exact i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 296
  %stride.check = icmp slt i64 %.idx242, 0
  %stride.check.a = icmp slt i64 %.idx242, 0
  %bound0419 = icmp ult ptr %i.f, %i.h
  %bound1420 = icmp ult ptr %scevgep360, %i.h
  %found.conflict421 = and i1 %bound0419, %bound1420
  %n.vec = and i64 %i.t, 4611686018427387902      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.v = phi ptr [ %i.d, %.lr.ph ], [ %i.eu, %bb.x ] ; 5 uses
  %i.w = phi ptr [ %i.f, %.lr.ph ], [ %i.au, %bb.x ] ; 8 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fc, %bb.x ] ; 3 uses
  %.051261 = phi i64 [ %i.j, %.lr.ph ], [ %i.fa, %bb.x ] ; 4 uses
  %.052260 = phi i8 [ 1, %.lr.ph ], [ %.153, %bb.x ] ; 5 uses
  %.057259 = phi i64 [ %5, %.lr.ph ], [ %.158, %bb.x ] ; 2 uses
  %.0229258 = phi i64 [ %i.a, %.lr.ph ], [ %i.fd, %bb.x ] ; 4 uses
  %.sroa.0204.0257 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.0204.2, %bb.x ] ; 16 uses
  %.sroa.0200.0256 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0200.1, %bb.x ] ; 10 uses
  %.sroa.0194.0255 = phi ptr [ %i.f, %.lr.ph ], [ %i.ex, %bb.x ] ; 5 uses
  %.sroa.0183.0252 = phi ptr [ %i.b, %.lr.ph ], [ %i.ey, %bb.x ] ; 16 uses
  %i.x = ptrtoaddr ptr %i.v to i64                ; 2 uses
  %i.y = mul i64 %i.m, %indvar                    ; 2 uses
  %scevgep354 = getelementptr i8, ptr %i.p, i64 %i.y
  %scevgep358.a = getelementptr i8, ptr %i.q, i64 %i.y
  %i.z = icmp ult i64 %.051261, %.0
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.ao, %.thread20.i ], [ %.051261, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.an, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.01822.i, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.aa
  %i.ac = mul i64 %.023.i, %2
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %.sroa.0183.0252, i64 %.01822.i
  %i.af = getelementptr inbounds [8 x i8], ptr %.sroa.0183.0252, i64 %.023.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !501 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !501 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !501
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !501
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !109

_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread20.i ] ; 7 uses
  %i.ap = add i64 %.018.lcssa.i, 2
  %i.aq = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ap) ; 2 uses
  %.sroa.speculated218 = call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0229258)
  %i.ar = mul i64 %.018.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ar, 3                        ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 %.idx   ; 13 uses
  %i.at = getelementptr [8 x i8], ptr %i.as, i64 %2 ; 6 uses
  %i.au = getelementptr i8, ptr %i.w, i64 %.idx242 ; 8 uses
  %i.av = load ptr, ptr %18, align 8, !tbaa !533  ; 10 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.v
  %.not61 = icmp eq i64 %.057259, 0
  br i1 %.not61, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = load i32, ptr %i.h, align 4, !tbaa !501
  %i.az = load i32, ptr %i.as, align 4, !tbaa !501
  %i.ba = icmp slt i32 %i.ay, %i.az
  br i1 %i.ba, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old64 = trunc nuw i8 %.052260 to i1
  br i1 %.old64, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx243 = shl nsw i64 %.018.lcssa.i, 3
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0183.0252, i64 %.idx243 ; 13 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !533, !noalias !7023
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.a
  %i.be = icmp eq ptr %.sroa.0204.0257, %i.bd
  br i1 %i.be, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bf = trunc nuw i8 %.052260 to i1
  br i1 %i.bf, label %bb.j, label %.thread308

.thread308:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bg = load i32, ptr %i.bb, align 4, !tbaa !501
  %i.bh = load i32, ptr %.sroa.0204.0257, align 4, !tbaa !501
  %i.bi = icmp slt i32 %i.bg, %i.bh               ; 4 uses
  %i.bj = trunc nuw i8 %.052260 to i1             ; 2 uses
  %i.bk = xor i1 %i.bi, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bl = phi i1 [ true, %._crit_edge ], [ %i.bi, %bb.i ]
  br i1 %i.ax, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bm = add i64 %i.x, -8
  %i.bn = sub i64 %i.bm, %i.aw                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check443 = icmp ult i64 %i.bn, 24
  br i1 %min.iters.check443, label %.lr.ph.i.i.preheader545, label %vector.memcheck434

vector.memcheck434:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep435.a = getelementptr i8, ptr %i.av, i64 8
  %i.bq = add i64 %i.x, -8
  %i.br = sub i64 %i.bq, %i.aw
  %i.bs = and i64 %i.br, -8                       ; 2 uses
  %scevgep436.a = getelementptr i8, ptr %scevgep435.a, i64 %i.bs
  %scevgep437.a = getelementptr i8, ptr %.sroa.0200.0256, i64 8
  %scevgep438 = getelementptr i8, ptr %scevgep437.a, i64 %i.bs
  %bound0439 = icmp ult ptr %i.av, %scevgep438
  %bound1440 = icmp ult ptr %.sroa.0200.0256, %scevgep436.a
  %found.conflict441 = and i1 %bound0439, %bound1440
  br i1 %found.conflict441, label %.lr.ph.i.i.preheader545, label %vector.ph444

vector.ph444:                                     ; preds = %vector.memcheck434
  %n.vec445 = and i64 %i.bp, 4611686018427387902  ; 3 uses
  %i.bt = shl i64 %n.vec445, 3                    ; 2 uses
  %i.bu = getelementptr i8, ptr %.sroa.0200.0256, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.av, i64 %i.bt
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph444
  %index447 = phi i64 [ 0, %vector.ph444 ], [ %index.next458, %vector.body446 ] ; 2 uses
  %i.bw = shl i64 %index447, 3                    ; 2 uses
  %next.gep448.a = getelementptr i8, ptr %.sroa.0200.0256, i64 %i.bw ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.av, i64 %i.bw ; 2 uses
  %wide.vec450 = load <4 x i32>, ptr %next.gep449, align 4, !tbaa !501, !alias.scope !7024, !noalias !7025
  %wide.vec453 = load <4 x i32>, ptr %next.gep448.a, align 4, !tbaa !501, !alias.scope !7026, !noalias !7025
  store <4 x i32> %wide.vec453, ptr %next.gep449, align 4, !tbaa !501, !alias.scope !7024, !noalias !7025
  store <4 x i32> %wide.vec450, ptr %next.gep448.a, align 4, !tbaa !501, !alias.scope !7026, !noalias !7025
  %index.next458 = add nuw i64 %index447, 2       ; 2 uses
  %i.bx = icmp eq i64 %index.next458, %n.vec445
  br i1 %i.bx, label %middle.block459, label %vector.body446, !llvm.loop !6963

middle.block459:                                  ; preds = %vector.body446
  %cmp.n460 = icmp eq i64 %i.bp, %n.vec445
  br i1 %cmp.n460, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader545

.lr.ph.i.i.preheader545:                          ; preds = %vector.memcheck434, %.lr.ph.i.i.preheader, %middle.block459
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0200.0256, %vector.memcheck434 ], [ %.sroa.0200.0256, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block459 ]
  %.ph546 = phi ptr [ %i.av, %vector.memcheck434 ], [ %i.av, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block459 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader545, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader545 ] ; 4 uses
  %i.by = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.ph546, %.lr.ph.i.i.preheader545 ] ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !501, !noalias !7025
  %i.ca = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !501, !noalias !7025
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !501, !noalias !7025
  store i32 %i.bz, ptr %.sroa.0.0.i, align 4, !tbaa !501, !noalias !7025
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !501, !noalias !7025
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !501, !noalias !7025
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !501, !noalias !7025
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !501, !noalias !7025
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.cf, %i.v
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !6964

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block459, %bb.j
  %i.ch = load ptr, ptr %7, align 8, !tbaa !509   ; 15 uses
  store ptr %i.ch, ptr %19, align 8, !tbaa !533
  store ptr %i.ch, ptr %18, align 8, !tbaa !533
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i66.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i66.preheader
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.idx242 ; 10 uses
  %i.cj = shl i64 %.018.lcssa.i, 3
  %i.ck = add i64 %i.cj, 8
  %i.cl = mul i64 %2, %i.ck
  %scevgep355 = getelementptr i8, ptr %scevgep354, i64 %i.cl ; 5 uses
  %scevgep356 = getelementptr i8, ptr %i.ch, i64 4 ; 5 uses
  %scevgep359 = getelementptr i8, ptr %scevgep358.a, i64 %.idx ; 5 uses
  %bound0 = icmp ult ptr %i.ch, %scevgep355
  %bound1 = icmp ult ptr %i.as, %i.ci
  %found.conflict = and i1 %bound0, %bound1
  %bound0360 = icmp ult ptr %i.ch, %i.ci
  %bound1361 = icmp ult ptr %scevgep356, %i.ci
  %found.conflict362 = and i1 %bound0360, %bound1361
  %conflict.rdx = or i1 %found.conflict, %found.conflict362
  %bound0363 = icmp ult ptr %i.ch, %i.at
  %bound1364 = icmp ult ptr %scevgep359, %i.ci
  %found.conflict365 = and i1 %bound0363, %bound1364
  %conflict.rdx366 = or i1 %conflict.rdx, %found.conflict365
  %bound0367 = icmp ult ptr %i.ch, %i.h
  %bound1368 = icmp ult ptr %i.f, %i.ci
  %found.conflict369 = and i1 %bound0367, %bound1368
  %29 = or i1 %found.conflict369, %stride.check
  %conflict.rdx370 = or i1 %conflict.rdx366, %29
  %bound0377 = icmp ult ptr %i.ch, %i.h
  %bound1378 = icmp ult ptr %scevgep360, %i.ci
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx375 = or i1 %found.conflict379, %conflict.rdx370
  %bound0381 = icmp ult ptr %i.as, %i.ci
  %bound1382 = icmp ult ptr %scevgep356, %scevgep355
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx379 = or i1 %conflict.rdx375, %found.conflict383
  %bound0385 = icmp ult ptr %i.as, %i.at
  %bound1386 = icmp ult ptr %scevgep359, %scevgep355
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx383 = or i1 %conflict.rdx379, %found.conflict387
  %bound0390 = icmp ult ptr %i.as, %i.h
  %bound1391 = icmp ult ptr %i.f, %scevgep355
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx388 = or i1 %found.conflict392, %conflict.rdx383
  %bound1396 = icmp ult ptr %i.as, %i.h
  %bound0399 = icmp ult ptr %scevgep360, %scevgep355
  %found.conflict391 = and i1 %bound1396, %bound0399
  %conflict.rdx393 = or i1 %found.conflict391, %conflict.rdx388
  %bound0404 = icmp ult ptr %scevgep356, %i.at
  %bound1405 = icmp ult ptr %scevgep359, %i.ci
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict406
  %bound1410 = icmp ult ptr %scevgep356, %i.h
  %bound0414 = icmp ult ptr %i.f, %i.ci
  %found.conflict400 = and i1 %bound1410, %bound0414
  %conflict.rdx402 = or i1 %found.conflict400, %conflict.rdx397
  %bound0403 = icmp ult ptr %scevgep356, %i.h
  %bound1404 = icmp ult ptr %scevgep360, %i.ci
  %found.conflict405 = and i1 %bound0403, %bound1404
  %op.rdx525 = or i1 %found.conflict405, %stride.check.a
  %op.rdx526 = or i1 %conflict.rdx402, %op.rdx525
  %bound0408 = icmp ult ptr %scevgep359, %i.h
  %bound1409 = icmp ult ptr %i.f, %i.at
  %found.conflict410 = and i1 %bound0408, %bound1409
  %op.rdx531 = or i1 %found.conflict410, %op.rdx526
  %bound0413 = icmp ult ptr %scevgep359, %i.h
  %bound1414 = icmp ult ptr %scevgep360, %i.at
  %found.conflict415 = and i1 %bound0413, %bound1414
  %op.rdx535 = or i1 %found.conflict415, %op.rdx531
  %op.rdx536 = or i1 %found.conflict421, %op.rdx535
  br i1 %op.rdx536, label %.lr.ph.i66.preheader543, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cm = getelementptr i8, ptr %i.ch, i64 %i.u   ; 2 uses
  %i.cn = getelementptr i8, ptr %i.as, i64 %i.u
  %i.co = getelementptr i8, ptr %i.w, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  %next.gep425.a = getelementptr i8, ptr %i.as, i64 %i.cp ; 2 uses
  %next.gep426 = getelementptr i8, ptr %i.w, i64 %i.cp ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 4, !alias.scope !7027, !noalias !7028
  %wide.vec = load <4 x i32>, ptr %next.gep425.a, align 4, !tbaa !501, !noalias !7029
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !noalias !7029
  %wide.vec428 = load <4 x i32>, ptr %next.gep426, align 4, !tbaa !501, !noalias !7029
  store <4 x i32> %wide.vec428, ptr %next.gep425.a, align 4, !tbaa !501, !noalias !7029
  store <2 x i64> %wide.load, ptr %next.gep426, align 4, !alias.scope !7030, !noalias !7031
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !6974

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i66.preheader543

.lr.ph.i66.preheader543:                          ; preds = %vector.memcheck, %.lr.ph.i66.preheader, %middle.block
  %.sroa.0144.0.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i66.preheader ], [ %i.cm, %middle.block ]
  %.sroa.0146.0.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i66.preheader ], [ %i.cn, %middle.block ]
  %.ph544 = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i66.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.lr.ph.i66.preheader543, %.lr.ph.i66
  %.sroa.0144.0 = phi ptr [ %i.cu, %.lr.ph.i66 ], [ %.sroa.0144.0.ph, %.lr.ph.i66.preheader543 ] ; 4 uses
  %.sroa.0146.0 = phi ptr [ %i.ct, %.lr.ph.i66 ], [ %.sroa.0146.0.ph, %.lr.ph.i66.preheader543 ] ; 4 uses
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i66 ], [ %.ph544, %.lr.ph.i66.preheader543 ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0146.0, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0144.0, i64 8 ; 2 uses
  %i.cv = load i64, ptr %.sroa.0144.0, align 4, !noalias !7029
  %i.cw = load i32, ptr %.sroa.0146.0, align 4, !tbaa !501, !noalias !7029
  store i32 %i.cw, ptr %.sroa.0144.0, align 4, !tbaa !529, !noalias !7029
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0146.0, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !501, !noalias !7029
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0144.0, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !530, !noalias !7029
  %i.da = load i32, ptr %i.cr, align 4, !tbaa !501, !noalias !7029
  store i32 %i.da, ptr %.sroa.0146.0, align 4, !tbaa !529, !noalias !7029
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !501, !noalias !7029
  store i32 %i.dc, ptr %i.cx, align 4, !tbaa !530, !noalias !7029
  store i64 %i.cv, ptr %i.cr, align 4, !noalias !7029
  %.not6.i = icmp eq ptr %i.cs, %i.au
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i66, !llvm.loop !6975

._crit_edge.i:                                    ; preds = %.lr.ph.i66, %middle.block, %.preheader.i
  %.sroa.0144.1 = phi ptr [ %i.ch, %.preheader.i ], [ %i.cm, %middle.block ], [ %i.cu, %.lr.ph.i66 ] ; 2 uses
  %.not7.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not7.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dd = load <2 x i32>, ptr %i.bb, align 4, !tbaa !501, !noalias !7029
  %i.de = load <2 x i32>, ptr %.sroa.0183.0252, align 4, !tbaa !501, !noalias !7029
  store <2 x i32> %i.de, ptr %i.bb, align 4, !tbaa !501, !noalias !7029
  store <2 x i32> %i.dd, ptr %.sroa.0183.0252, align 4, !tbaa !501, !noalias !7029
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.df = icmp eq ptr %i.bb, %.sroa.0204.0257
  br i1 %i.df, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = icmp eq ptr %.sroa.0204.0257, %.sroa.0183.0252
  %spec.select = select i1 %i.dg, ptr %i.bb, ptr %.sroa.0204.0257
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.0144.2 = phi ptr [ %i.ch, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %.sroa.0144.1, %bb.m ], [ %.sroa.0144.1, %bb.l ] ; 2 uses
  %.sroa.0204.5 = phi ptr [ %.sroa.0204.0257, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %spec.select, %bb.m ], [ %.sroa.0183.0252, %bb.l ]
  store ptr %.sroa.0144.2, ptr %19, align 8, !tbaa !533
  %i.dh = load ptr, ptr %20, align 8, !tbaa !509
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %.sroa.0200.0256, ptr %9, align 8, !tbaa !533, !noalias !7032
  store ptr %.sroa.0194.0255, ptr %10, align 8, !tbaa !533, !noalias !7032
  store ptr %i.au, ptr %11, align 8, !tbaa !533, !noalias !7032
  store ptr %i.as, ptr %12, align 8, !tbaa !533, !noalias !7032
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %21, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

bb.p:                                             ; preds = %.thread308, %bb.n
  %i.di = phi i1 [ true, %.thread308 ], [ %i.bi, %bb.n ]
  store ptr %.sroa.0200.0256, ptr %13, align 8, !tbaa !533, !noalias !7032
  store ptr %.sroa.0194.0255, ptr %14, align 8, !tbaa !533, !noalias !7032
  store ptr %i.au, ptr %15, align 8, !tbaa !533, !noalias !7032
  store ptr %i.as, ptr %16, align 8, !tbaa !533, !noalias !7032
  store ptr %8, ptr %17, align 8, !tbaa !640, !noalias !7032
  call void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEENS0_7swap_opEEET_SJ_SJ_RSJ_SJ_SJ_RT0_SM_T1_T2_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %21, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dj = phi i1 [ %i.bi, %bb.o ], [ %i.di, %bb.p ]
  %i.dk = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.dl = load ptr, ptr %18, align 8, !tbaa !533
  %i.dm = load ptr, ptr %19, align 8, !tbaa !533  ; 4 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm                ; 2 uses
  br i1 %i.dn, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_b.exit
  %i.do = load ptr, ptr %7, align 8, !tbaa !509   ; 5 uses
  store ptr %i.do, ptr %19, align 8, !tbaa !533
  store ptr %i.do, ptr %18, align 8, !tbaa !533
  %i.dp = load ptr, ptr %20, align 8, !tbaa !533  ; 4 uses
  %i.dq = ptrtoint ptr %i.au to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.du ; 2 uses
  %.not.i67 = icmp eq ptr %i.dp, %i.dv
  br i1 %.not.i67, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit76, label %.preheader.i68

.preheader.i68:                                   ; preds = %bb.q
  %.not68.i69 = icmp eq ptr %i.dp, %i.au
  br i1 %.not68.i69, label %._crit_edge.i72, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.preheader.i68, %.lr.ph.i70
  %.sroa.0125.0 = phi ptr [ %i.dy, %.lr.ph.i70 ], [ %i.dv, %.preheader.i68 ] ; 4 uses
  %.sroa.0123.0 = phi ptr [ %i.dz, %.lr.ph.i70 ], [ %i.do, %.preheader.i68 ] ; 4 uses
  %i.dw = phi ptr [ %i.dx, %.lr.ph.i70 ], [ %i.dp, %.preheader.i68 ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0125.0, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 8 ; 2 uses
  %i.ea = load i64, ptr %.sroa.0123.0, align 4, !noalias !7033
  %i.eb = load i32, ptr %.sroa.0125.0, align 4, !tbaa !501, !noalias !7033
  store i32 %i.eb, ptr %.sroa.0123.0, align 4, !tbaa !529, !noalias !7033
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0125.0, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !501, !noalias !7033
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0123.0, i64 4
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !530, !noalias !7033
  %i.ef = load i32, ptr %i.dw, align 4, !tbaa !501, !noalias !7033
  store i32 %i.ef, ptr %.sroa.0125.0, align 4, !tbaa !529, !noalias !7033
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !501, !noalias !7033
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !530, !noalias !7033
  store i64 %i.ea, ptr %i.dw, align 4, !noalias !7033
  %.not6.i71 = icmp eq ptr %i.dx, %i.au
  br i1 %.not6.i71, label %._crit_edge.i72, label %.lr.ph.i70, !llvm.loop !6980

._crit_edge.i72:                                  ; preds = %.lr.ph.i70, %.preheader.i68
  %.sroa.0123.1 = phi ptr [ %i.do, %.preheader.i68 ], [ %i.dz, %.lr.ph.i70 ] ; 2 uses
  %.not7.i73 = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not7.i73, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i72
  %i.ei = load <2 x i32>, ptr %i.bb, align 4, !tbaa !501, !noalias !7033
  %i.ej = load <2 x i32>, ptr %.sroa.0183.0252, align 4, !tbaa !501, !noalias !7033
  store <2 x i32> %i.ej, ptr %i.bb, align 4, !tbaa !501, !noalias !7033
  store <2 x i32> %i.ei, ptr %.sroa.0183.0252, align 4, !tbaa !501, !noalias !7033
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i72
  %i.ek = icmp eq ptr %i.bb, %.sroa.0204.0257
  br i1 %i.ek, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit76, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = icmp eq ptr %.sroa.0204.0257, %.sroa.0183.0252
  %spec.select239 = select i1 %i.el, ptr %i.bb, ptr %.sroa.0204.0257
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit76

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit76: ; preds = %bb.t, %bb.s, %bb.q
  %.sroa.0123.2 = phi ptr [ %i.do, %bb.q ], [ %.sroa.0123.1, %bb.t ], [ %.sroa.0123.1, %bb.s ] ; 2 uses
  %.sroa.0204.6 = phi ptr [ %.sroa.0204.0257, %bb.q ], [ %spec.select239, %bb.t ], [ %.sroa.0183.0252, %bb.s ]
  store ptr %.sroa.0123.2, ptr %19, align 8, !tbaa !533
end_hunk_4
