Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 512
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_:bb.a
  %next.gep475 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.id
  %next.gep476 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.ie
  %next.gep477 = getelementptr i8, ptr %i.hn, i64 %i.id
  %next.gep478 = getelementptr i8, ptr %i.hn, i64 %i.ie
  %wide.vec479 = load <4 x i32>, ptr %next.gep477, align 4, !tbaa !337, !alias.scope !2546
  %wide.vec482 = load <4 x i32>, ptr %next.gep478, align 4, !tbaa !337, !alias.scope !2546
  store <4 x i32> %wide.vec479, ptr %next.gep475, align 4, !tbaa !337, !alias.scope !2547, !noalias !2546
  store <4 x i32> %wide.vec482, ptr %next.gep476, align 4, !tbaa !337, !alias.scope !2547, !noalias !2546
  %index.next487 = add nuw i64 %index474, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next487, %n.vec472
  br i1 %i.if, label %middle.block488, label %vector.body473, !llvm.loop !2521

middle.block488:                                  ; preds = %vector.body473
  %cmp.n489 = icmp eq i64 %i.hv, %n.vec472
  br i1 %cmp.n489, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145.preheader528

.lr.ph.i.i145.preheader528:                       ; preds = %vector.memcheck467, %.lr.ph.i.i145.preheader, %middle.block488
  %.010.i.i146.ph = phi ptr [ %.0114.lcssa.ph, %vector.memcheck467 ], [ %.0114.lcssa.ph, %.lr.ph.i.i145.preheader ], [ %i.ib, %middle.block488 ]
  %.079.i.i147.ph = phi ptr [ %i.hn, %vector.memcheck467 ], [ %i.hn, %.lr.ph.i.i145.preheader ], [ %i.ic, %middle.block488 ]
  br label %.lr.ph.i.i145

.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader528, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.il, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader528 ] ; 3 uses
  %.079.i.i147 = phi ptr [ %i.ik, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader528 ] ; 3 uses
  %i.ig = load i32, ptr %.079.i.i147, align 4, !tbaa !337
  store i32 %i.ig, ptr %.010.i.i146, align 4, !tbaa !346
  %i.ih = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !337
  %i.ij = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !347
  %i.ik = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.ik, %i.hm
  br i1 %.not.i.i148, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145, !llvm.loop !2522

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150: ; preds = %.lr.ph.i.i145, %middle.block488, %bb.a, %.thread
  %.0108.lcssa280 = phi ptr [ %1, %bb.a ], [ %i.hp, %.thread ], [ %i.hp, %middle.block488 ], [ %i.hp, %.lr.ph.i.i145 ]
  %.0111.lcssa279 = phi ptr [ %i.g, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block488 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa278 = phi ptr [ %i.f, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %middle.block488 ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa277 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %middle.block488 ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 3 uses
  %i.im = getelementptr i8, ptr %i.i, i64 %.idx210 ; 3 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  %i.in = add i64 %.idx210, -8                    ; 2 uses
  %i.io = lshr exact i64 %i.in, 3
  %i.ip = add nuw nsw i64 %i.io, 1                ; 2 uses
  %min.iters.check498 = icmp ult i64 %i.in, 40
  br i1 %min.iters.check498, label %.lr.ph.i.i152.preheader527, label %vector.memcheck499

vector.memcheck499:                               ; preds = %.lr.ph.i.i152.preheader
  %i.iq = getelementptr i8, ptr %7, i64 %.idx210
  %bound0500 = icmp ult ptr %7, %i.im
  %bound1501 = icmp ult ptr %i.i, %i.iq
  %found.conflict502 = and i1 %bound0500, %bound1501
  br i1 %found.conflict502, label %.lr.ph.i.i152.preheader527, label %vector.ph503

vector.ph503:                                     ; preds = %vector.memcheck499
  %n.vec504 = and i64 %i.ip, 4611686018427387900  ; 3 uses
  %i.ir = shl i64 %n.vec504, 3                    ; 2 uses
  %i.is = getelementptr i8, ptr %7, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.i, i64 %i.ir
  br label %vector.body505

vector.body505:                                   ; preds = %vector.body505, %vector.ph503
  %index506 = phi i64 [ 0, %vector.ph503 ], [ %index.next519, %vector.body505 ] ; 2 uses
  %i.iu = shl i64 %index506, 3                    ; 3 uses
  %i.iv = or disjoint i64 %i.iu, 16               ; 2 uses
  %next.gep507 = getelementptr i8, ptr %7, i64 %i.iu
  %next.gep508 = getelementptr i8, ptr %7, i64 %i.iv
  %next.gep509 = getelementptr i8, ptr %i.i, i64 %i.iu
  %next.gep510 = getelementptr i8, ptr %i.i, i64 %i.iv
  %wide.vec511 = load <4 x i32>, ptr %next.gep509, align 4, !tbaa !337, !alias.scope !2548
  %wide.vec514 = load <4 x i32>, ptr %next.gep510, align 4, !tbaa !337, !alias.scope !2548
  store <4 x i32> %wide.vec511, ptr %next.gep507, align 4, !tbaa !337, !alias.scope !2549, !noalias !2548
  store <4 x i32> %wide.vec514, ptr %next.gep508, align 4, !tbaa !337, !alias.scope !2549, !noalias !2548
  %index.next519 = add nuw i64 %index506, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next519, %n.vec504
  br i1 %i.iw, label %middle.block520, label %vector.body505, !llvm.loop !2526

middle.block520:                                  ; preds = %vector.body505
  %cmp.n521 = icmp eq i64 %i.ip, %n.vec504
  br i1 %cmp.n521, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader527

.lr.ph.i.i152.preheader527:                       ; preds = %vector.memcheck499, %.lr.ph.i.i152.preheader, %middle.block520
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck499 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.is, %middle.block520 ]
  %.079.i.i154.ph = phi ptr [ %i.i, %vector.memcheck499 ], [ %i.i, %.lr.ph.i.i152.preheader ], [ %i.it, %middle.block520 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader527, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.jc, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader527 ] ; 3 uses
  %.079.i.i154 = phi ptr [ %i.jb, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader527 ] ; 3 uses
  %i.ix = load i32, ptr %.079.i.i154, align 4, !tbaa !337
  store i32 %i.ix, ptr %.010.i.i153, align 4, !tbaa !346
  %i.iy = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !337
  %i.ja = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !347
  %i.jb = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.jb, %i.im
  br i1 %.not.i.i155, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152, !llvm.loop !2527

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157: ; preds = %.lr.ph.i.i152, %middle.block520, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.jd, ptr %i.c, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.jd, ptr %10, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %4
  store ptr %i.jf, ptr %12, align 8, !tbaa !386, !alias.scope !2550
  store ptr %.0191.lcssa278, ptr %13, align 8, !tbaa !386, !alias.scope !2551
  store ptr %i.i, ptr %14, align 8, !tbaa !386, !alias.scope !2552
  store ptr %7, ptr %15, align 8, !tbaa !386, !alias.scope !2553
  store ptr %i.im, ptr %16, align 8, !tbaa !386, !alias.scope !2554
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7move_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa277, i64 noundef 0, i64 noundef %.0195.lcssa277, i1 noundef zeroext true)
  %i.jg = load ptr, ptr %11, align 8, !tbaa !386
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.jh = load ptr, ptr %10, align 8, !tbaa !386  ; 2 uses
  %i.ji = load ptr, ptr %i.b, align 8, !tbaa !330 ; 3 uses
  %.not27.i = icmp eq ptr %i.ji, %i.jh
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, %bb.y
  %.030.i = phi ptr [ %.030..i, %bb.y ], [ %i.jh, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %..01929.i, %bb.y ], [ %.0111.lcssa279, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.jv, %bb.y ], [ %i.jg, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 3 uses
  %i.jj = icmp eq ptr %.0108.lcssa280, %.01929.i
  br i1 %i.jj, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.jl, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.jk, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -8 ; 3 uses
  %i.jl = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -8 ; 2 uses
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !337
  store i32 %i.jm, ptr %i.jl, align 4, !tbaa !346
  %i.jn = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !337
  %i.jp = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !347
  %.not.i.i.i = icmp eq ptr %i.ji, %i.jk
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !32

bb.y:                                             ; preds = %.lr.ph.i158
  %i.jq = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 2 uses
  %i.js = load i32, ptr %i.jq, align 4, !tbaa !337 ; 2 uses
  %i.jt = load i32, ptr %i.jr, align 4, !tbaa !337 ; 2 uses
  %i.ju = icmp slt i32 %i.js, %i.jt               ; 3 uses
  %i.jv = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 2 uses
  %..i = call i32 @llvm.smax.i32(i32 %i.js, i32 %i.jt)
  %.01929..030.i = select i1 %i.ju, ptr %.01929.i, ptr %.030.i
  %..01929.i = select i1 %i.ju, ptr %i.jr, ptr %.01929.i
  %.030..i = select i1 %i.ju, ptr %.030.i, ptr %i.jq ; 2 uses
  store i32 %..i, ptr %i.jv, align 4, !tbaa !346
  %.sink.in.i = getelementptr inbounds i8, ptr %.01929..030.i, i64 -4
  %.sink.i159 = load i32, ptr %.sink.in.i, align 4, !tbaa !337
  %i.jw = getelementptr inbounds i8, ptr %.02128.i, i64 -4
  store i32 %.sink.i159, ptr %i.jw, align 4, !tbaa !347
  %.not.i160 = icmp eq ptr %i.ji, %.030..i
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !36

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit: ; preds = %bb.y, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.f = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !330
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g ; 12 uses
  %.not216 = icmp eq i64 %i.d, 0
  br i1 %.not216, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp eq i64 %5, 0
  %i.j = select i1 %i.i, i64 0, i64 %4            ; 2 uses
  %i.k = add i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.d)
  %.idx208 = shl i64 %2, 3                        ; 6 uses
  %.not121 = icmp eq i64 %6, 0
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %.not2830.i = icmp eq i64 %2, 0
  %i.m = shl i64 %3, 3                            ; 3 uses
  %17 = getelementptr i8, ptr %1, i64 %i.m
  %scevgep = getelementptr i8, ptr %17, i64 %.idx208 ; 2 uses
  %i.n = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.n ; 4 uses
  %scevgep374 = getelementptr i8, ptr %7, i64 4   ; 4 uses
  %scevgep375 = getelementptr i8, ptr %7, i64 %.idx208 ; 6 uses
  %i.o = add i64 %.idx208, -8                     ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 232
  %i.r = getelementptr i8, ptr %1, i64 %i.m
  %i.s = getelementptr i8, ptr %i.r, i64 -4
  %bound0376 = icmp ult ptr %7, %scevgep375
  %bound1377 = icmp ult ptr %scevgep374, %scevgep375
  %found.conflict378 = and i1 %bound0376, %bound1377
  %i.t = getelementptr i8, ptr %1, i64 %i.n
  %bound0383 = icmp ult ptr %7, %i.h              ; 2 uses
  %bound1384 = icmp ult ptr %i.f, %scevgep375     ; 2 uses
  %found.conflict385 = and i1 %bound0383, %bound1384
  %stride.check = icmp slt i64 %.idx208, 0
  %i.u = or i1 %found.conflict385, %stride.check
  %bound1387 = icmp ult ptr %scevgep.a, %scevgep375 ; 2 uses
  %found.conflict388 = and i1 %bound0383, %bound1387
  %invariant.op = or i1 %i.u, %found.conflict388
  %bound0407 = icmp ult ptr %scevgep374, %i.h
  %i.v = or i1 %bound1384, %bound1387
  %i.w = and i1 %bound0407, %i.v
  %bound0419 = icmp ult ptr %i.f, %scevgep
  %bound1420 = icmp ult ptr %scevgep.a, %scevgep
  %found.conflict421 = and i1 %bound0419, %bound1420
  %n.vec = and i64 %i.q, 4611686018427387902      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 3 uses
  %i.y = getelementptr i8, ptr %7, i64 %i.x       ; 2 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.z = phi ptr [ %7, %.lr.ph ], [ %i.ez, %bb.x ] ; 5 uses
  %i.aa = phi ptr [ %i.f, %.lr.ph ], [ %i.ax, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fh, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.j, %.lr.ph ], [ %i.ff, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.fd, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.fc, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.fi, %bb.x ] ; 4 uses
  %i.ab = ptrtoaddr ptr %i.z to i64
  %i.ac = icmp ult i64 %.0104226, %.0
  br i1 %i.ac, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ar, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.aq, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ad = mul i64 %.02226.i, %2
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = mul i64 %.027.i, %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !337 ; 2 uses
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !337 ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.am = icmp slt i32 %i.ak, %i.aj
  br i1 %i.am, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !337
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !337
  %i.ap = icmp slt i32 %i.an, %i.ao
  %cond.fr.i = freeze i1 %i.ap
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.aq = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ar = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !39

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.aq, %.thread24.i ] ; 7 uses
  %i.as = add i64 %.022.lcssa.i, 2
  %i.at = call i64 @llvm.umax.i64(i64 %.0, i64 %i.as) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.at, i64 %.0195217)
  %i.au = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.au, 3                        ; 2 uses
  %i.av = getelementptr i8, ptr %i.aa, i64 %.idx  ; 11 uses
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %2 ; 6 uses
  %i.ax = getelementptr i8, ptr %i.aa, i64 %.idx208 ; 8 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !330 ; 10 uses
  %i.az = ptrtoaddr ptr %i.ay to i64
  %i.ba = icmp eq ptr %i.ay, %i.z
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = load i32, ptr %i.h, align 4, !tbaa !337
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !337
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.be = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bf = icmp eq ptr %.0191218, %i.l
  br i1 %i.bf, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bg = trunc nuw i8 %.0108222 to i1
  br i1 %i.bg, label %bb.j, label %.thread272

.thread272:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !337
  %i.bi = load i32, ptr %.0191218, align 4, !tbaa !337
  %i.bj = icmp slt i32 %i.bh, %i.bi               ; 4 uses
  %i.bk = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bl = xor i1 %i.bj, %i.bk
  br i1 %i.bl, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bm = phi i1 [ true, %._crit_edge ], [ %i.bj, %bb.i ]
  br i1 %i.ba, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bn = add i64 %i.ab, -8
  %i.bo = sub i64 %i.bn, %i.az                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check441 = icmp ult i64 %i.bo, 24
  br i1 %min.iters.check441, label %.lr.ph.i.i.preheader534, label %vector.memcheck442

vector.memcheck442:                               ; preds = %.lr.ph.i.i.preheader
  %i.br = and i64 %i.bo, -8
  %i.bs = add i64 %i.br, 8                        ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ay, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.0114219, i64 %i.bs
  %bound0443 = icmp ult ptr %i.ay, %i.bu
  %bound1444 = icmp ult ptr %.0114219, %i.bt
  %found.conflict445 = and i1 %bound0443, %bound1444
  br i1 %found.conflict445, label %.lr.ph.i.i.preheader534, label %vector.ph446

vector.ph446:                                     ; preds = %vector.memcheck442
  %n.vec447 = and i64 %i.bq, 4611686018427387902  ; 3 uses
  %i.bv = shl i64 %n.vec447, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %.0114219, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.ay, i64 %i.bv
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next460, %vector.body448 ] ; 2 uses
  %i.by = shl i64 %index449, 3                    ; 2 uses
  %next.gep450 = getelementptr i8, ptr %.0114219, i64 %i.by ; 2 uses
  %next.gep451 = getelementptr i8, ptr %i.ay, i64 %i.by ; 2 uses
  %wide.vec452 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !337, !alias.scope !2592, !noalias !2593
  %wide.vec455 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !337, !alias.scope !2593
  store <4 x i32> %wide.vec455, ptr %next.gep451, align 4, !tbaa !337, !alias.scope !2592, !noalias !2593
  store <4 x i32> %wide.vec452, ptr %next.gep450, align 4, !tbaa !337, !alias.scope !2593
  %index.next460 = add nuw i64 %index449, 2       ; 2 uses
  %i.bz = icmp eq i64 %index.next460, %n.vec447
  br i1 %i.bz, label %middle.block461, label %vector.body448, !llvm.loop !2558

middle.block461:                                  ; preds = %vector.body448
  %cmp.n462 = icmp eq i64 %i.bq, %n.vec447
  br i1 %cmp.n462, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader534

.lr.ph.i.i.preheader534:                          ; preds = %vector.memcheck442, %.lr.ph.i.i.preheader, %middle.block461
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck442 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block461 ]
  %.079.i.i.ph = phi ptr [ %i.ay, %vector.memcheck442 ], [ %i.ay, %.lr.ph.i.i.preheader ], [ %i.bx, %middle.block461 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader534, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader534 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader534 ] ; 4 uses
  %i.ca = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.cb = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.cb, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.ca, ptr %.010.i.i, align 4, !tbaa !337
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !337
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !337
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !337
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !337
  %i.cg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cg, %i.z
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !2559

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block461, %bb.j
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairIiiES5_S5_NS0_7swap_opEEET1_T_S8_RS8_T0_SA_SA_S7_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader533, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ci = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cj = shl i64 %.022.lcssa.i, 3
  %i.ck = add i64 %i.cj, 8
  %i.cl = mul i64 %2, %i.ck
  %i.cm = getelementptr i8, ptr %i.s, i64 %i.ci
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.cl  ; 5 uses
  %bound0 = icmp ult ptr %7, %i.cn
  %bound1 = icmp ult ptr %i.av, %scevgep375       ; 2 uses
  %found.conflict = and i1 %bound0, %bound1
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opES5_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_:bb.a
.lr.ph.i.i145:                                    ; preds = %.lr.ph.i.i145.preheader532, %.lr.ph.i.i145
  %.010.i.i146 = phi ptr [ %i.gh, %.lr.ph.i.i145 ], [ %.010.i.i146.ph, %.lr.ph.i.i145.preheader532 ] ; 4 uses
  %.079.i.i147 = phi ptr [ %i.gg, %.lr.ph.i.i145 ], [ %.079.i.i147.ph, %.lr.ph.i.i145.preheader532 ] ; 4 uses
  %i.ga = load i32, ptr %.079.i.i147, align 4, !tbaa !337
  %i.gb = load i32, ptr %.010.i.i146, align 4, !tbaa !337
  store i32 %i.gb, ptr %.079.i.i147, align 4, !tbaa !337
  store i32 %i.ga, ptr %.010.i.i146, align 4, !tbaa !337
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !337
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !337
  store i32 %i.gf, ptr %i.gc, align 4, !tbaa !337
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !337
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.gg, %i.fj
  br i1 %.not.i.i148, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph.i.i145, !llvm.loop !2575

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150: ; preds = %.lr.ph.i.i145, %middle.block494, %bb.a, %.thread
  %.0108.lcssa282 = phi ptr [ %1, %bb.a ], [ %i.fl, %.thread ], [ %i.fl, %middle.block494 ], [ %i.fl, %.lr.ph.i.i145 ]
  %.0111.lcssa281 = phi ptr [ %i.f, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %middle.block494 ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa280 = phi ptr [ %i.e, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %middle.block494 ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa279 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %middle.block494 ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 3 uses
  %i.gi = getelementptr i8, ptr %i.h, i64 %.idx210 ; 3 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  %i.gj = add i64 %.idx210, -8                    ; 2 uses
  %i.gk = lshr exact i64 %i.gj, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check504 = icmp ult i64 %i.gj, 24
  br i1 %min.iters.check504, label %.lr.ph.i.i152.preheader531, label %vector.memcheck505

vector.memcheck505:                               ; preds = %.lr.ph.i.i152.preheader
  %i.gm = getelementptr i8, ptr %7, i64 %.idx210
  %bound0506 = icmp ult ptr %i.h, %i.gm
  %bound1507 = icmp ult ptr %7, %i.gi
  %found.conflict508 = and i1 %bound0506, %bound1507
  br i1 %found.conflict508, label %.lr.ph.i.i152.preheader531, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck505
  %n.vec510 = and i64 %i.gl, 4611686018427387902  ; 3 uses
  %i.gn = shl i64 %n.vec510, 3                    ; 2 uses
  %i.go = getelementptr i8, ptr %7, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.h, i64 %i.gn
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph509
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next523, %vector.body511 ] ; 2 uses
  %i.gq = shl i64 %index512, 3                    ; 2 uses
  %next.gep513 = getelementptr i8, ptr %7, i64 %i.gq ; 2 uses
  %next.gep514 = getelementptr i8, ptr %i.h, i64 %i.gq ; 2 uses
  %wide.vec515 = load <4 x i32>, ptr %next.gep514, align 4, !tbaa !337, !alias.scope !2600, !noalias !2601
  %wide.vec518 = load <4 x i32>, ptr %next.gep513, align 4, !tbaa !337, !alias.scope !2601
  store <4 x i32> %wide.vec518, ptr %next.gep514, align 4, !tbaa !337, !alias.scope !2600, !noalias !2601
  store <4 x i32> %wide.vec515, ptr %next.gep513, align 4, !tbaa !337, !alias.scope !2601
  %index.next523 = add nuw i64 %index512, 2       ; 2 uses
  %i.gr = icmp eq i64 %index.next523, %n.vec510
  br i1 %i.gr, label %middle.block524, label %vector.body511, !llvm.loop !2579

middle.block524:                                  ; preds = %vector.body511
  %cmp.n525 = icmp eq i64 %i.gl, %n.vec510
  br i1 %cmp.n525, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152.preheader531

.lr.ph.i.i152.preheader531:                       ; preds = %vector.memcheck505, %.lr.ph.i.i152.preheader, %middle.block524
  %.010.i.i153.ph = phi ptr [ %7, %vector.memcheck505 ], [ %7, %.lr.ph.i.i152.preheader ], [ %i.go, %middle.block524 ]
  %.079.i.i154.ph = phi ptr [ %i.h, %vector.memcheck505 ], [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.gp, %middle.block524 ]
  br label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.preheader531, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.gz, %.lr.ph.i.i152 ], [ %.010.i.i153.ph, %.lr.ph.i.i152.preheader531 ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.gy, %.lr.ph.i.i152 ], [ %.079.i.i154.ph, %.lr.ph.i.i152.preheader531 ] ; 4 uses
  %i.gs = load i32, ptr %.079.i.i154, align 4, !tbaa !337
  %i.gt = load i32, ptr %.010.i.i153, align 4, !tbaa !337
  store i32 %i.gt, ptr %.079.i.i154, align 4, !tbaa !337
  store i32 %i.gs, ptr %.010.i.i153, align 4, !tbaa !337
  %i.gu = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !337
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !337
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !337
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !337
  %i.gy = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155 = icmp eq ptr %i.gy, %i.gi
  br i1 %.not.i.i155, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, label %.lr.ph.i.i152, !llvm.loop !2580

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157: ; preds = %.lr.ph.i.i152, %middle.block524, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ha, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ha, ptr %10, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %4
  store ptr %i.hc, ptr %12, align 8, !tbaa !386, !alias.scope !2602
  store ptr %.0191.lcssa280, ptr %13, align 8, !tbaa !386, !alias.scope !2603
  store ptr %i.h, ptr %14, align 8, !tbaa !386, !alias.scope !2604
  store ptr %7, ptr %15, align 8, !tbaa !386, !alias.scope !2605
  store ptr %i.gi, ptr %16, align 8, !tbaa !386, !alias.scope !2606
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairIiiEEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEES7_S7_S7_SH_NS0_7swap_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa279, i64 noundef 0, i64 noundef %.0195.lcssa279, i1 noundef zeroext true)
  %i.hd = load ptr, ptr %11, align 8, !tbaa !386
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.he = load ptr, ptr %10, align 8, !tbaa !386  ; 2 uses
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !330 ; 3 uses
  %.not27.i = icmp eq ptr %i.hf, %i.he
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.he, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa281, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.hu, %bb.ab ], [ %i.hd, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157 ] ; 3 uses
  %i.hg = icmp eq ptr %.0108.lcssa282, %.01929.i
  br i1 %i.hg, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.hi, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.hh, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !337
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !337
  store i32 %i.hk, ptr %i.hh, align 4, !tbaa !337
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !337
  %i.hl = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.hn = load i32, ptr %i.hl, align 4, !tbaa !337
  %i.ho = load i32, ptr %i.hm, align 4, !tbaa !337
  store i32 %i.ho, ptr %i.hl, align 4, !tbaa !337
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !337
  %.not.i.i.i = icmp eq ptr %i.hf, %i.hh
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !40

bb.y:                                             ; preds = %.lr.ph.i158
  %i.hp = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 3 uses
  %i.hq = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 3 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !337 ; 2 uses
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !337 ; 2 uses
  %i.ht = icmp slt i32 %i.hr, %i.hs
  %i.hu = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 4 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !337 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 2 uses
  br i1 %i.ht, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.hs, ptr %i.hu, align 4, !tbaa !337
  store i32 %i.hv, ptr %i.hq, align 4, !tbaa !337
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.hr, ptr %i.hu, align 4, !tbaa !337
  store i32 %i.hv, ptr %i.hp, align 4, !tbaa !337
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.hq, %bb.z ]
  %.1.i159 = phi ptr [ %i.hp, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !337
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !337
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !337
  store i32 %i.hy, ptr %i.hx, align 4, !tbaa !337
  %.not.i160 = icmp eq ptr %i.hf, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !2591

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opEPS8_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 5 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %7 = mul i64 %2, %i.b
  %8 = shl i64 %7, 3                              ; 2 uses
  %i.k = shl i64 %3, 3                            ; 6 uses
  %9 = getelementptr i8, ptr %1, i64 %8
  %scevgep = getelementptr i8, ptr %9, i64 %i.k   ; 2 uses
  %i.l = or disjoint i64 %i.k, 4                  ; 2 uses
  %10 = add i64 %i.k, %.idx104                    ; 2 uses
  %scevgep189 = getelementptr i8, ptr %1, i64 %10
  %scevgep190 = getelementptr i8, ptr %1, i64 %i.l ; 3 uses
  %11 = getelementptr i8, ptr %1, i64 %10
  %scevgep.a = getelementptr i8, ptr %11, i64 -4
  %scevgep187 = getelementptr i8, ptr %1, i64 %8
  %i.m = getelementptr i8, ptr %scevgep187, i64 %i.k
  %scevgep188 = getelementptr i8, ptr %i.m, i64 -4 ; 2 uses
  %i.n = add i64 %.idx104, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 120
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %stride.check = icmp slt i64 %.idx104, 0
  %bound0189 = icmp ult ptr %i.d, %scevgep189
  %bound1190 = icmp ult ptr %scevgep190, %scevgep.a
  %found.conflict191 = and i1 %bound0189, %bound1190
  %invariant.op = or i1 %stride.check, %found.conflict191
  %i.s = getelementptr i8, ptr %1, i64 %i.l
  %i.t = getelementptr i8, ptr %1, i64 %i.k
  %n.vec = and i64 %i.p, 4611686018427387902      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.x = icmp eq ptr %.1101, %i.w
  br i1 %i.x, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.y = add i64 %.idx129, -8                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ac, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ab, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !2607

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ac, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ab, %.lr.ph124.split.us.preheader.prol ]
  %i.ad = icmp ult i64 %i.y, 56
  br i1 %i.ad, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.am, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.al, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.069121.us, i64 %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %2
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.am, %i.v
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !2608

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 8 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.cp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit ] ; 3 uses
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
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !337
  %i.az = load i32, ptr %i.as, align 4, !tbaa !337
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !39

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
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !337
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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = mul i64 %indvar, %.idx104               ; 3 uses
  %i.bq = shl i64 %.022.lcssa.i, 3
  %i.br = add i64 %i.bq, 8
  %i.bs = mul i64 %2, %i.br                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs  ; 3 uses
  %bound0 = icmp ult ptr %i.d, %i.bu
  %bound1 = icmp ult ptr %i.bh, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.bv = getelementptr i8, ptr %i.s, i64 %i.bp
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx  ; 3 uses
  %i.bx = getelementptr i8, ptr %i.t, i64 %i.bp
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs  ; 3 uses
  %bound0192 = icmp ult ptr %i.d, %i.by
  %bound1193 = icmp ult ptr %i.bw, %scevgep188
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx.reass, %found.conflict194
  %bound0196 = icmp ult ptr %i.bh, %scevgep
  %bound1197 = icmp ult ptr %scevgep190, %i.bu
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %i.bh, %i.by
  %bound1201 = icmp ult ptr %i.bw, %i.bu
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %scevgep190, %i.by
  %bound1205 = icmp ult ptr %i.bw, %scevgep
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  br i1 %conflict.rdx207, label %.lr.ph.i.i.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.ca = getelementptr i8, ptr %.071116, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.cb ; 2 uses
  %next.gep208 = getelementptr i8, ptr %.071116, i64 %i.cb ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !337
  %wide.vec210 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec210, ptr %next.gep208, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !2609

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader217

.lr.ph.i.i.preheader217:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader217, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ce = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ce, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !337
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !337
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !337
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !337
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cj, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !2610

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cl = load <2 x i32>, ptr %i.bd, align 4, !tbaa !337
  %i.cm = load <2 x i32>, ptr %.073114, align 4, !tbaa !337
  store <2 x i32> %i.cm, ptr %i.bd, align 4, !tbaa !337
  store <2 x i32> %i.cl, ptr %.073114, align 4, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cn = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.co, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cq = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cq to i64
  %i.cr = add i64 %.072115, %.neg
  %i.cs = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cs to i64
  %i.ct = add i64 %.sroa.speculated89, %.neg78
  %i.cu = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cu, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2611

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cv = trunc nuw i8 %i.dm to i1
  %i.cw = select i1 %i.cv, ptr %i.do, ptr %i.dp
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cx = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cw, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.ak, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.cz = ptrtoint ptr %i.e to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.cx, ptr noundef %i.e, ptr noundef %i.cy, i64 noundef %i.dc, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.dd = phi i8 [ %i.dm, %bb.l ], [ 1, %.lr.ph124 ]
  %i.de = phi i8 [ %i.dn, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dq, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.dp, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.do, %bb.l ], [ %1, %.lr.ph124 ]
  %i.df = load i32, ptr %.0122, align 4, !tbaa !337
  %i.dg = load i32, ptr %.1101, align 4, !tbaa !337
  %i.dh = icmp slt i32 %i.df, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = icmp eq i8 %i.de, %i.di
  br i1 %i.dj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2
  %i.dl = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.dk, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !387, !range !388 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.dm = phi i8 [ %.pre, %bb.k ], [ %i.dd, %.lr.ph124.split ] ; 2 uses
  %i.dn = phi i8 [ %.pre, %bb.k ], [ %i.de, %.lr.ph124.split ]
  %i.do = phi ptr [ %i.dl, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0122, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dq, %i.v
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !2608
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !330
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !330
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 8 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.o   ; 3 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep328 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep329 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %scevgep423 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 184
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0333 = icmp ult ptr %7, %scevgep328
  %bound1334 = icmp ult ptr %i.g, %scevgep329
  %found.conflict335 = and i1 %bound0333, %bound1334
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict335, %stride.check
  %bound0337 = icmp ult ptr %7, %i.i
  %bound1338 = icmp ult ptr %scevgep, %scevgep329
  %found.conflict339 = and i1 %bound0337, %bound1338
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_13adaptive_xbufIS6_S7_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b:bb.a
  br i1 %.not77.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !3042

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  %.073119 = phi i64 [ %i.bl, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.074118 = phi ptr [ %spec.select, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.at = icmp eq i64 %.073119, %i.c
  %i.au = select i1 %i.at, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.av = sub i64 %i.au, %i.f
  %i.aw = urem i64 %i.av, %4                      ; 2 uses
  %i.ax = add i64 %i.f, %i.aw
  %i.ay = sub i64 %i.au, %i.ax
  %i.az = udiv i64 %i.ay, %4                      ; 4 uses
  %i.ba = sub i64 %i.az, %i.g
  %i.bb = shl i64 %i.az, 3
  %i.bc = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.mask.i = and i64 %i.az, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader188, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bd = and i64 %i.az, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bc, %i.bd           ; 3 uses
  %i.be = shl i64 %n.vec, 3
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !367
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !367
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !367
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !3046

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [8 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3042

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.f
  %.0122 = phi i64 [ %i.e, %.lr.ph123 ], [ %i.bs, %bb.f ]
  %.2121 = phi ptr [ %i.bo, %.lr.ph123 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0122, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = udiv i64 %i.by, %4                      ; 6 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %i.cb = shl i64 %i.bz, 3
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.mask.i84 = and i64 %i.bz, 2305843009213693951
  %.not8.i.i85 = icmp eq i64 %.mask.i84, 0
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %bb.c
  %min.iters.check169 = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check169, label %.lr.ph.i.i86.preheader183, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i86.preheader
  %i.cd = and i64 %i.bz, 3                        ; 2 uses
  %n.vec171 = sub nuw nsw i64 %i.cc, %i.cd        ; 3 uses
  %i.ce = shl i64 %n.vec171, 3
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 2 uses
  %vec.ind174 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph170 ], [ %vec.ind.next178, %vector.body172 ] ; 3 uses
  %step.add175 = add nuw <2 x i64> %vec.ind174, splat (i64 2)
  %i.cg = shl i64 %index173, 3
  %next.gep176 = getelementptr i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !367
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !367
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add nuw <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3047

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !367
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add nuw i64 %.010.i.i87, 1              ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3048

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [8 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !391
  store ptr %i.co, ptr %10, align 8, !tbaa !386
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !391
  store ptr %i.co, ptr %12, align 8, !tbaa !386
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [8 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3049

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairIiiEmNS0_7move_opEEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not277 = icmp eq i64 %i.f, 0
  br i1 %.not277, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx250 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx250                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep402 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep400 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx250
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx250
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx250, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx250, 0
  %bound0401 = icmp ult ptr %i.j, %scevgep
  %bound1402 = icmp ult ptr %scevgep402, %scevgep.a
  %found.conflict403 = and i1 %bound0401, %bound1402
  %invariant.op = or i1 %stride.check, %found.conflict403
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hy, %.sink.split.i ] ; 3 uses
  %.0287 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099286 = phi i64 [ %i.n, %.lr.ph ], [ %i.hw, %.sink.split.i ] ; 7 uses
  %.0102284 = phi ptr [ %0, %.lr.ph ], [ %i.hu, %.sink.split.i ] ; 15 uses
  %.0105283 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108282 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0216281 = phi ptr [ %1, %.lr.ph ], [ %.2218, %.sink.split.i ] ; 22 uses
  %.0222280 = phi ptr [ %i.i, %.lr.ph ], [ %.2224, %.sink.split.i ] ; 22 uses
  %.0228279 = phi ptr [ %i.g, %.lr.ph ], [ %.1229, %.sink.split.i ] ; 13 uses
  %.0234278 = phi i64 [ %i.f, %.lr.ph ], [ %i.hz, %.sink.split.i ] ; 5 uses
  %.0108282457 = ptrtoaddr ptr %.0108282 to i64
  %.0216281458 = ptrtoaddr ptr %.0216281 to i64
  %i.an = icmp ult i64 %.099286, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099286, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !337
  %i.az = load i32, ptr %i.as, align 4, !tbaa !337
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !39

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated206 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0234278) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx250 ; 15 uses
  %.not119 = icmp eq i64 %.0287, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105283 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108282, %.0222280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.idx251 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102284, i64 %.idx251 ; 9 uses
  %i.bo = icmp eq ptr %.0228279, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108282, %.0222280        ; 2 uses
  %i.bq = trunc nuw i8 %.0105283 to i1
  br i1 %i.bq, label %bb.j, label %.thread343

bb.i:                                             ; preds = %bb.h
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !337
  %i.bs = load i32, ptr %.0228279, align 4, !tbaa !337
  %i.bt = icmp slt i32 %i.br, %i.bs               ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108282, %.0222280        ; 2 uses
  %i.bw = trunc nuw i8 %.0105283 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0216281, %.0108282
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108282457, -8
  %i.cb = sub i64 %i.ca, %.0216281458             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.cb, 168
  br i1 %min.iters.check460, label %.lr.ph.i.i.preheader801, label %vector.memcheck461

vector.memcheck461:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0222280, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0222280, i64 4  ; 3 uses
  %i.ci = add i64 %i.ce, 8                        ; 2 uses
  %i.cj = getelementptr i8, ptr %.0222280, i64 %i.ci ; 3 uses
  %bound0462 = icmp ult ptr %.0222280, %i.cj
  %bound1463 = icmp ult ptr %i.ch, %i.cg
  %found.conflict464 = and i1 %bound0462, %bound1463
  %i.ck = getelementptr i8, ptr %.0216281, i64 %i.cf ; 2 uses
  %bound0465 = icmp ult ptr %.0222280, %i.ck
  %bound1466 = icmp ult ptr %.0216281, %i.cg
  %found.conflict467 = and i1 %bound0465, %bound1466
  %conflict.rdx468 = or i1 %found.conflict464, %found.conflict467
  %i.cl = getelementptr i8, ptr %.0216281, i64 4  ; 2 uses
  %i.cm = getelementptr i8, ptr %.0216281, i64 %i.ci ; 2 uses
  %bound0469 = icmp ult ptr %.0222280, %i.cm
  %bound1470 = icmp ult ptr %i.cl, %i.cg
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %conflict.rdx468, %found.conflict471
  %bound0473 = icmp ult ptr %i.ch, %i.ck
  %bound1474 = icmp ult ptr %.0216281, %i.cj
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %conflict.rdx472, %found.conflict475
  %bound0477 = icmp ult ptr %i.ch, %i.cm
  %bound1478 = icmp ult ptr %i.cl, %i.cj
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  br i1 %conflict.rdx480, label %.lr.ph.i.i.preheader801, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck461
  %n.vec482 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec482, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0222280, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0216281, i64 %i.cn
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next497, %vector.body483 ] ; 2 uses
  %i.cq = shl i64 %index484, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep485 = getelementptr i8, ptr %.0222280, i64 %i.cq
  %next.gep486 = getelementptr i8, ptr %.0222280, i64 %i.cr
  %next.gep487 = getelementptr i8, ptr %.0216281, i64 %i.cq
  %next.gep488 = getelementptr i8, ptr %.0216281, i64 %i.cr
  %wide.vec489 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !337
  %wide.vec492 = load <4 x i32>, ptr %next.gep488, align 4, !tbaa !337
  store <4 x i32> %wide.vec489, ptr %next.gep485, align 4, !tbaa !337
  store <4 x i32> %wide.vec492, ptr %next.gep486, align 4, !tbaa !337
  %index.next497 = add nuw i64 %index484, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next497, %n.vec482
  br i1 %i.cs, label %middle.block498, label %vector.body483, !llvm.loop !3050

middle.block498:                                  ; preds = %vector.body483
  %cmp.n499 = icmp eq i64 %i.cd, %n.vec482
  br i1 %cmp.n499, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader801

.lr.ph.i.i.preheader801:                          ; preds = %vector.memcheck461, %.lr.ph.i.i.preheader, %middle.block498
  %.010.i.i.ph = phi ptr [ %.0222280, %vector.memcheck461 ], [ %.0222280, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block498 ]
  %.079.i.i.ph = phi ptr [ %.0216281, %vector.memcheck461 ], [ %.0216281, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block498 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader801, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader801 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader801 ] ; 3 uses
  %i.ct = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.010.i.i, align 4, !tbaa !346
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !347
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, %.0108282
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3051

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block498, %bb.j
  %.1223 = phi ptr [ %.0222280, %bb.j ], [ %i.co, %middle.block498 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader800, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.cz = mul i64 %indvar, %.idx250               ; 2 uses
  %i.da = shl i64 %.022.lcssa.i, 3
  %i.db = add i64 %i.da, 8
  %i.dc = mul i64 %2, %i.db
  %i.dd = getelementptr i8, ptr %i.aj, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.de
  %bound1 = icmp ult ptr %i.bg, %scevgep400
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.df = getelementptr i8, ptr %i.ak, i64 %i.cz
  %i.dg = getelementptr i8, ptr %i.df, i64 %.idx  ; 3 uses
  %bound0404 = icmp ult ptr %i.j, %i.bh
  %bound1405 = icmp ult ptr %i.dg, %scevgep400
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %conflict.rdx.reass, %found.conflict406
  %bound0408 = icmp ult ptr %i.bg, %i.l
  %bound1409 = icmp ult ptr %scevgep402, %i.de
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  %bound0412 = icmp ult ptr %i.bg, %i.bh
  %bound1413 = icmp ult ptr %i.dg, %i.de
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %conflict.rdx411, %found.conflict414
  %bound0416 = icmp ult ptr %scevgep402, %i.bh
  %bound1417 = icmp ult ptr %i.dg, %i.l
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  br i1 %conflict.rdx419, label %.lr.ph.i.i127.preheader800, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dh = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.di = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dj ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.am, i64 %i.dj ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep420, align 4, !tbaa !337
  %wide.vec422 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec422, ptr %next.gep420, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !3052

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader800

.lr.ph.i.i127.preheader800:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.dh, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader800, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader800 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.dr, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader800 ] ; 4 uses
  %i.dl = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dm = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dm, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dl, ptr %.010.i.i128, align 4, !tbaa !337
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !337
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !337
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !337
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.dr, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3053

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dt = load <2 x i32>, ptr %i.bn, align 4, !tbaa !337
  %i.du = load <2 x i32>, ptr %.0102284, align 4, !tbaa !337
  store <2 x i32> %i.du, ptr %i.bn, align 4, !tbaa !337
  store <2 x i32> %i.dt, ptr %.0102284, align 4, !tbaa !337
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dv = icmp eq ptr %i.bn, %.0228279
  br i1 %i.dv, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = icmp eq ptr %.0228279, %.0102284
  %spec.select = select i1 %i.dw, ptr %i.bn, ptr %.0228279
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread343:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread344, label %.thread345

.thread345:                                       ; preds = %.thread343
  store ptr %.0216281, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108282, ptr %i.d, align 8, !tbaa !330
  %i.dx = ptrtoint ptr %.0108282 to i64
  %i.dy = ptrtoint ptr %.0216281 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.0222280, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread344:                                       ; preds = %.thread343
  %i.eb = ptrtoint ptr %.0108282 to i64
  %i.ec = ptrtoint ptr %.0216281 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eh = ptrtoint ptr %.0108282 to i64
  %i.ei = ptrtoint ptr %.0216281 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.el ; 2 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !330
  store ptr %i.em, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0216281, ptr noundef %.0108282, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread344, %bb.p
  %i.eo = phi i8 [ 1, %.thread344 ], [ %i.bu, %bb.p ]
  %i.ep = phi i1 [ true, %.thread344 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.eq = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0216281, ptr noundef %.0108282, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.er = phi i8 [ %i.bu, %bb.q ], [ %i.eo, %bb.r ]
  %i.es = phi i1 [ %i.bt, %bb.q ], [ %i.ep, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0216281, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108282, ptr %i.d, align 8, !tbaa !330
  %i.et = ptrtoint ptr %.0108282 to i64
  %i.eu = ptrtoint ptr %.0216281 to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.0222280, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0222280, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread345, %bb.s
  %i.ey = phi ptr [ %i.ea, %.thread345 ], [ %i.ew, %bb.s ]
  %i.ez = phi i8 [ 1, %.thread345 ], [ %i.bu, %bb.s ]
  %i.fa = phi i1 [ true, %.thread345 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fb = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0222280, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fc = phi i8 [ %i.bu, %bb.t ], [ %i.ez, %bb.u ]
  %i.fd = phi i1 [ %i.bt, %bb.t ], [ %i.fa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.fe = phi i1 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.ff = phi i8 [ %i.fc, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.er, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fh = ptrtoint ptr %i.bi to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fl ; 6 uses
  %.not.i132 = icmp eq ptr %i.fg, %i.fm
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fg, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fn = mul i64 %indvar, %.idx250               ; 3 uses
  %i.fo = add i64 %i.ae, %i.fn                    ; 2 uses
  %i.fp = sub i64 %i.fo, %i.fi                    ; 2 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check511 = icmp ult i64 %i.fp, 40
  br i1 %min.iters.check511, label %.lr.ph.i.i134.preheader802, label %vector.memcheck512

vector.memcheck512:                               ; preds = %.lr.ph.i.i134.preheader
  %i.fs = add i64 %i.aa, %i.fn
  %i.ft = sub i64 %i.fs, %i.fi
  %i.fu = and i64 %i.ft, -8                       ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fg, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = add i64 %i.x, %i.fn
  %i.fy = shl i64 %.022.lcssa.i, 3
  %i.fz = add i64 %i.fy, 8
  %i.ga = mul i64 %2, %i.fz
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_:bb.a
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.lg = phi ptr [ %i.ie, %bb.aj ], [ %i.l, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268564 = ptrtoaddr ptr %.0216268 to i64
  %.0108266563 = ptrtoaddr ptr %.0108266 to i64
  %i.lh = add i64 %.0108266563, -8
  %i.li = sub i64 %i.lh, %.0216268564             ; 3 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check566 = icmp ult i64 %i.li, 376
  br i1 %min.iters.check566, label %.lr.ph.i.i161.preheader797, label %vector.memcheck567

vector.memcheck567:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ll = and i64 %i.li, -8                       ; 2 uses
  %i.lm = or disjoint i64 %i.ll, 4                ; 2 uses
  %i.ln = getelementptr i8, ptr %.0222270, i64 %i.lm ; 3 uses
  %i.lo = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.lp = add i64 %i.ll, 8                        ; 2 uses
  %i.lq = getelementptr i8, ptr %.0222270, i64 %i.lp ; 3 uses
  %bound0568 = icmp ult ptr %.0222270, %i.lq
  %bound1569 = icmp ult ptr %i.lo, %i.ln
  %found.conflict570 = and i1 %bound0568, %bound1569
  %i.lr = getelementptr i8, ptr %.0216268, i64 %i.lm ; 2 uses
  %bound0571 = icmp ult ptr %.0222270, %i.lr
  %bound1572 = icmp ult ptr %.0216268, %i.ln
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %found.conflict570, %found.conflict573
  %i.ls = getelementptr i8, ptr %.0216268, i64 4  ; 2 uses
  %i.lt = getelementptr i8, ptr %.0216268, i64 %i.lp ; 2 uses
  %bound0575 = icmp ult ptr %.0222270, %i.lt
  %bound1576 = icmp ult ptr %i.ls, %i.ln
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %i.lo, %i.lr
  %bound1580 = icmp ult ptr %.0216268, %i.lq
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %i.lo, %i.lt
  %bound1584 = icmp ult ptr %i.ls, %i.lq
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  br i1 %conflict.rdx586, label %.lr.ph.i.i161.preheader797, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck567
  %n.vec588 = and i64 %i.lk, 4611686018427387900  ; 3 uses
  %i.lu = shl i64 %n.vec588, 3                    ; 2 uses
  %i.lv = getelementptr i8, ptr %.0222270, i64 %i.lu ; 2 uses
  %i.lw = getelementptr i8, ptr %.0216268, i64 %i.lu
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next603, %vector.body589 ] ; 2 uses
  %i.lx = shl i64 %index590, 3                    ; 3 uses
  %i.ly = or disjoint i64 %i.lx, 16               ; 2 uses
  %next.gep591 = getelementptr i8, ptr %.0222270, i64 %i.lx
  %next.gep592 = getelementptr i8, ptr %.0222270, i64 %i.ly
  %next.gep593 = getelementptr i8, ptr %.0216268, i64 %i.lx
  %next.gep594 = getelementptr i8, ptr %.0216268, i64 %i.ly
  %wide.vec595 = load <4 x i32>, ptr %next.gep593, align 4, !tbaa !337
  %wide.vec598 = load <4 x i32>, ptr %next.gep594, align 4, !tbaa !337
  store <4 x i32> %wide.vec595, ptr %next.gep591, align 4, !tbaa !337
  store <4 x i32> %wide.vec598, ptr %next.gep592, align 4, !tbaa !337
  %index.next603 = add nuw i64 %index590, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next603, %n.vec588
  br i1 %i.lz, label %middle.block604, label %vector.body589, !llvm.loop !3064

middle.block604:                                  ; preds = %vector.body589
  %cmp.n605 = icmp eq i64 %i.lk, %n.vec588
  br i1 %cmp.n605, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader797

.lr.ph.i.i161.preheader797:                       ; preds = %vector.memcheck567, %.lr.ph.i.i161.preheader, %middle.block604
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck567 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.lv, %middle.block604 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck567 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.lw, %middle.block604 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader797, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mf, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader797 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.me, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader797 ] ; 3 uses
  %i.ma = load i32, ptr %.079.i.i163, align 4, !tbaa !337
  store i32 %i.ma, ptr %.010.i.i162, align 4, !tbaa !346
  %i.mb = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !337
  %i.md = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !347
  %i.me = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.me, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3065

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block604, %middle.block746, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mg = phi ptr [ %i.ic, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.am, %.thread.thread ], [ %i.ic, %bb.aj ], [ %i.lf, %bb.ak ], [ %i.ic, %middle.block746 ], [ %i.lf, %middle.block604 ], [ %i.ic, %.lr.ph.i.i154 ], [ %i.lf, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block746 ], [ %.2, %middle.block604 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block746 ], [ %.0234275, %middle.block604 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block746 ], [ %.0228272, %middle.block604 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block746 ], [ %.0102262, %middle.block604 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block746 ], [ %.099259, %middle.block604 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.mh = phi ptr [ %i.ie, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.ie, %bb.aj ], [ %i.lg, %bb.ak ], [ %i.ie, %middle.block746 ], [ %i.lg, %middle.block604 ], [ %i.ie, %.lr.ph.i.i154 ], [ %i.lg, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.ku, %middle.block746 ], [ %i.lv, %middle.block604 ], [ %i.le, %.lr.ph.i.i154 ], [ %i.mf, %.lr.ph.i.i161 ]
  %i.mi = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_S5_S5_SD_NS0_7move_opEEET3_T_SG_T0_T1_RT2_SJ_SF_NS0_9iter_sizeISI_E4typeESN_SN_SN_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.mh, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.mj = load ptr, ptr %i.e, align 8, !tbaa !330 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.mj, %i.mh
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mk = ptrtoaddr ptr %i.mj to i64
  %i.ml = ptrtoaddr ptr %i.mh to i64
  %i.mm = add i64 %i.ml, -8
  %i.mn = sub i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = lshr i64 %i.mn, 3
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check757 = icmp ult i64 %i.mn, 104
  br i1 %min.iters.check757, label %.lr.ph.i.i168.preheader783, label %vector.memcheck758

vector.memcheck758:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mq = and i64 %i.mn, -8
  %i.mr = add i64 %i.mq, 8                        ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mi, i64 %i.mr
  %i.mt = getelementptr i8, ptr %i.mj, i64 %i.mr
  %bound0759 = icmp ult ptr %i.mi, %i.mt
  %bound1760 = icmp ult ptr %i.mj, %i.ms
  %found.conflict761 = and i1 %bound0759, %bound1760
  br i1 %found.conflict761, label %.lr.ph.i.i168.preheader783, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck758
  %n.vec763 = and i64 %i.mp, 4611686018427387900  ; 3 uses
  %i.mu = shl i64 %n.vec763, 3                    ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mi, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mj, i64 %i.mu
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next778, %vector.body764 ] ; 2 uses
  %i.mx = shl i64 %index765, 3                    ; 3 uses
  %i.my = or disjoint i64 %i.mx, 16               ; 2 uses
  %next.gep766 = getelementptr i8, ptr %i.mi, i64 %i.mx
  %next.gep767 = getelementptr i8, ptr %i.mi, i64 %i.my
  %next.gep768 = getelementptr i8, ptr %i.mj, i64 %i.mx
  %next.gep769 = getelementptr i8, ptr %i.mj, i64 %i.my
  %wide.vec770 = load <4 x i32>, ptr %next.gep768, align 4, !tbaa !337, !alias.scope !3073
  %wide.vec773 = load <4 x i32>, ptr %next.gep769, align 4, !tbaa !337, !alias.scope !3073
  store <4 x i32> %wide.vec770, ptr %next.gep766, align 4, !tbaa !337, !alias.scope !3074, !noalias !3073
  store <4 x i32> %wide.vec773, ptr %next.gep767, align 4, !tbaa !337, !alias.scope !3074, !noalias !3073
  %index.next778 = add nuw i64 %index765, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next778, %n.vec763
  br i1 %i.mz, label %middle.block779, label %vector.body764, !llvm.loop !3069

middle.block779:                                  ; preds = %vector.body764
  %cmp.n780 = icmp eq i64 %i.mp, %n.vec763
  br i1 %cmp.n780, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader783

.lr.ph.i.i168.preheader783:                       ; preds = %vector.memcheck758, %.lr.ph.i.i168.preheader, %middle.block779
  %.010.i.i169.ph = phi ptr [ %i.mi, %vector.memcheck758 ], [ %i.mi, %.lr.ph.i.i168.preheader ], [ %i.mv, %middle.block779 ]
  %.079.i.i170.ph = phi ptr [ %i.mj, %vector.memcheck758 ], [ %i.mj, %.lr.ph.i.i168.preheader ], [ %i.mw, %middle.block779 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader783, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.nf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader783 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ne, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader783 ] ; 3 uses
  %i.na = load i32, ptr %.079.i.i170, align 4, !tbaa !337
  store i32 %i.na, ptr %.010.i.i169, align 4, !tbaa !346
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !337
  %i.nd = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !347
  %i.ne = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ne, %i.mh
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3070

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block779, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not281 = icmp eq i64 %i.f, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx254                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep406 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep404 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx254
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx254, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx254, 0
  %bound0405 = icmp ult ptr %i.j, %scevgep
  %bound1406 = icmp ult ptr %scevgep406, %scevgep.a
  %found.conflict407 = and i1 %bound0405, %bound1406
  %invariant.op = or i1 %stride.check, %found.conflict407
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hz, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.n, %.lr.ph ], [ %i.hx, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hv, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.i, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 21 uses
  %.0232283 = phi ptr [ %i.g, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.f, %.lr.ph ], [ %i.ia, %.sink.split.i ] ; 5 uses
  %.0108286466 = ptrtoaddr ptr %.0108286 to i64
  %.0220285467 = ptrtoaddr ptr %.0220285 to i64
  %i.an = icmp ult i64 %.099290, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !337
  %i.az = load i32, ptr %i.as, align 4, !tbaa !337
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !39

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0238282) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105287 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108286, %.0226284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEES5_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.idx255 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102288, i64 %.idx255 ; 9 uses
  %i.bo = icmp eq ptr %.0232283, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.bq = trunc nuw i8 %.0105287 to i1
  br i1 %i.bq, label %bb.j, label %.thread347

bb.i:                                             ; preds = %bb.h
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !337
  %i.bs = load i32, ptr %.0232283, align 4, !tbaa !337
  %i.bt = icmp slt i32 %i.br, %i.bs               ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.bw = trunc nuw i8 %.0105287 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0220285, %.0108286
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108286466, -8
  %i.cb = sub i64 %i.ca, %.0220285467             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check469 = icmp ult i64 %i.cb, 120
  br i1 %min.iters.check469, label %.lr.ph.i.i.preheader830, label %vector.memcheck470

vector.memcheck470:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0220285, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0226284, i64 %i.cf ; 3 uses
  %bound0471 = icmp ult ptr %.0220285, %i.ch
  %bound1472 = icmp ult ptr %.0226284, %i.cg
  %found.conflict473 = and i1 %bound0471, %bound1472
  %i.ci = getelementptr i8, ptr %.0220285, i64 4  ; 3 uses
  %i.cj = add i64 %i.ce, 8                        ; 2 uses
  %i.ck = getelementptr i8, ptr %.0220285, i64 %i.cj ; 3 uses
  %bound0474 = icmp ult ptr %.0220285, %i.ck
  %bound1475 = icmp ult ptr %i.ci, %i.cg
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %found.conflict473, %found.conflict476
  %i.cl = getelementptr i8, ptr %.0226284, i64 4  ; 3 uses
  %i.cm = getelementptr i8, ptr %.0226284, i64 %i.cj ; 3 uses
  %bound0478 = icmp ult ptr %.0220285, %i.cm
  %bound1479 = icmp ult ptr %i.cl, %i.cg
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %.0226284, %i.ck
  %bound1483 = icmp ult ptr %i.ci, %i.ch
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  %bound0486 = icmp ult ptr %.0226284, %i.cm
  %bound1487 = icmp ult ptr %i.cl, %i.ch
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.ci, %i.cm
  %bound1491 = icmp ult ptr %i.cl, %i.ck
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  br i1 %conflict.rdx493, label %.lr.ph.i.i.preheader830, label %vector.ph494

vector.ph494:                                     ; preds = %vector.memcheck470
  %n.vec495 = and i64 %i.cd, 4611686018427387902  ; 3 uses
  %i.cn = shl i64 %n.vec495, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0226284, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0220285, i64 %i.cn
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph494
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next508, %vector.body496 ] ; 2 uses
  %i.cq = shl i64 %index497, 3                    ; 2 uses
  %next.gep498 = getelementptr i8, ptr %.0226284, i64 %i.cq ; 2 uses
  %next.gep499 = getelementptr i8, ptr %.0220285, i64 %i.cq ; 2 uses
  %wide.vec500 = load <4 x i32>, ptr %next.gep499, align 4, !tbaa !337
  %wide.vec503 = load <4 x i32>, ptr %next.gep498, align 4, !tbaa !337
  store <4 x i32> %wide.vec503, ptr %next.gep499, align 4, !tbaa !337
  store <4 x i32> %wide.vec500, ptr %next.gep498, align 4, !tbaa !337
  %index.next508 = add nuw i64 %index497, 2       ; 2 uses
  %i.cr = icmp eq i64 %index.next508, %n.vec495
  br i1 %i.cr, label %middle.block509, label %vector.body496, !llvm.loop !3075

middle.block509:                                  ; preds = %vector.body496
  %cmp.n510 = icmp eq i64 %i.cd, %n.vec495
  br i1 %cmp.n510, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader830

.lr.ph.i.i.preheader830:                          ; preds = %vector.memcheck470, %.lr.ph.i.i.preheader, %middle.block509
  %.010.i.i.ph = phi ptr [ %.0226284, %vector.memcheck470 ], [ %.0226284, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block509 ]
  %.079.i.i.ph = phi ptr [ %.0220285, %vector.memcheck470 ], [ %.0220285, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block509 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader830, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader830 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader830 ] ; 4 uses
  %i.cs = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ct = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cs, ptr %.010.i.i, align 4, !tbaa !337
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !337
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !337
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !337
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %.0108286
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3076

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block509, %bb.j
  %.1227 = phi ptr [ %.0226284, %bb.j ], [ %i.co, %middle.block509 ], [ %i.cz, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader829, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.da = mul i64 %indvar, %.idx254               ; 2 uses
  %i.db = shl i64 %.022.lcssa.i, 3
  %i.dc = add i64 %i.db, 8
  %i.dd = mul i64 %2, %i.dc
  %i.de = getelementptr i8, ptr %i.aj, i64 %i.da
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.df
  %bound1 = icmp ult ptr %i.bg, %scevgep404
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.dg = getelementptr i8, ptr %i.ak, i64 %i.da
  %i.dh = getelementptr i8, ptr %i.dg, i64 %.idx  ; 3 uses
  %bound0408 = icmp ult ptr %i.j, %i.bh
  %bound1409 = icmp ult ptr %i.dh, %scevgep404
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx.reass, %found.conflict410
  %bound0412 = icmp ult ptr %i.bg, %i.l
  %bound1413 = icmp ult ptr %scevgep406, %i.df
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %conflict.rdx411, %found.conflict414
  %bound0416 = icmp ult ptr %i.bg, %i.bh
  %bound1417 = icmp ult ptr %i.dh, %i.df
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %scevgep406, %i.bh
  %bound1421 = icmp ult ptr %i.dh, %i.l
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  br i1 %conflict.rdx423, label %.lr.ph.i.i127.preheader829, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.dj = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dk ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.am, i64 %i.dk ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep424, align 4, !tbaa !337
  %wide.vec426 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec426, ptr %next.gep424, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !3077

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader829

.lr.ph.i.i127.preheader829:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader829, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.dt, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader829 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader829 ] ; 4 uses
  %i.dm = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dn = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dn, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dm, ptr %.010.i.i128, align 4, !tbaa !337
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !337
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.ds, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3078

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.du = load <2 x i32>, ptr %i.bn, align 4, !tbaa !337
  %i.dv = load <2 x i32>, ptr %.0102288, align 4, !tbaa !337
  store <2 x i32> %i.dv, ptr %i.bn, align 4, !tbaa !337
  store <2 x i32> %i.du, ptr %.0102288, align 4, !tbaa !337
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dw = icmp eq ptr %i.bn, %.0232283
  br i1 %i.dw, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp eq ptr %.0232283, %.0102288
  %spec.select = select i1 %i.dx, ptr %i.bn, ptr %.0232283
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread347:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread348, label %.thread349

.thread349:                                       ; preds = %.thread347
  store ptr %.0220285, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108286, ptr %i.d, align 8, !tbaa !330
  %i.dy = ptrtoint ptr %.0108286 to i64
  %i.dz = ptrtoint ptr %.0220285 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.0226284, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread348:                                       ; preds = %.thread347
  %i.ec = ptrtoint ptr %.0108286 to i64
  %i.ed = ptrtoint ptr %.0220285 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.eg ; 2 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ei = ptrtoint ptr %.0108286 to i64
  %i.ej = ptrtoint ptr %.0220285 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.em ; 2 uses
  store ptr %i.en, ptr %i.c, align 8, !tbaa !330
  store ptr %i.en, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0220285, ptr noundef %.0108286, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread348, %bb.p
  %i.ep = phi i8 [ 1, %.thread348 ], [ %i.bu, %bb.p ]
  %i.eq = phi i1 [ true, %.thread348 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.er = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0220285, ptr noundef %.0108286, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.es = phi i8 [ %i.bu, %bb.q ], [ %i.ep, %bb.r ]
  %i.et = phi i1 [ %i.bt, %bb.q ], [ %i.eq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0220285, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108286, ptr %i.d, align 8, !tbaa !330
  %i.eu = ptrtoint ptr %.0108286 to i64
  %i.ev = ptrtoint ptr %.0220285 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.0226284, i64 %i.ew ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0226284, ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread349, %bb.s
  %i.ez = phi ptr [ %i.eb, %.thread349 ], [ %i.ex, %bb.s ]
  %i.fa = phi i8 [ 1, %.thread349 ], [ %i.bu, %bb.s ]
  %i.fb = phi i1 [ true, %.thread349 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fc = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0226284, ptr noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fd = phi i8 [ %i.bu, %bb.t ], [ %i.fa, %bb.u ]
  %i.fe = phi i1 [ %i.bt, %bb.t ], [ %i.fb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.ff = phi i1 [ %i.fe, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = phi i8 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fi = ptrtoint ptr %i.bi to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fm ; 6 uses
  %.not.i132 = icmp eq ptr %i.fh, %i.fn
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairIiiES5_EEvT_S6_RS6_T0_S8_S8_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fh, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fo = mul i64 %indvar, %.idx254               ; 3 uses
  %i.fp = add i64 %i.ae, %i.fo                    ; 2 uses
  %i.fq = sub i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check522 = icmp ult i64 %i.fq, 40
  br i1 %min.iters.check522, label %.lr.ph.i.i134.preheader831, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph.i.i134.preheader
  %i.ft = add i64 %i.aa, %i.fo
  %i.fu = sub i64 %i.ft, %i.fj
  %i.fv = and i64 %i.fu, -8                       ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fh, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = add i64 %i.x, %i.fo
  %i.fz = shl i64 %.022.lcssa.i, 3
  %i.ga = add i64 %i.fz, 8
  %i.gb = mul i64 %2, %i.ga
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_T_SK_RT0_SL_SM_RSJ_T2_T3_:bb.a
  store ptr %.sroa.029.041, ptr %6, align 8, !tbaa !386
  store ptr %.sroa.020.045, ptr %5, align 8, !tbaa !386
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSB_9select1stIiEEEEEEEENS0_7swap_opEEET1_T_SM_RT0_SN_SO_RSL_T2_T3_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !386    ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !386
  %i.b = load ptr, ptr %3, align 8, !tbaa !386    ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !386
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !386
  %.not34 = icmp eq ptr %i.b, %i.e
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %5, align 8, !tbaa !386    ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !386, !noalias !3351
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !386, !noalias !3352
  %i.k = load i64, ptr %i.j, align 4
  %i.l = load i32, ptr %i.i, align 4, !tbaa !337
  store i32 %i.l, ptr %i.j, align 4, !tbaa !346
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !337
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 %i.n, ptr %i.o, align 4, !tbaa !347
  %i.p = load i32, ptr %i.h, align 4, !tbaa !337
  store i32 %i.p, ptr %i.i, align 4, !tbaa !346
  %i.q = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !337
  store i32 %i.r, ptr %i.m, align 4, !tbaa !347
  %i.s = load i32, ptr %i.g, align 4, !tbaa !337
  store i32 %i.s, ptr %i.h, align 4, !tbaa !346
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !337
  store i32 %i.u, ptr %i.q, align 4, !tbaa !347
  store i64 %i.k, ptr %i.g, align 4
  %i.v = load ptr, ptr %1, align 8, !tbaa !386    ; 3 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !386    ; 2 uses
  %.not3547 = icmp eq ptr %i.v, %i.w
  br i1 %.not3547, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.x = load ptr, ptr %4, align 8, !tbaa !386
  %i.y = icmp eq ptr %i.g, %i.x
  br i1 %i.y, label %.lr.ph.i.i.preheader, label %.lr.ph82

.lr.ph:                                           ; preds = %bb.f
  %i.z = load ptr, ptr %4, align 8, !tbaa !386
  %i.aa = icmp eq ptr %.sroa.024.1, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.preheader, label %.lr.ph82, !llvm.loop !3338

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
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !337, !noalias !3353
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !337, !noalias !3353
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !337, !noalias !3353
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !337, !noalias !3353
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !337, !noalias !3353
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !337, !noalias !3353
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !337, !noalias !3353
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !337, !noalias !3353
  %.not.i.i = icmp eq ptr %i.ac, %.lcssa77
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit, label %.lr.ph.i.i, !llvm.loop !47

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !386
  br label %.loopexit

.lr.ph82:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.04881 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.024.04980 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %.sroa.029.05079 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ak = phi ptr [ %i.bp, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.020.04881, i64 -8 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.029.05079, i64 -8 ; 4 uses
  %i.an = load i32, ptr %i.al, align 4, !tbaa !337
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !337
  %.not36 = icmp slt i32 %i.an, %i.ao
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph82
  %i.ap = getelementptr inbounds i8, ptr %.sroa.024.04980, i64 -8 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  store ptr %i.aq, ptr %1, align 8, !tbaa !386, !noalias !3354
  %i.ar = load ptr, ptr %0, align 8, !tbaa !386, !noalias !3355 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !386, !noalias !3355
  %i.at = load i64, ptr %i.as, align 4
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !337
  store i32 %i.au, ptr %i.as, align 4, !tbaa !346
  %i.av = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !337
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !347
  %i.ay = load i32, ptr %i.al, align 4, !tbaa !337
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !346
  %i.az = getelementptr inbounds i8, ptr %.sroa.020.04881, i64 -4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !337
  store i32 %i.ba, ptr %i.av, align 4, !tbaa !347
  %i.bb = load i32, ptr %i.ap, align 4, !tbaa !337
  store i32 %i.bb, ptr %i.al, align 4, !tbaa !346
  %i.bc = getelementptr inbounds i8, ptr %.sroa.024.04980, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !337
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !347
  store i64 %i.at, ptr %i.ap, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph82
  %i.be = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 3 uses
  store ptr %i.be, ptr %1, align 8, !tbaa !386, !noalias !3356
  %i.bf = load ptr, ptr %0, align 8, !tbaa !386, !noalias !3357 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8 ; 3 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !386, !noalias !3357
  %i.bh = load i64, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !337
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !346
  %i.bj = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !337
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !347
  %i.bm = load i32, ptr %i.am, align 4, !tbaa !337
  store i32 %i.bm, ptr %i.be, align 4, !tbaa !346
  %i.bn = getelementptr inbounds i8, ptr %.sroa.029.05079, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !337
  store i32 %i.bo, ptr %i.bj, align 4, !tbaa !347
  store i64 %i.bh, ptr %i.am, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.020.1 = phi ptr [ %i.al, %bb.d ], [ %.sroa.020.04881, %bb.e ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %i.ap, %bb.d ], [ %.sroa.024.04980, %bb.e ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %.sroa.029.05079, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !386   ; 3 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !386   ; 2 uses
  %.not35 = icmp eq ptr %i.bp, %i.bq
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !3338

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit
  %.sroa.020.046 = phi ptr [ %.sroa.020.048.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %bb.f ]
  %.sroa.024.044 = phi ptr [ %.sroa.024.049.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %bb.f ]
  %.sroa.029.042 = phi ptr [ %.sroa.029.050.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPSt4pairIiiEEES7_EET0_NS0_9forward_tET_SA_S8_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %bb.f ]
  store ptr %.sroa.024.044, ptr %3, align 8, !tbaa !386
  store ptr %.sroa.029.042, ptr %6, align 8, !tbaa !386
  store ptr %.sroa.020.046, ptr %5, align 8, !tbaa !386
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 5 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %7 = mul i64 %2, %i.b
  %8 = shl i64 %7, 3                              ; 2 uses
  %i.k = shl i64 %3, 3                            ; 6 uses
  %9 = getelementptr i8, ptr %1, i64 %8
  %scevgep = getelementptr i8, ptr %9, i64 %i.k   ; 2 uses
  %i.l = or disjoint i64 %i.k, 4                  ; 2 uses
  %10 = add i64 %i.k, %.idx104                    ; 2 uses
  %scevgep186 = getelementptr i8, ptr %1, i64 %10
  %scevgep187 = getelementptr i8, ptr %1, i64 %i.l ; 3 uses
  %11 = getelementptr i8, ptr %1, i64 %10
  %scevgep.a = getelementptr i8, ptr %11, i64 -4
  %scevgep184 = getelementptr i8, ptr %1, i64 %8
  %i.m = getelementptr i8, ptr %scevgep184, i64 %i.k
  %scevgep185 = getelementptr i8, ptr %i.m, i64 -4 ; 2 uses
  %i.n = add i64 %.idx104, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 120
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %stride.check = icmp slt i64 %.idx104, 0
  %bound0186 = icmp ult ptr %i.d, %scevgep186
  %bound1187 = icmp ult ptr %scevgep187, %scevgep.a
  %found.conflict188 = and i1 %bound0186, %bound1187
  %invariant.op = or i1 %stride.check, %found.conflict188
  %i.s = getelementptr i8, ptr %1, i64 %i.l
  %i.t = getelementptr i8, ptr %1, i64 %i.k
  %n.vec = and i64 %i.p, 4611686018427387902      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.x = icmp eq ptr %.1101, %i.w
  br i1 %i.x, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.y = add i64 %.075111, -1
  %i.z = zext nneg i8 %.1 to i64
  %i.aa = add i64 %i.y, %i.z
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ac, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ab, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !3358

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ac, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ab, %.lr.ph123.split.us.preheader.prol ]
  %i.ad = icmp ult i64 %i.aa, 7
  br i1 %i.ad, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.am, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.al, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.069120.us, i64 %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %2
  %i.am = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.am, %i.v
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !3359

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.cr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.cp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
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
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !306
  %i.az = load i8, ptr %i.as, align 1, !tbaa !306
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !75

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
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !337
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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = mul i64 %indvar, %.idx104               ; 3 uses
  %i.bq = shl i64 %.022.lcssa.i, 3
  %i.br = add i64 %i.bq, 8
  %i.bs = mul i64 %2, %i.br                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs  ; 3 uses
  %bound0 = icmp ult ptr %i.d, %i.bu
  %bound1 = icmp ult ptr %i.bh, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.bv = getelementptr i8, ptr %i.s, i64 %i.bp
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx  ; 3 uses
  %i.bx = getelementptr i8, ptr %i.t, i64 %i.bp
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs  ; 3 uses
  %bound0189 = icmp ult ptr %i.d, %i.by
  %bound1190 = icmp ult ptr %i.bw, %scevgep185
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx.reass, %found.conflict191
  %bound0193 = icmp ult ptr %i.bh, %scevgep
  %bound1194 = icmp ult ptr %scevgep187, %i.bu
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %i.bh, %i.by
  %bound1198 = icmp ult ptr %i.bw, %i.bu
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %scevgep187, %i.by
  %bound1202 = icmp ult ptr %i.bw, %scevgep
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  br i1 %conflict.rdx204, label %.lr.ph.i.i.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.ca = getelementptr i8, ptr %.071115, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.cb ; 2 uses
  %next.gep205 = getelementptr i8, ptr %.071115, i64 %i.cb ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep205, align 4, !tbaa !337
  %wide.vec207 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec207, ptr %next.gep205, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3360

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader214

.lr.ph.i.i.preheader214:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader214, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader214 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader214 ] ; 4 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ce = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ce, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !337
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !337
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !337
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !337
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cj, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3361

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cl = load i8, ptr %i.bd, align 1, !tbaa !306
  %i.cm = load i8, ptr %.073113, align 1, !tbaa !306
  store i8 %i.cm, ptr %i.bd, align 1, !tbaa !306
  store i8 %i.cl, ptr %.073113, align 1, !tbaa !306
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cn = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.co, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cq = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cq to i64
  %i.cr = add i64 %.072114, %.neg
  %i.cs = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cs to i64
  %i.ct = add i64 %.sroa.speculated89, %.neg78
  %i.cu = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cu, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3362

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cv = trunc nuw i8 %i.dm to i1
  %i.cw = select i1 %i.cv, ptr %i.do, ptr %i.dp
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.cx = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cw, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.ak, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.cz = ptrtoint ptr %i.e to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.cx, ptr noundef %i.e, ptr noundef %i.cy, i64 noundef %i.dc, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.dd = phi i8 [ %i.dm, %bb.l ], [ 1, %.lr.ph123 ]
  %i.de = phi i8 [ %i.dn, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.dq, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.dp, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.do, %bb.l ], [ %1, %.lr.ph123 ]
  %i.df = load i8, ptr %.0121, align 1, !tbaa !306
  %i.dg = load i8, ptr %.1101, align 1, !tbaa !306
  %i.dh = icmp ult i8 %i.df, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = icmp eq i8 %i.de, %i.di
  br i1 %i.dj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.069120, i64 %2
  %i.dl = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.dk, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !387, !range !388 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph123.split, %bb.k
  %i.dm = phi i8 [ %.pre, %bb.k ], [ %i.dd, %.lr.ph123.split ] ; 2 uses
  %i.dn = phi i8 [ %.pre, %bb.k ], [ %i.de, %.lr.ph123.split ]
  %i.do = phi ptr [ %i.dl, %bb.k ], [ %.069120, %.lr.ph123.split ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.069120, i64 %2 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 2 uses
  %.not77 = icmp eq ptr %i.dq, %i.v
  br i1 %.not77, label %._crit_edge124.loopexit129, label %.lr.ph123.split, !llvm.loop !3359
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not276 = icmp eq i64 %i.f, 0
  br i1 %.not276, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx250 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx250                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep401 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep399 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx250
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx250
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx250, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx250, 0
  %bound0400 = icmp ult ptr %i.j, %scevgep
  %bound1401 = icmp ult ptr %scevgep401, %scevgep.a
  %found.conflict402 = and i1 %bound0400, %bound1401
  %invariant.op = or i1 %stride.check, %found.conflict402
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hy, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0286 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.099285 = phi i64 [ %i.n, %.lr.ph ], [ %i.hw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 7 uses
  %.0102283 = phi ptr [ %0, %.lr.ph ], [ %i.hu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 15 uses
  %.0105282 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.0108281 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0216280 = phi ptr [ %1, %.lr.ph ], [ %.2218, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 22 uses
  %.0222279 = phi ptr [ %i.i, %.lr.ph ], [ %.2224, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 22 uses
  %.0228278 = phi ptr [ %i.g, %.lr.ph ], [ %.1229, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 13 uses
  %.0234277 = phi i64 [ %i.f, %.lr.ph ], [ %i.hz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 5 uses
  %.0108281456 = ptrtoaddr ptr %.0108281 to i64
  %.0216280457 = ptrtoaddr ptr %.0216280 to i64
  %i.an = icmp ult i64 %.099285, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099285, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0102283, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0102283, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !306
  %i.az = load i8, ptr %i.as, align 1, !tbaa !306
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !75

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated206 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0234277) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx250 ; 15 uses
  %.not119 = icmp eq i64 %.0286, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105282 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108281, %.0222279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102283, i64 %.022.lcssa.i ; 9 uses
  %i.bo = icmp eq ptr %.0228278, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108281, %.0222279        ; 2 uses
  %i.bq = trunc nuw i8 %.0105282 to i1
  br i1 %i.bq, label %bb.j, label %.thread342

bb.i:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !306
  %i.bs = load i8, ptr %.0228278, align 1, !tbaa !306
  %i.bt = icmp ult i8 %i.br, %i.bs                ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108281, %.0222279        ; 2 uses
  %i.bw = trunc nuw i8 %.0105282 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0216280, %.0108281
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108281456, -8
  %i.cb = sub i64 %i.ca, %.0216280457             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.cb, 168
  br i1 %min.iters.check459, label %.lr.ph.i.i.preheader800, label %vector.memcheck460

vector.memcheck460:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0222279, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0222279, i64 4  ; 3 uses
  %i.ci = add i64 %i.ce, 8                        ; 2 uses
  %i.cj = getelementptr i8, ptr %.0222279, i64 %i.ci ; 3 uses
  %bound0461 = icmp ult ptr %.0222279, %i.cj
  %bound1462 = icmp ult ptr %i.ch, %i.cg
  %found.conflict463 = and i1 %bound0461, %bound1462
  %i.ck = getelementptr i8, ptr %.0216280, i64 %i.cf ; 2 uses
  %bound0464 = icmp ult ptr %.0222279, %i.ck
  %bound1465 = icmp ult ptr %.0216280, %i.cg
  %found.conflict466 = and i1 %bound0464, %bound1465
  %conflict.rdx467 = or i1 %found.conflict463, %found.conflict466
  %i.cl = getelementptr i8, ptr %.0216280, i64 4  ; 2 uses
  %i.cm = getelementptr i8, ptr %.0216280, i64 %i.ci ; 2 uses
  %bound0468 = icmp ult ptr %.0222279, %i.cm
  %bound1469 = icmp ult ptr %i.cl, %i.cg
  %found.conflict470 = and i1 %bound0468, %bound1469
  %conflict.rdx471 = or i1 %conflict.rdx467, %found.conflict470
  %bound0472 = icmp ult ptr %i.ch, %i.ck
  %bound1473 = icmp ult ptr %.0216280, %i.cj
  %found.conflict474 = and i1 %bound0472, %bound1473
  %conflict.rdx475 = or i1 %conflict.rdx471, %found.conflict474
  %bound0476 = icmp ult ptr %i.ch, %i.cm
  %bound1477 = icmp ult ptr %i.cl, %i.cj
  %found.conflict478 = and i1 %bound0476, %bound1477
  %conflict.rdx479 = or i1 %conflict.rdx475, %found.conflict478
  br i1 %conflict.rdx479, label %.lr.ph.i.i.preheader800, label %vector.ph480

vector.ph480:                                     ; preds = %vector.memcheck460
  %n.vec481 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec481, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0222279, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0216280, i64 %i.cn
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph480
  %index483 = phi i64 [ 0, %vector.ph480 ], [ %index.next496, %vector.body482 ] ; 2 uses
  %i.cq = shl i64 %index483, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep484 = getelementptr i8, ptr %.0222279, i64 %i.cq
  %next.gep485 = getelementptr i8, ptr %.0222279, i64 %i.cr
  %next.gep486 = getelementptr i8, ptr %.0216280, i64 %i.cq
  %next.gep487 = getelementptr i8, ptr %.0216280, i64 %i.cr
  %wide.vec488 = load <4 x i32>, ptr %next.gep486, align 4, !tbaa !337
  %wide.vec491 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !337
  store <4 x i32> %wide.vec488, ptr %next.gep484, align 4, !tbaa !337
  store <4 x i32> %wide.vec491, ptr %next.gep485, align 4, !tbaa !337
  %index.next496 = add nuw i64 %index483, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next496, %n.vec481
  br i1 %i.cs, label %middle.block497, label %vector.body482, !llvm.loop !3363

middle.block497:                                  ; preds = %vector.body482
  %cmp.n498 = icmp eq i64 %i.cd, %n.vec481
  br i1 %cmp.n498, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader800

.lr.ph.i.i.preheader800:                          ; preds = %vector.memcheck460, %.lr.ph.i.i.preheader, %middle.block497
  %.010.i.i.ph = phi ptr [ %.0222279, %vector.memcheck460 ], [ %.0222279, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block497 ]
  %.079.i.i.ph = phi ptr [ %.0216280, %vector.memcheck460 ], [ %.0216280, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block497 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader800, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader800 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader800 ] ; 3 uses
  %i.ct = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.010.i.i, align 4, !tbaa !346
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !347
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, %.0108281
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3364

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block497, %bb.j
  %.1223 = phi ptr [ %.0222279, %bb.j ], [ %i.co, %middle.block497 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader799, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.cz = mul i64 %indvar, %.idx250               ; 2 uses
  %i.da = shl i64 %.022.lcssa.i, 3
  %i.db = add i64 %i.da, 8
  %i.dc = mul i64 %2, %i.db
  %i.dd = getelementptr i8, ptr %i.aj, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.de
  %bound1 = icmp ult ptr %i.bg, %scevgep399
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.df = getelementptr i8, ptr %i.ak, i64 %i.cz
  %i.dg = getelementptr i8, ptr %i.df, i64 %.idx  ; 3 uses
  %bound0403 = icmp ult ptr %i.j, %i.bh
  %bound1404 = icmp ult ptr %i.dg, %scevgep399
  %found.conflict405 = and i1 %bound0403, %bound1404
  %conflict.rdx406 = or i1 %conflict.rdx.reass, %found.conflict405
  %bound0407 = icmp ult ptr %i.bg, %i.l
  %bound1408 = icmp ult ptr %scevgep401, %i.de
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx406, %found.conflict409
  %bound0411 = icmp ult ptr %i.bg, %i.bh
  %bound1412 = icmp ult ptr %i.dg, %i.de
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  %bound0415 = icmp ult ptr %scevgep401, %i.bh
  %bound1416 = icmp ult ptr %i.dg, %i.l
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict417
  br i1 %conflict.rdx418, label %.lr.ph.i.i127.preheader799, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dh = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.di = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dj ; 2 uses
  %next.gep419 = getelementptr i8, ptr %i.am, i64 %i.dj ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep419, align 4, !tbaa !337
  %wide.vec421 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec421, ptr %next.gep419, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !3365

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader799

.lr.ph.i.i127.preheader799:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.dh, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader799, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader799 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.dr, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader799 ] ; 4 uses
  %i.dl = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dm = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dm, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dl, ptr %.010.i.i128, align 4, !tbaa !337
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !337
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !337
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !337
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.dr, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3366

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dt = load i8, ptr %i.bn, align 1, !tbaa !306
  %i.du = load i8, ptr %.0102283, align 1, !tbaa !306
  store i8 %i.du, ptr %i.bn, align 1, !tbaa !306
  store i8 %i.dt, ptr %.0102283, align 1, !tbaa !306
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dv = icmp eq ptr %i.bn, %.0228278
  br i1 %i.dv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = icmp eq ptr %.0228278, %.0102283
  %spec.select = select i1 %i.dw, ptr %i.bn, ptr %.0228278
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread342:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread343, label %.thread344

.thread344:                                       ; preds = %.thread342
  store ptr %.0216280, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108281, ptr %i.d, align 8, !tbaa !330
  %i.dx = ptrtoint ptr %.0108281 to i64
  %i.dy = ptrtoint ptr %.0216280 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.0222279, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread343:                                       ; preds = %.thread342
  %i.eb = ptrtoint ptr %.0108281 to i64
  %i.ec = ptrtoint ptr %.0216280 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eh = ptrtoint ptr %.0108281 to i64
  %i.ei = ptrtoint ptr %.0216280 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.el ; 2 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !330
  store ptr %i.em, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0216280, ptr noundef %.0108281, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread343, %bb.p
  %i.eo = phi i8 [ 1, %.thread343 ], [ %i.bu, %bb.p ]
  %i.ep = phi i1 [ true, %.thread343 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.eq = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0216280, ptr noundef %.0108281, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.er = phi i8 [ %i.bu, %bb.q ], [ %i.eo, %bb.r ]
  %i.es = phi i1 [ %i.bt, %bb.q ], [ %i.ep, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0216280, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108281, ptr %i.d, align 8, !tbaa !330
  %i.et = ptrtoint ptr %.0108281 to i64
  %i.eu = ptrtoint ptr %.0216280 to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.0222279, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0222279, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread344, %bb.s
  %i.ey = phi ptr [ %i.ea, %.thread344 ], [ %i.ew, %bb.s ]
  %i.ez = phi i8 [ 1, %.thread344 ], [ %i.bu, %bb.s ]
  %i.fa = phi i1 [ true, %.thread344 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fb = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0222279, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fc = phi i8 [ %i.bu, %bb.t ], [ %i.ez, %bb.u ]
  %i.fd = phi i1 [ %i.bt, %bb.t ], [ %i.fa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.fe = phi i1 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.ff = phi i8 [ %i.fc, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.er, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fh = ptrtoint ptr %i.bi to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fl ; 6 uses
  %.not.i132 = icmp eq ptr %i.fg, %i.fm
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fg, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fn = mul i64 %indvar, %.idx250               ; 3 uses
  %i.fo = add i64 %i.ae, %i.fn                    ; 2 uses
  %i.fp = sub i64 %i.fo, %i.fi                    ; 2 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check510 = icmp ult i64 %i.fp, 40
  br i1 %min.iters.check510, label %.lr.ph.i.i134.preheader801, label %vector.memcheck511

vector.memcheck511:                               ; preds = %.lr.ph.i.i134.preheader
  %i.fs = add i64 %i.aa, %i.fn
  %i.ft = sub i64 %i.fs, %i.fi
  %i.fu = and i64 %i.ft, -8                       ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fg, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = add i64 %i.x, %i.fn
  %i.fy = shl i64 %.022.lcssa.i, 3
  %i.fz = add i64 %i.fy, 8
  %i.ga = mul i64 %2, %i.fz
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.lg = phi ptr [ %i.ie, %bb.aj ], [ %i.l, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216267563 = ptrtoaddr ptr %.0216267 to i64
  %.0108265562 = ptrtoaddr ptr %.0108265 to i64
  %i.lh = add i64 %.0108265562, -8
  %i.li = sub i64 %i.lh, %.0216267563             ; 3 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check565 = icmp ult i64 %i.li, 376
  br i1 %min.iters.check565, label %.lr.ph.i.i161.preheader796, label %vector.memcheck566

vector.memcheck566:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ll = and i64 %i.li, -8                       ; 2 uses
  %i.lm = or disjoint i64 %i.ll, 4                ; 2 uses
  %i.ln = getelementptr i8, ptr %.0222269, i64 %i.lm ; 3 uses
  %i.lo = getelementptr i8, ptr %.0222269, i64 4  ; 3 uses
  %i.lp = add i64 %i.ll, 8                        ; 2 uses
  %i.lq = getelementptr i8, ptr %.0222269, i64 %i.lp ; 3 uses
  %bound0567 = icmp ult ptr %.0222269, %i.lq
  %bound1568 = icmp ult ptr %i.lo, %i.ln
  %found.conflict569 = and i1 %bound0567, %bound1568
  %i.lr = getelementptr i8, ptr %.0216267, i64 %i.lm ; 2 uses
  %bound0570 = icmp ult ptr %.0222269, %i.lr
  %bound1571 = icmp ult ptr %.0216267, %i.ln
  %found.conflict572 = and i1 %bound0570, %bound1571
  %conflict.rdx573 = or i1 %found.conflict569, %found.conflict572
  %i.ls = getelementptr i8, ptr %.0216267, i64 4  ; 2 uses
  %i.lt = getelementptr i8, ptr %.0216267, i64 %i.lp ; 2 uses
  %bound0574 = icmp ult ptr %.0222269, %i.lt
  %bound1575 = icmp ult ptr %i.ls, %i.ln
  %found.conflict576 = and i1 %bound0574, %bound1575
  %conflict.rdx577 = or i1 %conflict.rdx573, %found.conflict576
  %bound0578 = icmp ult ptr %i.lo, %i.lr
  %bound1579 = icmp ult ptr %.0216267, %i.lq
  %found.conflict580 = and i1 %bound0578, %bound1579
  %conflict.rdx581 = or i1 %conflict.rdx577, %found.conflict580
  %bound0582 = icmp ult ptr %i.lo, %i.lt
  %bound1583 = icmp ult ptr %i.ls, %i.lq
  %found.conflict584 = and i1 %bound0582, %bound1583
  %conflict.rdx585 = or i1 %conflict.rdx581, %found.conflict584
  br i1 %conflict.rdx585, label %.lr.ph.i.i161.preheader796, label %vector.ph586

vector.ph586:                                     ; preds = %vector.memcheck566
  %n.vec587 = and i64 %i.lk, 4611686018427387900  ; 3 uses
  %i.lu = shl i64 %n.vec587, 3                    ; 2 uses
  %i.lv = getelementptr i8, ptr %.0222269, i64 %i.lu ; 2 uses
  %i.lw = getelementptr i8, ptr %.0216267, i64 %i.lu
  br label %vector.body588

vector.body588:                                   ; preds = %vector.body588, %vector.ph586
  %index589 = phi i64 [ 0, %vector.ph586 ], [ %index.next602, %vector.body588 ] ; 2 uses
  %i.lx = shl i64 %index589, 3                    ; 3 uses
  %i.ly = or disjoint i64 %i.lx, 16               ; 2 uses
  %next.gep590 = getelementptr i8, ptr %.0222269, i64 %i.lx
  %next.gep591 = getelementptr i8, ptr %.0222269, i64 %i.ly
  %next.gep592 = getelementptr i8, ptr %.0216267, i64 %i.lx
  %next.gep593 = getelementptr i8, ptr %.0216267, i64 %i.ly
  %wide.vec594 = load <4 x i32>, ptr %next.gep592, align 4, !tbaa !337
  %wide.vec597 = load <4 x i32>, ptr %next.gep593, align 4, !tbaa !337
  store <4 x i32> %wide.vec594, ptr %next.gep590, align 4, !tbaa !337
  store <4 x i32> %wide.vec597, ptr %next.gep591, align 4, !tbaa !337
  %index.next602 = add nuw i64 %index589, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next602, %n.vec587
  br i1 %i.lz, label %middle.block603, label %vector.body588, !llvm.loop !3377

middle.block603:                                  ; preds = %vector.body588
  %cmp.n604 = icmp eq i64 %i.lk, %n.vec587
  br i1 %cmp.n604, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader796

.lr.ph.i.i161.preheader796:                       ; preds = %vector.memcheck566, %.lr.ph.i.i161.preheader, %middle.block603
  %.010.i.i162.ph = phi ptr [ %.0222269, %vector.memcheck566 ], [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.lv, %middle.block603 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %vector.memcheck566 ], [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.lw, %middle.block603 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader796, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mf, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader796 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.me, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader796 ] ; 3 uses
  %i.ma = load i32, ptr %.079.i.i163, align 4, !tbaa !337
  store i32 %i.ma, ptr %.010.i.i162, align 4, !tbaa !346
  %i.mb = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !337
  %i.md = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !347
  %i.me = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.me, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3378

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block603, %middle.block745, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mg = phi ptr [ %i.ic, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.am, %.thread.thread ], [ %i.ic, %bb.aj ], [ %i.lf, %bb.ak ], [ %i.ic, %middle.block745 ], [ %i.lf, %middle.block603 ], [ %i.ic, %.lr.ph.i.i154 ], [ %i.lf, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block745 ], [ %.2, %middle.block603 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block745 ], [ %.0234274, %middle.block603 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block745 ], [ %.0228271, %middle.block603 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block745 ], [ %.0102261, %middle.block603 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block745 ], [ %.099258, %middle.block603 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.mh = phi ptr [ %i.ie, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.ie, %bb.aj ], [ %i.lg, %bb.ak ], [ %i.ie, %middle.block745 ], [ %i.lg, %middle.block603 ], [ %i.ie, %.lr.ph.i.i154 ], [ %i.lg, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.ku, %middle.block745 ], [ %i.lv, %middle.block603 ], [ %i.le, %.lr.ph.i.i154 ], [ %i.mf, %.lr.ph.i.i161 ]
  %i.mi = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.mh, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.mj = load ptr, ptr %i.e, align 8, !tbaa !330 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.mj, %i.mh
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mk = ptrtoaddr ptr %i.mj to i64
  %i.ml = ptrtoaddr ptr %i.mh to i64
  %i.mm = add i64 %i.ml, -8
  %i.mn = sub i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = lshr i64 %i.mn, 3
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check756 = icmp ult i64 %i.mn, 104
  br i1 %min.iters.check756, label %.lr.ph.i.i168.preheader782, label %vector.memcheck757

vector.memcheck757:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mq = and i64 %i.mn, -8
  %i.mr = add i64 %i.mq, 8                        ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mi, i64 %i.mr
  %i.mt = getelementptr i8, ptr %i.mj, i64 %i.mr
  %bound0758 = icmp ult ptr %i.mi, %i.mt
  %bound1759 = icmp ult ptr %i.mj, %i.ms
  %found.conflict760 = and i1 %bound0758, %bound1759
  br i1 %found.conflict760, label %.lr.ph.i.i168.preheader782, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck757
  %n.vec762 = and i64 %i.mp, 4611686018427387900  ; 3 uses
  %i.mu = shl i64 %n.vec762, 3                    ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mi, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mj, i64 %i.mu
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph761
  %index764 = phi i64 [ 0, %vector.ph761 ], [ %index.next777, %vector.body763 ] ; 2 uses
  %i.mx = shl i64 %index764, 3                    ; 3 uses
  %i.my = or disjoint i64 %i.mx, 16               ; 2 uses
  %next.gep765 = getelementptr i8, ptr %i.mi, i64 %i.mx
  %next.gep766 = getelementptr i8, ptr %i.mi, i64 %i.my
  %next.gep767 = getelementptr i8, ptr %i.mj, i64 %i.mx
  %next.gep768 = getelementptr i8, ptr %i.mj, i64 %i.my
  %wide.vec769 = load <4 x i32>, ptr %next.gep767, align 4, !tbaa !337, !alias.scope !3386
  %wide.vec772 = load <4 x i32>, ptr %next.gep768, align 4, !tbaa !337, !alias.scope !3386
  store <4 x i32> %wide.vec769, ptr %next.gep765, align 4, !tbaa !337, !alias.scope !3387, !noalias !3386
  store <4 x i32> %wide.vec772, ptr %next.gep766, align 4, !tbaa !337, !alias.scope !3387, !noalias !3386
  %index.next777 = add nuw i64 %index764, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next777, %n.vec762
  br i1 %i.mz, label %middle.block778, label %vector.body763, !llvm.loop !3382

middle.block778:                                  ; preds = %vector.body763
  %cmp.n779 = icmp eq i64 %i.mp, %n.vec762
  br i1 %cmp.n779, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader782

.lr.ph.i.i168.preheader782:                       ; preds = %vector.memcheck757, %.lr.ph.i.i168.preheader, %middle.block778
  %.010.i.i169.ph = phi ptr [ %i.mi, %vector.memcheck757 ], [ %i.mi, %.lr.ph.i.i168.preheader ], [ %i.mv, %middle.block778 ]
  %.079.i.i170.ph = phi ptr [ %i.mj, %vector.memcheck757 ], [ %i.mj, %.lr.ph.i.i168.preheader ], [ %i.mw, %middle.block778 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader782, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.nf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader782 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ne, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader782 ] ; 3 uses
  %i.na = load i32, ptr %.079.i.i170, align 4, !tbaa !337
  store i32 %i.na, ptr %.010.i.i169, align 4, !tbaa !346
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !337
  %i.nd = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !347
  %i.ne = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ne, %i.mh
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3383

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block778, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not280 = icmp eq i64 %i.f, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx254                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep405 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep403 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx254
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx254, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx254, 0
  %bound0404 = icmp ult ptr %i.j, %scevgep
  %bound1405 = icmp ult ptr %scevgep405, %scevgep.a
  %found.conflict406 = and i1 %bound0404, %bound1405
  %invariant.op = or i1 %stride.check, %found.conflict406
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.n, %.lr.ph ], [ %i.hx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.hv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 16 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 22 uses
  %.0226283 = phi ptr [ %i.i, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 21 uses
  %.0232282 = phi ptr [ %i.g, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.f, %.lr.ph ], [ %i.ia, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 5 uses
  %.0108285465 = ptrtoaddr ptr %.0108285 to i64
  %.0220284466 = ptrtoaddr ptr %.0220284 to i64
  %i.an = icmp ult i64 %.099289, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !306
  %i.az = load i8, ptr %i.as, align 1, !tbaa !306
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !75

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0238281) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0290, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105286 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108285, %.0226283
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.022.lcssa.i ; 9 uses
  %i.bo = icmp eq ptr %.0232282, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108285, %.0226283        ; 2 uses
  %i.bq = trunc nuw i8 %.0105286 to i1
  br i1 %i.bq, label %bb.j, label %.thread346

bb.i:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !306
  %i.bs = load i8, ptr %.0232282, align 1, !tbaa !306
  %i.bt = icmp ult i8 %i.br, %i.bs                ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108285, %.0226283        ; 2 uses
  %i.bw = trunc nuw i8 %.0105286 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0220284, %.0108285
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108285465, -8
  %i.cb = sub i64 %i.ca, %.0220284466             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check468 = icmp ult i64 %i.cb, 120
  br i1 %min.iters.check468, label %.lr.ph.i.i.preheader829, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0220284, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0226283, i64 %i.cf ; 3 uses
  %bound0470 = icmp ult ptr %.0220284, %i.ch
  %bound1471 = icmp ult ptr %.0226283, %i.cg
  %found.conflict472 = and i1 %bound0470, %bound1471
  %i.ci = getelementptr i8, ptr %.0220284, i64 4  ; 3 uses
  %i.cj = add i64 %i.ce, 8                        ; 2 uses
  %i.ck = getelementptr i8, ptr %.0220284, i64 %i.cj ; 3 uses
  %bound0473 = icmp ult ptr %.0220284, %i.ck
  %bound1474 = icmp ult ptr %i.ci, %i.cg
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %found.conflict472, %found.conflict475
  %i.cl = getelementptr i8, ptr %.0226283, i64 4  ; 3 uses
  %i.cm = getelementptr i8, ptr %.0226283, i64 %i.cj ; 3 uses
  %bound0477 = icmp ult ptr %.0220284, %i.cm
  %bound1478 = icmp ult ptr %i.cl, %i.cg
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  %bound0481 = icmp ult ptr %.0226283, %i.ck
  %bound1482 = icmp ult ptr %i.ci, %i.ch
  %found.conflict483 = and i1 %bound0481, %bound1482
  %conflict.rdx484 = or i1 %conflict.rdx480, %found.conflict483
  %bound0485 = icmp ult ptr %.0226283, %i.cm
  %bound1486 = icmp ult ptr %i.cl, %i.ch
  %found.conflict487 = and i1 %bound0485, %bound1486
  %conflict.rdx488 = or i1 %conflict.rdx484, %found.conflict487
  %bound0489 = icmp ult ptr %i.ci, %i.cm
  %bound1490 = icmp ult ptr %i.cl, %i.ck
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %conflict.rdx488, %found.conflict491
  br i1 %conflict.rdx492, label %.lr.ph.i.i.preheader829, label %vector.ph493

vector.ph493:                                     ; preds = %vector.memcheck469
  %n.vec494 = and i64 %i.cd, 4611686018427387902  ; 3 uses
  %i.cn = shl i64 %n.vec494, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0226283, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0220284, i64 %i.cn
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph493
  %index496 = phi i64 [ 0, %vector.ph493 ], [ %index.next507, %vector.body495 ] ; 2 uses
  %i.cq = shl i64 %index496, 3                    ; 2 uses
  %next.gep497 = getelementptr i8, ptr %.0226283, i64 %i.cq ; 2 uses
  %next.gep498 = getelementptr i8, ptr %.0220284, i64 %i.cq ; 2 uses
  %wide.vec499 = load <4 x i32>, ptr %next.gep498, align 4, !tbaa !337
  %wide.vec502 = load <4 x i32>, ptr %next.gep497, align 4, !tbaa !337
  store <4 x i32> %wide.vec502, ptr %next.gep498, align 4, !tbaa !337
  store <4 x i32> %wide.vec499, ptr %next.gep497, align 4, !tbaa !337
  %index.next507 = add nuw i64 %index496, 2       ; 2 uses
  %i.cr = icmp eq i64 %index.next507, %n.vec494
  br i1 %i.cr, label %middle.block508, label %vector.body495, !llvm.loop !3388

middle.block508:                                  ; preds = %vector.body495
  %cmp.n509 = icmp eq i64 %i.cd, %n.vec494
  br i1 %cmp.n509, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader829

.lr.ph.i.i.preheader829:                          ; preds = %vector.memcheck469, %.lr.ph.i.i.preheader, %middle.block508
  %.010.i.i.ph = phi ptr [ %.0226283, %vector.memcheck469 ], [ %.0226283, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block508 ]
  %.079.i.i.ph = phi ptr [ %.0220284, %vector.memcheck469 ], [ %.0220284, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block508 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader829, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader829 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader829 ] ; 4 uses
  %i.cs = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ct = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cs, ptr %.010.i.i, align 4, !tbaa !337
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !337
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !337
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !337
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %.0108285
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3389

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block508, %bb.j
  %.1227 = phi ptr [ %.0226283, %bb.j ], [ %i.co, %middle.block508 ], [ %i.cz, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader828, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.da = mul i64 %indvar, %.idx254               ; 2 uses
  %i.db = shl i64 %.022.lcssa.i, 3
  %i.dc = add i64 %i.db, 8
  %i.dd = mul i64 %2, %i.dc
  %i.de = getelementptr i8, ptr %i.aj, i64 %i.da
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.df
  %bound1 = icmp ult ptr %i.bg, %scevgep403
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.dg = getelementptr i8, ptr %i.ak, i64 %i.da
  %i.dh = getelementptr i8, ptr %i.dg, i64 %.idx  ; 3 uses
  %bound0407 = icmp ult ptr %i.j, %i.bh
  %bound1408 = icmp ult ptr %i.dh, %scevgep403
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %conflict.rdx.reass, %found.conflict409
  %bound0411 = icmp ult ptr %i.bg, %i.l
  %bound1412 = icmp ult ptr %scevgep405, %i.df
  %found.conflict413 = and i1 %bound0411, %bound1412
  %conflict.rdx414 = or i1 %conflict.rdx410, %found.conflict413
  %bound0415 = icmp ult ptr %i.bg, %i.bh
  %bound1416 = icmp ult ptr %i.dh, %i.df
  %found.conflict417 = and i1 %bound0415, %bound1416
  %conflict.rdx418 = or i1 %conflict.rdx414, %found.conflict417
  %bound0419 = icmp ult ptr %scevgep405, %i.bh
  %bound1420 = icmp ult ptr %i.dh, %i.l
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %conflict.rdx418, %found.conflict421
  br i1 %conflict.rdx422, label %.lr.ph.i.i127.preheader828, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.dj = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dk ; 2 uses
  %next.gep423 = getelementptr i8, ptr %i.am, i64 %i.dk ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep423, align 4, !tbaa !337
  %wide.vec425 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec425, ptr %next.gep423, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !3390

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader828

.lr.ph.i.i127.preheader828:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader828, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.dt, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader828 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader828 ] ; 4 uses
  %i.dm = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dn = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dn, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dm, ptr %.010.i.i128, align 4, !tbaa !337
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !337
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.ds, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3391

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.du = load i8, ptr %i.bn, align 1, !tbaa !306
  %i.dv = load i8, ptr %.0102287, align 1, !tbaa !306
  store i8 %i.dv, ptr %i.bn, align 1, !tbaa !306
  store i8 %i.du, ptr %.0102287, align 1, !tbaa !306
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dw = icmp eq ptr %i.bn, %.0232282
  br i1 %i.dw, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp eq ptr %.0232282, %.0102287
  %spec.select = select i1 %i.dx, ptr %i.bn, ptr %.0232282
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread346:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread347, label %.thread348

.thread348:                                       ; preds = %.thread346
  store ptr %.0220284, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108285, ptr %i.d, align 8, !tbaa !330
  %i.dy = ptrtoint ptr %.0108285 to i64
  %i.dz = ptrtoint ptr %.0220284 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.0226283, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread347:                                       ; preds = %.thread346
  %i.ec = ptrtoint ptr %.0108285 to i64
  %i.ed = ptrtoint ptr %.0220284 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.eg ; 2 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ei = ptrtoint ptr %.0108285 to i64
  %i.ej = ptrtoint ptr %.0220284 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.em ; 2 uses
  store ptr %i.en, ptr %i.c, align 8, !tbaa !330
  store ptr %i.en, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0220284, ptr noundef %.0108285, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread347, %bb.p
  %i.ep = phi i8 [ 1, %.thread347 ], [ %i.bu, %bb.p ]
  %i.eq = phi i1 [ true, %.thread347 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.er = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0220284, ptr noundef %.0108285, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.es = phi i8 [ %i.bu, %bb.q ], [ %i.ep, %bb.r ]
  %i.et = phi i1 [ %i.bt, %bb.q ], [ %i.eq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0220284, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108285, ptr %i.d, align 8, !tbaa !330
  %i.eu = ptrtoint ptr %.0108285 to i64
  %i.ev = ptrtoint ptr %.0220284 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.0226283, i64 %i.ew ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0226283, ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread348, %bb.s
  %i.ez = phi ptr [ %i.eb, %.thread348 ], [ %i.ex, %bb.s ]
  %i.fa = phi i8 [ 1, %.thread348 ], [ %i.bu, %bb.s ]
  %i.fb = phi i1 [ true, %.thread348 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fc = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0226283, ptr noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fd = phi i8 [ %i.bu, %bb.t ], [ %i.fa, %bb.u ]
  %i.fe = phi i1 [ %i.bt, %bb.t ], [ %i.fb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.ff = phi i1 [ %i.fe, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = phi i8 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fi = ptrtoint ptr %i.bi to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fm ; 6 uses
  %.not.i132 = icmp eq ptr %i.fh, %i.fn
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fh, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fo = mul i64 %indvar, %.idx254               ; 3 uses
  %i.fp = add i64 %i.ae, %i.fo                    ; 2 uses
  %i.fq = sub i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check521 = icmp ult i64 %i.fq, 40
  br i1 %min.iters.check521, label %.lr.ph.i.i134.preheader830, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph.i.i134.preheader
  %i.ft = add i64 %i.aa, %i.fo
  %i.fu = sub i64 %i.ft, %i.fj
  %i.fv = and i64 %i.fu, -8                       ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fh, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = add i64 %i.x, %i.fo
  %i.fz = shl i64 %.022.lcssa.i, 3
  %i.ga = add i64 %i.fz, 8
  %i.gb = mul i64 %2, %i.ga
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairIiiEEESC_SC_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiESA_NSE_9select1stIiEEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  %i.cp = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -8 ; 7 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !337, !noalias !3579 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -4 ; 4 uses
  br i1 %.not18.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i6.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -8 ; 3 uses
  store i32 %i.cn, ptr %i.cp, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !337, !noalias !3579
  %i.ct = getelementptr inbounds i8, ptr %.sroa.07.0.i7.i.ph, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !337, !noalias !3579
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cv, ptr %i.cr, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !337, !noalias !3579
  %i.cw = icmp eq ptr %i.cs, %i.z
  br i1 %i.cw, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split, label %.preheader.i6.i.outer, !llvm.loop !59

bb.r:                                             ; preds = %.preheader.i6.i
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cq, ptr %i.cm, align 4, !tbaa !337, !noalias !3579
  %i.cx = getelementptr inbounds i8, ptr %.sroa.012.0.i8.i, i64 -4 ; 2 uses
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !337, !noalias !3579
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cz, ptr %i.cr, align 4, !tbaa !337, !noalias !3579
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !337, !noalias !3579
  %i.da = icmp eq ptr %i.cm, %i.ae
  br i1 %i.da, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split, label %.preheader.i6.i, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split: ; preds = %.split.i14.i, %.split.i.i, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.h, %bb.p, %bb.m
  %.sroa.017.124.i16.sink.i.sink = phi ptr [ %i.ai, %bb.h ], [ %i.bc, %bb.k ], [ %.sroa.012.0.i8.i, %bb.q ], [ %.sroa.012.0.i.i, %bb.n ], [ %i.ag, %bb.p ], [ %i.ag, %bb.m ], [ %.sroa.017.0.i.i, %.split.i.i ], [ %i.bv, %bb.o ], [ %i.cm, %bb.r ], [ %.sroa.017.0.i12.i, %.split.i14.i ]
  %.sroa.013.123.i17.sink.i.sink = phi ptr [ %.sroa.013.0.ph.i.i, %bb.h ], [ %.sroa.013.0.ph.i10.i, %bb.k ], [ %i.z, %bb.q ], [ %i.z, %bb.n ], [ %i.b, %bb.p ], [ %i.b, %bb.m ], [ %i.z, %.split.i.i ], [ %.sroa.07.0.i.i.ph, %bb.o ], [ %.sroa.07.0.i7.i.ph, %bb.r ], [ %i.z, %.split.i14.i ]
  %.sroa.066.0.ph = phi ptr [ %i.av, %bb.h ], [ %i.bo, %bb.k ], [ %i.cp, %bb.r ], [ %i.bz, %bb.o ], [ %i.af, %bb.p ], [ %i.af, %bb.m ], [ %i.an, %.split.i.i ], [ %i.bz, %bb.n ], [ %i.cp, %bb.q ], [ %i.bg, %.split.i14.i ]
  %.sroa.071.0.ph = phi ptr [ %.sroa.010.0.ph.i.i, %bb.h ], [ %.sroa.010.0.ph.i9.i, %bb.k ], [ %i.ac, %bb.r ], [ %i.ac, %bb.o ], [ %i.ac, %bb.p ], [ %i.ac, %bb.m ], [ %i.ah, %.split.i.i ], [ %i.ac, %bb.n ], [ %i.ac, %bb.q ], [ %i.bb, %.split.i14.i ]
  store ptr %.sroa.017.124.i16.sink.i.sink, ptr %4, align 8, !tbaa !386, !noalias !344
  store ptr %.sroa.013.123.i17.sink.i.sink, ptr %3, align 8, !tbaa !386, !noalias !344
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.sroa.066.0 = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.i ], [ %.sroa.066.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split ] ; 6 uses
  %.sroa.071.0 = phi ptr [ %i.ac, %bb.f ], [ %i.ac, %bb.i ], [ %.sroa.071.0.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit.sink.split ] ; 4 uses
  store ptr %.sroa.066.0, ptr %6, align 8, !tbaa !386
  %i.db = load ptr, ptr %3, align 8, !tbaa !386   ; 6 uses
  %i.dc = icmp eq ptr %i.db, %.sroa.066.0
  br i1 %i.dc, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairIiiEEES7_S7_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiES5_NSA_9select1stIiEEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b.exit
  br i1 %.not23, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not1.i = icmp eq ptr %.sroa.071.0, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.t, %.lr.ph.i28
  %.sroa.054.0 = phi ptr [ %i.df, %.lr.ph.i28 ], [ %i.db, %bb.t ] ; 2 uses
  %i.dd = phi ptr [ %i.de, %.lr.ph.i28 ], [ %.sroa.071.0, %bb.t ] ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -8 ; 4 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !337, !noalias !3580
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !337, !noalias !3580
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !337, !noalias !3580
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !337, !noalias !3580
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 -4 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.054.0, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !337, !noalias !3580
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !337, !noalias !3580
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !337, !noalias !3580
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !337, !noalias !3580
  %.not.i = icmp eq ptr %i.de, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i28, !llvm.loop !47

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
  %i.dq = load i64, ptr %i.dp, align 4, !noalias !3581
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !337, !noalias !3581
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !346, !noalias !3581
  %i.ds = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !337, !noalias !3581
  %i.du = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !347, !noalias !3581
  %i.dv = load i32, ptr %i.dn, align 4, !tbaa !337, !noalias !3581
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !346, !noalias !3581
  %i.dw = getelementptr inbounds i8, ptr %i.dm, i64 -4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !337, !noalias !3581
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !347, !noalias !3581
  store i64 %i.dq, ptr %i.dn, align 4, !noalias !3581
  %.not.i30 = icmp eq ptr %i.dn, %i.z
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i29, !llvm.loop !60

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.sroa.066.0, %bb.w ] ; 2 uses
  %i.dy = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.db, %bb.w ] ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8 ; 4 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !337, !noalias !3582
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !337, !noalias !3582
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !337, !noalias !3582
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !337, !noalias !3582
  %i.ed = getelementptr inbounds i8, ptr %i.dy, i64 -4 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !337, !noalias !3582
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !337, !noalias !3582
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !337, !noalias !3582
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !337, !noalias !3582
  %.not.i.i31 = icmp eq ptr %i.dz, %i.z
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !47

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.z, %bb.s ], [ %i.ea, %.lr.ph.i.i ], [ %i.db, %bb.t ], [ %i.df, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.dp, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !386
  %i.eh = load ptr, ptr %1, align 8, !tbaa !399   ; 4 uses
  %i.ei = sub i64 0, %.018.lcssa.i
  %i.ej = getelementptr inbounds i8, ptr %i.eh, i64 %i.ei ; 3 uses
  %.not.i32 = icmp eq ptr %i.z, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -1 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.eh, i64 -1 ; 2 uses
  %i.em = load i8, ptr %i.ek, align 1, !tbaa !306
  %i.en = load i8, ptr %i.el, align 1, !tbaa !306
  store i8 %i.en, ptr %i.ek, align 1, !tbaa !306
  store i8 %i.em, ptr %i.el, align 1, !tbaa !306
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit.i
  %i.eo = load ptr, ptr %2, align 8, !tbaa !399   ; 2 uses
  %i.ep = icmp eq ptr %i.ej, %i.eo
  br i1 %i.ep, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = icmp eq ptr %i.eo, %i.eh
  br i1 %i.eq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.eh, %bb.y ], [ %i.ej, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !399
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairIiiEEES6_EET0_T_S8_S7_.exit, %bb.z, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !386
  %i.er = load ptr, ptr %1, align 8, !tbaa !399
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -1 ; 2 uses
  store ptr %i.es, ptr %1, align 8, !tbaa !399
  %i.et = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.et to i64
  %i.eu = add i64 %.0140, %.neg
  %i.ev = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.ev to i64
  %i.ew = add i64 %.sroa.speculated, %.neg24
  %i.ex = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ex, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3575

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairIiiEEEEEvT_SA_RSA_T0_SC_SC_.exit, %bb.a
  %i.ey = load ptr, ptr %6, align 8, !tbaa !386
  store ptr %i.ey, ptr %0, align 8, !tbaa !386
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 5 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %7 = mul i64 %2, %i.b
  %8 = shl i64 %7, 3                              ; 2 uses
  %i.k = shl i64 %3, 3                            ; 6 uses
  %9 = getelementptr i8, ptr %1, i64 %8
  %scevgep = getelementptr i8, ptr %9, i64 %i.k   ; 2 uses
  %i.l = or disjoint i64 %i.k, 4                  ; 2 uses
  %10 = add i64 %i.k, %.idx104                    ; 2 uses
  %scevgep189 = getelementptr i8, ptr %1, i64 %10
  %scevgep190 = getelementptr i8, ptr %1, i64 %i.l ; 3 uses
  %11 = getelementptr i8, ptr %1, i64 %10
  %scevgep.a = getelementptr i8, ptr %11, i64 -4
  %scevgep187 = getelementptr i8, ptr %1, i64 %8
  %i.m = getelementptr i8, ptr %scevgep187, i64 %i.k
  %scevgep188 = getelementptr i8, ptr %i.m, i64 -4 ; 2 uses
  %i.n = add i64 %.idx104, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 120
  %i.q = getelementptr i8, ptr %1, i64 %i.k
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %stride.check = icmp slt i64 %.idx104, 0
  %bound0189 = icmp ult ptr %i.d, %scevgep189
  %bound1190 = icmp ult ptr %scevgep190, %scevgep.a
  %found.conflict191 = and i1 %bound0189, %bound1190
  %invariant.op = or i1 %stride.check, %found.conflict191
  %i.s = getelementptr i8, ptr %1, i64 %i.l
  %i.t = getelementptr i8, ptr %1, i64 %i.k
  %n.vec = and i64 %i.p, 4611686018427387902      ; 3 uses
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  %.not77119 = icmp eq i64 %i.bn, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.x = icmp eq ptr %.1101, %i.w
  br i1 %i.x, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.y = add i64 %.idx129, -8                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1
  %xtraiter = and i64 %i.aa, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ac, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ab, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !3583

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ac, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ab, %.lr.ph124.split.us.preheader.prol ]
  %i.ad = icmp ult i64 %i.y, 56
  br i1 %i.ad, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.am, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.al, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.069121.us, i64 %2
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %2
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %2
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %2
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.am, %i.v
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !3584

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.cp, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
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
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !367
  %i.az = load i64, ptr %i.as, align 8, !tbaa !367
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !41

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
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !337
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
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = mul i64 %indvar, %.idx104               ; 3 uses
  %i.bq = shl i64 %.022.lcssa.i, 3
  %i.br = add i64 %i.bq, 8
  %i.bs = mul i64 %2, %i.br                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bs  ; 3 uses
  %bound0 = icmp ult ptr %i.d, %i.bu
  %bound1 = icmp ult ptr %i.bh, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.bv = getelementptr i8, ptr %i.s, i64 %i.bp
  %i.bw = getelementptr i8, ptr %i.bv, i64 %.idx  ; 3 uses
  %i.bx = getelementptr i8, ptr %i.t, i64 %i.bp
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bs  ; 3 uses
  %bound0192 = icmp ult ptr %i.d, %i.by
  %bound1193 = icmp ult ptr %i.bw, %scevgep188
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx.reass, %found.conflict194
  %bound0196 = icmp ult ptr %i.bh, %scevgep
  %bound1197 = icmp ult ptr %scevgep190, %i.bu
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %i.bh, %i.by
  %bound1201 = icmp ult ptr %i.bw, %i.bu
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %scevgep190, %i.by
  %bound1205 = icmp ult ptr %i.bw, %scevgep
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  br i1 %conflict.rdx207, label %.lr.ph.i.i.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bz = getelementptr i8, ptr %i.bh, i64 %i.u
  %i.ca = getelementptr i8, ptr %.071116, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.cb ; 2 uses
  %next.gep208 = getelementptr i8, ptr %.071116, i64 %i.cb ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !337
  %wide.vec210 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec210, ptr %next.gep208, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3585

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i.preheader217

.lr.ph.i.i.preheader217:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader217, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader217 ] ; 4 uses
  %i.cd = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ce = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ce, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cd, ptr %.010.i.i, align 4, !tbaa !337
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !337
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !337
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !337
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !337
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cj, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3586

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cl = load i64, ptr %i.bd, align 8, !tbaa !367
  %i.cm = load i64, ptr %.073114, align 8, !tbaa !367
  store i64 %i.cm, ptr %i.bd, align 8, !tbaa !367
  store i64 %i.cl, ptr %.073114, align 8, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.cn = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cn, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.co = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.co, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cq = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cq to i64
  %i.cr = add i64 %.072115, %.neg
  %i.cs = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cs to i64
  %i.ct = add i64 %.sroa.speculated89, %.neg78
  %i.cu = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cu, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3587

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cv = trunc nuw i8 %i.dm to i1
  %i.cw = select i1 %i.cv, ptr %i.do, ptr %i.dp
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cx = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cw, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.ak, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %6
  %i.cz = ptrtoint ptr %i.e to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.cx, ptr noundef %i.e, ptr noundef %i.cy, i64 noundef %i.dc, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.dd = phi i8 [ %i.dm, %bb.l ], [ 1, %.lr.ph124 ]
  %i.de = phi i8 [ %i.dn, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dq, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.dp, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.do, %bb.l ], [ %1, %.lr.ph124 ]
  %i.df = load i64, ptr %.0122, align 8, !tbaa !367
  %i.dg = load i64, ptr %.1101, align 8, !tbaa !367
  %i.dh = icmp ult i64 %i.df, %i.dg
  %i.di = zext i1 %i.dh to i8
  %i.dj = icmp eq i8 %i.de, %i.di
  br i1 %i.dj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2
  %i.dl = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEET_SE_SE_SE_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.dk, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !387, !range !388 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph124.split, %bb.k
  %i.dm = phi i8 [ %.pre, %bb.k ], [ %i.dd, %.lr.ph124.split ] ; 2 uses
  %i.dn = phi i8 [ %.pre, %bb.k ], [ %i.de, %.lr.ph124.split ]
  %i.do = phi ptr [ %i.dl, %bb.k ], [ %.069121, %.lr.ph124.split ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.069121, i64 %2 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0122, i64 8 ; 2 uses
  %.not77 = icmp eq ptr %i.dq, %i.v
  br i1 %.not77, label %._crit_edge125.loopexit131, label %.lr.ph124.split, !llvm.loop !3584
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not277 = icmp eq i64 %i.f, 0
  br i1 %.not277, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx250 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx250                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep402 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep400 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx250
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx250
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx250, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx250, 0
  %bound0401 = icmp ult ptr %i.j, %scevgep
  %bound1402 = icmp ult ptr %scevgep402, %scevgep.a
  %found.conflict403 = and i1 %bound0401, %bound1402
  %invariant.op = or i1 %stride.check, %found.conflict403
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hy, %.sink.split.i ] ; 3 uses
  %.0287 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099286 = phi i64 [ %i.n, %.lr.ph ], [ %i.hw, %.sink.split.i ] ; 7 uses
  %.0102284 = phi ptr [ %0, %.lr.ph ], [ %i.hu, %.sink.split.i ] ; 15 uses
  %.0105283 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108282 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0216281 = phi ptr [ %1, %.lr.ph ], [ %.2218, %.sink.split.i ] ; 22 uses
  %.0222280 = phi ptr [ %i.i, %.lr.ph ], [ %.2224, %.sink.split.i ] ; 22 uses
  %.0228279 = phi ptr [ %i.g, %.lr.ph ], [ %.1229, %.sink.split.i ] ; 13 uses
  %.0234278 = phi i64 [ %i.f, %.lr.ph ], [ %i.hz, %.sink.split.i ] ; 5 uses
  %.0108282457 = ptrtoaddr ptr %.0108282 to i64
  %.0216281458 = ptrtoaddr ptr %.0216281 to i64
  %i.an = icmp ult i64 %.099286, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099286, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0102284, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !367
  %i.az = load i64, ptr %i.as, align 8, !tbaa !367
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !41

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated206 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0234278) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx250 ; 15 uses
  %.not119 = icmp eq i64 %.0287, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105283 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108282, %.0222280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx251 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102284, i64 %.idx251 ; 9 uses
  %i.bo = icmp eq ptr %.0228279, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108282, %.0222280        ; 2 uses
  %i.bq = trunc nuw i8 %.0105283 to i1
  br i1 %i.bq, label %bb.j, label %.thread343

bb.i:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !367
  %i.bs = load i64, ptr %.0228279, align 8, !tbaa !367
  %i.bt = icmp ult i64 %i.br, %i.bs               ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108282, %.0222280        ; 2 uses
  %i.bw = trunc nuw i8 %.0105283 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0216281, %.0108282
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108282457, -8
  %i.cb = sub i64 %i.ca, %.0216281458             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.cb, 168
  br i1 %min.iters.check460, label %.lr.ph.i.i.preheader801, label %vector.memcheck461

vector.memcheck461:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0222280, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0222280, i64 4  ; 3 uses
  %i.ci = add i64 %i.ce, 8                        ; 2 uses
  %i.cj = getelementptr i8, ptr %.0222280, i64 %i.ci ; 3 uses
  %bound0462 = icmp ult ptr %.0222280, %i.cj
  %bound1463 = icmp ult ptr %i.ch, %i.cg
  %found.conflict464 = and i1 %bound0462, %bound1463
  %i.ck = getelementptr i8, ptr %.0216281, i64 %i.cf ; 2 uses
  %bound0465 = icmp ult ptr %.0222280, %i.ck
  %bound1466 = icmp ult ptr %.0216281, %i.cg
  %found.conflict467 = and i1 %bound0465, %bound1466
  %conflict.rdx468 = or i1 %found.conflict464, %found.conflict467
  %i.cl = getelementptr i8, ptr %.0216281, i64 4  ; 2 uses
  %i.cm = getelementptr i8, ptr %.0216281, i64 %i.ci ; 2 uses
  %bound0469 = icmp ult ptr %.0222280, %i.cm
  %bound1470 = icmp ult ptr %i.cl, %i.cg
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %conflict.rdx468, %found.conflict471
  %bound0473 = icmp ult ptr %i.ch, %i.ck
  %bound1474 = icmp ult ptr %.0216281, %i.cj
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %conflict.rdx472, %found.conflict475
  %bound0477 = icmp ult ptr %i.ch, %i.cm
  %bound1478 = icmp ult ptr %i.cl, %i.cj
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  br i1 %conflict.rdx480, label %.lr.ph.i.i.preheader801, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck461
  %n.vec482 = and i64 %i.cd, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec482, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0222280, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0216281, i64 %i.cn
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next497, %vector.body483 ] ; 2 uses
  %i.cq = shl i64 %index484, 3                    ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep485 = getelementptr i8, ptr %.0222280, i64 %i.cq
  %next.gep486 = getelementptr i8, ptr %.0222280, i64 %i.cr
  %next.gep487 = getelementptr i8, ptr %.0216281, i64 %i.cq
  %next.gep488 = getelementptr i8, ptr %.0216281, i64 %i.cr
  %wide.vec489 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !337
  %wide.vec492 = load <4 x i32>, ptr %next.gep488, align 4, !tbaa !337
  store <4 x i32> %wide.vec489, ptr %next.gep485, align 4, !tbaa !337
  store <4 x i32> %wide.vec492, ptr %next.gep486, align 4, !tbaa !337
  %index.next497 = add nuw i64 %index484, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next497, %n.vec482
  br i1 %i.cs, label %middle.block498, label %vector.body483, !llvm.loop !3588

middle.block498:                                  ; preds = %vector.body483
  %cmp.n499 = icmp eq i64 %i.cd, %n.vec482
  br i1 %cmp.n499, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader801

.lr.ph.i.i.preheader801:                          ; preds = %vector.memcheck461, %.lr.ph.i.i.preheader, %middle.block498
  %.010.i.i.ph = phi ptr [ %.0222280, %vector.memcheck461 ], [ %.0222280, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block498 ]
  %.079.i.i.ph = phi ptr [ %.0216281, %vector.memcheck461 ], [ %.0216281, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block498 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader801, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader801 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader801 ] ; 3 uses
  %i.ct = load i32, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.010.i.i, align 4, !tbaa !346
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cw = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !347
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cx, %.0108282
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3589

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block498, %bb.j
  %.1223 = phi ptr [ %.0222280, %bb.j ], [ %i.co, %middle.block498 ], [ %i.cy, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader800, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.cz = mul i64 %indvar, %.idx250               ; 2 uses
  %i.da = shl i64 %.022.lcssa.i, 3
  %i.db = add i64 %i.da, 8
  %i.dc = mul i64 %2, %i.db
  %i.dd = getelementptr i8, ptr %i.aj, i64 %i.cz
  %i.de = getelementptr i8, ptr %i.dd, i64 %i.dc  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.de
  %bound1 = icmp ult ptr %i.bg, %scevgep400
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.df = getelementptr i8, ptr %i.ak, i64 %i.cz
  %i.dg = getelementptr i8, ptr %i.df, i64 %.idx  ; 3 uses
  %bound0404 = icmp ult ptr %i.j, %i.bh
  %bound1405 = icmp ult ptr %i.dg, %scevgep400
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %conflict.rdx.reass, %found.conflict406
  %bound0408 = icmp ult ptr %i.bg, %i.l
  %bound1409 = icmp ult ptr %scevgep402, %i.de
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx407, %found.conflict410
  %bound0412 = icmp ult ptr %i.bg, %i.bh
  %bound1413 = icmp ult ptr %i.dg, %i.de
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %conflict.rdx411, %found.conflict414
  %bound0416 = icmp ult ptr %scevgep402, %i.bh
  %bound1417 = icmp ult ptr %i.dg, %i.l
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  br i1 %conflict.rdx419, label %.lr.ph.i.i127.preheader800, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dh = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.di = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dj ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.am, i64 %i.dj ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep420, align 4, !tbaa !337
  %wide.vec422 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec422, ptr %next.gep420, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !3590

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader800

.lr.ph.i.i127.preheader800:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.dh, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader800, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader800 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.dr, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader800 ] ; 4 uses
  %i.dl = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dm = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dm, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dl, ptr %.010.i.i128, align 4, !tbaa !337
  %i.dn = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !337
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !337
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !337
  %i.dr = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.dr, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3591

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dt = load i64, ptr %i.bn, align 8, !tbaa !367
  %i.du = load i64, ptr %.0102284, align 8, !tbaa !367
  store i64 %i.du, ptr %i.bn, align 8, !tbaa !367
  store i64 %i.dt, ptr %.0102284, align 8, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dv = icmp eq ptr %i.bn, %.0228279
  br i1 %i.dv, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = icmp eq ptr %.0228279, %.0102284
  %spec.select = select i1 %i.dw, ptr %i.bn, ptr %.0228279
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread343:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread344, label %.thread345

.thread345:                                       ; preds = %.thread343
  store ptr %.0216281, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108282, ptr %i.d, align 8, !tbaa !330
  %i.dx = ptrtoint ptr %.0108282 to i64
  %i.dy = ptrtoint ptr %.0216281 to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.0222280, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread344:                                       ; preds = %.thread343
  %i.eb = ptrtoint ptr %.0108282 to i64
  %i.ec = ptrtoint ptr %.0216281 to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ef ; 2 uses
  store ptr %i.eg, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eg, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eh = ptrtoint ptr %.0108282 to i64
  %i.ei = ptrtoint ptr %.0216281 to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = ashr exact i64 %i.ej, 3
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.el ; 2 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !330
  store ptr %i.em, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.en = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0216281, ptr noundef %.0108282, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread344, %bb.p
  %i.eo = phi i8 [ 1, %.thread344 ], [ %i.bu, %bb.p ]
  %i.ep = phi i1 [ true, %.thread344 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.eq = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0216281, ptr noundef %.0108282, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.er = phi i8 [ %i.bu, %bb.q ], [ %i.eo, %bb.r ]
  %i.es = phi i1 [ %i.bt, %bb.q ], [ %i.ep, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0216281, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108282, ptr %i.d, align 8, !tbaa !330
  %i.et = ptrtoint ptr %.0108282 to i64
  %i.eu = ptrtoint ptr %.0216281 to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = getelementptr inbounds i8, ptr %.0222280, i64 %i.ev ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ex = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0222280, ptr noundef %i.ew, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread345, %bb.s
  %i.ey = phi ptr [ %i.ea, %.thread345 ], [ %i.ew, %bb.s ]
  %i.ez = phi i8 [ 1, %.thread345 ], [ %i.bu, %bb.s ]
  %i.fa = phi i1 [ true, %.thread345 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fb = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7move_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0222280, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fc = phi i8 [ %i.bu, %bb.t ], [ %i.ez, %bb.u ]
  %i.fd = phi i1 [ %i.bt, %bb.t ], [ %i.fa, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.fe = phi i1 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.ff = phi i8 [ %i.fc, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.er, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fh = ptrtoint ptr %i.bi to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 3 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = ashr exact i64 %i.fj, 3
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fl ; 6 uses
  %.not.i132 = icmp eq ptr %i.fg, %i.fm
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fg, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fn = mul i64 %indvar, %.idx250               ; 3 uses
  %i.fo = add i64 %i.ae, %i.fn                    ; 2 uses
  %i.fp = sub i64 %i.fo, %i.fi                    ; 2 uses
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check511 = icmp ult i64 %i.fp, 40
  br i1 %min.iters.check511, label %.lr.ph.i.i134.preheader802, label %vector.memcheck512

vector.memcheck512:                               ; preds = %.lr.ph.i.i134.preheader
  %i.fs = add i64 %i.aa, %i.fn
  %i.ft = sub i64 %i.fs, %i.fi
  %i.fu = and i64 %i.ft, -8                       ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fg, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = add i64 %i.x, %i.fn
  %i.fy = shl i64 %.022.lcssa.i, 3
  %i.fz = add i64 %i.fy, 8
  %i.ga = mul i64 %2, %i.fz
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_:bb.a
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.lg = phi ptr [ %i.ie, %bb.aj ], [ %i.l, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268564 = ptrtoaddr ptr %.0216268 to i64
  %.0108266563 = ptrtoaddr ptr %.0108266 to i64
  %i.lh = add i64 %.0108266563, -8
  %i.li = sub i64 %i.lh, %.0216268564             ; 3 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1                ; 2 uses
  %min.iters.check566 = icmp ult i64 %i.li, 376
  br i1 %min.iters.check566, label %.lr.ph.i.i161.preheader797, label %vector.memcheck567

vector.memcheck567:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ll = and i64 %i.li, -8                       ; 2 uses
  %i.lm = or disjoint i64 %i.ll, 4                ; 2 uses
  %i.ln = getelementptr i8, ptr %.0222270, i64 %i.lm ; 3 uses
  %i.lo = getelementptr i8, ptr %.0222270, i64 4  ; 3 uses
  %i.lp = add i64 %i.ll, 8                        ; 2 uses
  %i.lq = getelementptr i8, ptr %.0222270, i64 %i.lp ; 3 uses
  %bound0568 = icmp ult ptr %.0222270, %i.lq
  %bound1569 = icmp ult ptr %i.lo, %i.ln
  %found.conflict570 = and i1 %bound0568, %bound1569
  %i.lr = getelementptr i8, ptr %.0216268, i64 %i.lm ; 2 uses
  %bound0571 = icmp ult ptr %.0222270, %i.lr
  %bound1572 = icmp ult ptr %.0216268, %i.ln
  %found.conflict573 = and i1 %bound0571, %bound1572
  %conflict.rdx574 = or i1 %found.conflict570, %found.conflict573
  %i.ls = getelementptr i8, ptr %.0216268, i64 4  ; 2 uses
  %i.lt = getelementptr i8, ptr %.0216268, i64 %i.lp ; 2 uses
  %bound0575 = icmp ult ptr %.0222270, %i.lt
  %bound1576 = icmp ult ptr %i.ls, %i.ln
  %found.conflict577 = and i1 %bound0575, %bound1576
  %conflict.rdx578 = or i1 %conflict.rdx574, %found.conflict577
  %bound0579 = icmp ult ptr %i.lo, %i.lr
  %bound1580 = icmp ult ptr %.0216268, %i.lq
  %found.conflict581 = and i1 %bound0579, %bound1580
  %conflict.rdx582 = or i1 %conflict.rdx578, %found.conflict581
  %bound0583 = icmp ult ptr %i.lo, %i.lt
  %bound1584 = icmp ult ptr %i.ls, %i.lq
  %found.conflict585 = and i1 %bound0583, %bound1584
  %conflict.rdx586 = or i1 %conflict.rdx582, %found.conflict585
  br i1 %conflict.rdx586, label %.lr.ph.i.i161.preheader797, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck567
  %n.vec588 = and i64 %i.lk, 4611686018427387900  ; 3 uses
  %i.lu = shl i64 %n.vec588, 3                    ; 2 uses
  %i.lv = getelementptr i8, ptr %.0222270, i64 %i.lu ; 2 uses
  %i.lw = getelementptr i8, ptr %.0216268, i64 %i.lu
  br label %vector.body589

vector.body589:                                   ; preds = %vector.body589, %vector.ph587
  %index590 = phi i64 [ 0, %vector.ph587 ], [ %index.next603, %vector.body589 ] ; 2 uses
  %i.lx = shl i64 %index590, 3                    ; 3 uses
  %i.ly = or disjoint i64 %i.lx, 16               ; 2 uses
  %next.gep591 = getelementptr i8, ptr %.0222270, i64 %i.lx
  %next.gep592 = getelementptr i8, ptr %.0222270, i64 %i.ly
  %next.gep593 = getelementptr i8, ptr %.0216268, i64 %i.lx
  %next.gep594 = getelementptr i8, ptr %.0216268, i64 %i.ly
  %wide.vec595 = load <4 x i32>, ptr %next.gep593, align 4, !tbaa !337
  %wide.vec598 = load <4 x i32>, ptr %next.gep594, align 4, !tbaa !337
  store <4 x i32> %wide.vec595, ptr %next.gep591, align 4, !tbaa !337
  store <4 x i32> %wide.vec598, ptr %next.gep592, align 4, !tbaa !337
  %index.next603 = add nuw i64 %index590, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next603, %n.vec588
  br i1 %i.lz, label %middle.block604, label %vector.body589, !llvm.loop !3602

middle.block604:                                  ; preds = %vector.body589
  %cmp.n605 = icmp eq i64 %i.lk, %n.vec588
  br i1 %cmp.n605, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161.preheader797

.lr.ph.i.i161.preheader797:                       ; preds = %vector.memcheck567, %.lr.ph.i.i161.preheader, %middle.block604
  %.010.i.i162.ph = phi ptr [ %.0222270, %vector.memcheck567 ], [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.lv, %middle.block604 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %vector.memcheck567 ], [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.lw, %middle.block604 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader797, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.mf, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader797 ] ; 3 uses
  %.079.i.i163 = phi ptr [ %i.me, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader797 ] ; 3 uses
  %i.ma = load i32, ptr %.079.i.i163, align 4, !tbaa !337
  store i32 %i.ma, ptr %.010.i.i162, align 4, !tbaa !346
  %i.mb = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !337
  %i.md = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !347
  %i.me = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 8 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 8 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.me, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159, label %.lr.ph.i.i161, !llvm.loop !3603

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block604, %middle.block746, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit, %bb.aj
  %i.mg = phi ptr [ %i.ic, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.am, %.thread.thread ], [ %i.ic, %bb.aj ], [ %i.lf, %bb.ak ], [ %i.ic, %middle.block746 ], [ %i.lf, %middle.block604 ], [ %i.ic, %.lr.ph.i.i154 ], [ %i.lf, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block746 ], [ %.2, %middle.block604 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block746 ], [ %.0234275, %middle.block604 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block746 ], [ %.0228272, %middle.block604 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block746 ], [ %.0102262, %middle.block604 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block746 ], [ %.099259, %middle.block604 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.mh = phi ptr [ %i.ie, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %i.l, %.thread.thread ], [ %i.ie, %bb.aj ], [ %i.lg, %bb.ak ], [ %i.ie, %middle.block746 ], [ %i.lg, %middle.block604 ], [ %i.ie, %.lr.ph.i.i154 ], [ %i.lg, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPSt4pairIiiES5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEET1_RT_SG_RT0_SI_SF_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.ku, %middle.block746 ], [ %i.lv, %middle.block604 ], [ %i.le, %.lr.ph.i.i154 ], [ %i.mf, %.lr.ph.i.i161 ]
  %i.mi = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPSt4pairIiiES7_S7_NS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7move_opEEET3_T_SI_T0_T1_RT2_SL_SH_NS0_9iter_sizeISK_E4typeESP_SP_SP_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.mg, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.mh, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 7 uses
  %i.mj = load ptr, ptr %i.e, align 8, !tbaa !330 ; 9 uses
  %.not8.i.i167 = icmp eq ptr %i.mj, %i.mh
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  %i.mk = ptrtoaddr ptr %i.mj to i64
  %i.ml = ptrtoaddr ptr %i.mh to i64
  %i.mm = add i64 %i.ml, -8
  %i.mn = sub i64 %i.mm, %i.mk                    ; 3 uses
  %i.mo = lshr i64 %i.mn, 3
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check757 = icmp ult i64 %i.mn, 104
  br i1 %min.iters.check757, label %.lr.ph.i.i168.preheader783, label %vector.memcheck758

vector.memcheck758:                               ; preds = %.lr.ph.i.i168.preheader
  %i.mq = and i64 %i.mn, -8
  %i.mr = add i64 %i.mq, 8                        ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mi, i64 %i.mr
  %i.mt = getelementptr i8, ptr %i.mj, i64 %i.mr
  %bound0759 = icmp ult ptr %i.mi, %i.mt
  %bound1760 = icmp ult ptr %i.mj, %i.ms
  %found.conflict761 = and i1 %bound0759, %bound1760
  br i1 %found.conflict761, label %.lr.ph.i.i168.preheader783, label %vector.ph762

vector.ph762:                                     ; preds = %vector.memcheck758
  %n.vec763 = and i64 %i.mp, 4611686018427387900  ; 3 uses
  %i.mu = shl i64 %n.vec763, 3                    ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mi, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mj, i64 %i.mu
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph762
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next778, %vector.body764 ] ; 2 uses
  %i.mx = shl i64 %index765, 3                    ; 3 uses
  %i.my = or disjoint i64 %i.mx, 16               ; 2 uses
  %next.gep766 = getelementptr i8, ptr %i.mi, i64 %i.mx
  %next.gep767 = getelementptr i8, ptr %i.mi, i64 %i.my
  %next.gep768 = getelementptr i8, ptr %i.mj, i64 %i.mx
  %next.gep769 = getelementptr i8, ptr %i.mj, i64 %i.my
  %wide.vec770 = load <4 x i32>, ptr %next.gep768, align 4, !tbaa !337, !alias.scope !3611
  %wide.vec773 = load <4 x i32>, ptr %next.gep769, align 4, !tbaa !337, !alias.scope !3611
  store <4 x i32> %wide.vec770, ptr %next.gep766, align 4, !tbaa !337, !alias.scope !3612, !noalias !3611
  store <4 x i32> %wide.vec773, ptr %next.gep767, align 4, !tbaa !337, !alias.scope !3612, !noalias !3611
  %index.next778 = add nuw i64 %index765, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next778, %n.vec763
  br i1 %i.mz, label %middle.block779, label %vector.body764, !llvm.loop !3607

middle.block779:                                  ; preds = %vector.body764
  %cmp.n780 = icmp eq i64 %i.mp, %n.vec763
  br i1 %cmp.n780, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168.preheader783

.lr.ph.i.i168.preheader783:                       ; preds = %vector.memcheck758, %.lr.ph.i.i168.preheader, %middle.block779
  %.010.i.i169.ph = phi ptr [ %i.mi, %vector.memcheck758 ], [ %i.mi, %.lr.ph.i.i168.preheader ], [ %i.mv, %middle.block779 ]
  %.079.i.i170.ph = phi ptr [ %i.mj, %vector.memcheck758 ], [ %i.mj, %.lr.ph.i.i168.preheader ], [ %i.mw, %middle.block779 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader783, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.nf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader783 ] ; 3 uses
  %.079.i.i170 = phi ptr [ %i.ne, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader783 ] ; 3 uses
  %i.na = load i32, ptr %.079.i.i170, align 4, !tbaa !337
  store i32 %i.na, ptr %.010.i.i169, align 4, !tbaa !346
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !337
  %i.nd = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  store i32 %i.nc, ptr %i.nd, align 4, !tbaa !347
  %i.ne = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 8
  %.not.i.i171 = icmp eq ptr %i.ne, %i.mh
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173, label %.lr.ph.i.i168, !llvm.loop !3608

_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit173: ; preds = %.lr.ph.i.i168, %middle.block779, %_ZN5boost7movelib7move_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 12 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = add i64 %5, %4                           ; 6 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.h = sub i64 0, %2                            ; 3 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %1, i64 %i.h ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.j, ptr %i.b, align 8, !tbaa !330
  %i.k = mul i64 %i.f, %2
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k ; 11 uses
  %i.m = icmp eq i64 %5, 0
  %i.n = select i1 %i.m, i64 0, i64 %4            ; 3 uses
  %i.o = add i64 %i.n, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.f) ; 2 uses
  %.not281 = icmp eq i64 %i.f, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx254 = shl i64 %2, 3                        ; 8 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 3                            ; 3 uses
  %i.r = or disjoint i64 %i.q, 4                  ; 2 uses
  %11 = add i64 %i.q, %.idx254                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %11
  %scevgep406 = getelementptr i8, ptr %1, i64 %i.r ; 3 uses
  %12 = getelementptr i8, ptr %1, i64 %11
  %scevgep.a = getelementptr i8, ptr %12, i64 -4
  %i.s = mul i64 %2, %i.f
  %i.t = add i64 %i.s, %3
  %i.u = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %1, i64 %i.u
  %scevgep404 = getelementptr i8, ptr %i.v, i64 -4 ; 2 uses
  %i.w = shl i64 %3, 3                            ; 2 uses
  %i.x = add i64 %i.w, 8
  %i.y = add i64 %i.w, %i.a
  %i.z = add i64 %i.y, %.idx254
  %i.aa = add i64 %i.z, -8
  %i.ab = shl i64 %3, 3
  %i.ac = add i64 %i.ab, %i.a
  %i.ad = add i64 %i.ac, %.idx254
  %i.ae = add i64 %i.ad, -8
  %i.af = add i64 %.idx254, -8                    ; 2 uses
  %i.ag = lshr exact i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 120
  %i.ai = getelementptr i8, ptr %1, i64 %i.q
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %stride.check = icmp slt i64 %.idx254, 0
  %bound0405 = icmp ult ptr %i.j, %scevgep
  %bound1406 = icmp ult ptr %scevgep406, %scevgep.a
  %found.conflict407 = and i1 %bound0405, %bound1406
  %invariant.op = or i1 %stride.check, %found.conflict407
  %i.ak = getelementptr i8, ptr %1, i64 %i.r
  %n.vec = and i64 %i.ah, 4611686018427387902     ; 3 uses
  %i.al = shl i64 %n.vec, 3                       ; 2 uses
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.bi, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hz, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.n, %.lr.ph ], [ %i.hx, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hv, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.j, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 22 uses
  %.0226284 = phi ptr [ %i.i, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 21 uses
  %.0232283 = phi ptr [ %i.g, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.f, %.lr.ph ], [ %i.ia, %.sink.split.i ] ; 5 uses
  %.0108286466 = ptrtoaddr ptr %.0108286 to i64
  %.0220285467 = ptrtoaddr ptr %.0220285 to i64
  %i.an = icmp ult i64 %.099290, %.0
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !337 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !337 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !367
  %i.az = load i64, ptr %i.as, align 8, !tbaa !367
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !41

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 7 uses
  %i.bd = add i64 %.022.lcssa.i, 2
  %i.be = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bd) ; 2 uses
  %.sroa.speculated210 = call i64 @llvm.umin.i64(i64 %i.be, i64 %.0238282) ; 4 uses
  %i.bf = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bf, 3                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.am, i64 %.idx  ; 13 uses
  %i.bh = getelementptr [8 x i8], ptr %i.bg, i64 %2 ; 4 uses
  %i.bi = getelementptr i8, ptr %i.am, i64 %.idx254 ; 15 uses
  %.not119 = icmp eq i64 %.0291, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.l, align 4, !tbaa !337
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !337
  %i.bl = icmp slt i32 %i.bj, %i.bk
  br i1 %i.bl, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105287 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bm = icmp eq ptr %.0108286, %.0226284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store ptr %i.l, ptr %i.e, align 8, !tbaa !330
  br i1 %i.bm, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit161, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx255 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.0102288, i64 %.idx255 ; 9 uses
  %i.bo = icmp eq ptr %.0232283, %i.p
  br i1 %i.bo, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bp = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.bq = trunc nuw i8 %.0105287 to i1
  br i1 %i.bq, label %bb.j, label %.thread347

bb.i:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !367
  %i.bs = load i64, ptr %.0232283, align 8, !tbaa !367
  %i.bt = icmp ult i64 %i.br, %i.bs               ; 7 uses
  %i.bu = zext i1 %i.bt to i8                     ; 4 uses
  %i.bv = icmp eq ptr %.0108286, %.0226284        ; 2 uses
  %i.bw = trunc nuw i8 %.0105287 to i1            ; 3 uses
  %i.bx = xor i1 %i.bt, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ %i.bp, %._crit_edge ], [ %i.bv, %bb.i ]
  %i.bz = phi i1 [ true, %._crit_edge ], [ %i.bt, %bb.i ] ; 3 uses
  %.not8.i.i = icmp eq ptr %.0220285, %.0108286
  %or.cond = select i1 %i.by, i1 true, i1 %.not8.i.i
  br i1 %or.cond, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ca = add i64 %.0108286466, -8
  %i.cb = sub i64 %i.ca, %.0220285467             ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check469 = icmp ult i64 %i.cb, 120
  br i1 %min.iters.check469, label %.lr.ph.i.i.preheader830, label %vector.memcheck470

vector.memcheck470:                               ; preds = %.lr.ph.i.i.preheader
  %i.ce = and i64 %i.cb, -8                       ; 2 uses
  %i.cf = or disjoint i64 %i.ce, 4                ; 2 uses
  %i.cg = getelementptr i8, ptr %.0220285, i64 %i.cf ; 3 uses
  %i.ch = getelementptr i8, ptr %.0226284, i64 %i.cf ; 3 uses
  %bound0471 = icmp ult ptr %.0220285, %i.ch
  %bound1472 = icmp ult ptr %.0226284, %i.cg
  %found.conflict473 = and i1 %bound0471, %bound1472
  %i.ci = getelementptr i8, ptr %.0220285, i64 4  ; 3 uses
  %i.cj = add i64 %i.ce, 8                        ; 2 uses
  %i.ck = getelementptr i8, ptr %.0220285, i64 %i.cj ; 3 uses
  %bound0474 = icmp ult ptr %.0220285, %i.ck
  %bound1475 = icmp ult ptr %i.ci, %i.cg
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %found.conflict473, %found.conflict476
  %i.cl = getelementptr i8, ptr %.0226284, i64 4  ; 3 uses
  %i.cm = getelementptr i8, ptr %.0226284, i64 %i.cj ; 3 uses
  %bound0478 = icmp ult ptr %.0220285, %i.cm
  %bound1479 = icmp ult ptr %i.cl, %i.cg
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %.0226284, %i.ck
  %bound1483 = icmp ult ptr %i.ci, %i.ch
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  %bound0486 = icmp ult ptr %.0226284, %i.cm
  %bound1487 = icmp ult ptr %i.cl, %i.ch
  %found.conflict488 = and i1 %bound0486, %bound1487
  %conflict.rdx489 = or i1 %conflict.rdx485, %found.conflict488
  %bound0490 = icmp ult ptr %i.ci, %i.cm
  %bound1491 = icmp ult ptr %i.cl, %i.ck
  %found.conflict492 = and i1 %bound0490, %bound1491
  %conflict.rdx493 = or i1 %conflict.rdx489, %found.conflict492
  br i1 %conflict.rdx493, label %.lr.ph.i.i.preheader830, label %vector.ph494

vector.ph494:                                     ; preds = %vector.memcheck470
  %n.vec495 = and i64 %i.cd, 4611686018427387902  ; 3 uses
  %i.cn = shl i64 %n.vec495, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0226284, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %.0220285, i64 %i.cn
  br label %vector.body496

vector.body496:                                   ; preds = %vector.body496, %vector.ph494
  %index497 = phi i64 [ 0, %vector.ph494 ], [ %index.next508, %vector.body496 ] ; 2 uses
  %i.cq = shl i64 %index497, 3                    ; 2 uses
  %next.gep498 = getelementptr i8, ptr %.0226284, i64 %i.cq ; 2 uses
  %next.gep499 = getelementptr i8, ptr %.0220285, i64 %i.cq ; 2 uses
  %wide.vec500 = load <4 x i32>, ptr %next.gep499, align 4, !tbaa !337
  %wide.vec503 = load <4 x i32>, ptr %next.gep498, align 4, !tbaa !337
  store <4 x i32> %wide.vec503, ptr %next.gep499, align 4, !tbaa !337
  store <4 x i32> %wide.vec500, ptr %next.gep498, align 4, !tbaa !337
  %index.next508 = add nuw i64 %index497, 2       ; 2 uses
  %i.cr = icmp eq i64 %index.next508, %n.vec495
  br i1 %i.cr, label %middle.block509, label %vector.body496, !llvm.loop !3613

middle.block509:                                  ; preds = %vector.body496
  %cmp.n510 = icmp eq i64 %i.cd, %n.vec495
  br i1 %cmp.n510, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i.preheader830

.lr.ph.i.i.preheader830:                          ; preds = %vector.memcheck470, %.lr.ph.i.i.preheader, %middle.block509
  %.010.i.i.ph = phi ptr [ %.0226284, %vector.memcheck470 ], [ %.0226284, %.lr.ph.i.i.preheader ], [ %i.co, %middle.block509 ]
  %.079.i.i.ph = phi ptr [ %.0220285, %vector.memcheck470 ], [ %.0220285, %.lr.ph.i.i.preheader ], [ %i.cp, %middle.block509 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader830, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader830 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader830 ] ; 4 uses
  %i.cs = load i32, ptr %.079.i.i, align 4, !tbaa !337
  %i.ct = load i32, ptr %.010.i.i, align 4, !tbaa !337
  store i32 %i.ct, ptr %.079.i.i, align 4, !tbaa !337
  store i32 %i.cs, ptr %.010.i.i, align 4, !tbaa !337
  %i.cu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !337
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !337
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !337
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !337
  %i.cy = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, %.0108286
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit, label %.lr.ph.i.i, !llvm.loop !3614

_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit: ; preds = %.lr.ph.i.i, %middle.block509, %bb.j
  %.1227 = phi ptr [ %.0226284, %bb.j ], [ %i.co, %middle.block509 ], [ %i.cz, %.lr.ph.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairIiiES5_EET0_NS0_9forward_tET_S8_S6_.exit
  br i1 %.not8.i.i126, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader

.lr.ph.i.i127.preheader:                          ; preds = %bb.k
  br i1 %min.iters.check, label %.lr.ph.i.i127.preheader829, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i127.preheader
  %i.da = mul i64 %indvar, %.idx254               ; 2 uses
  %i.db = shl i64 %.022.lcssa.i, 3
  %i.dc = add i64 %i.db, 8
  %i.dd = mul i64 %2, %i.dc
  %i.de = getelementptr i8, ptr %i.aj, i64 %i.da
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dd  ; 3 uses
  %bound0 = icmp ult ptr %i.j, %i.df
  %bound1 = icmp ult ptr %i.bg, %scevgep404
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.dg = getelementptr i8, ptr %i.ak, i64 %i.da
  %i.dh = getelementptr i8, ptr %i.dg, i64 %.idx  ; 3 uses
  %bound0408 = icmp ult ptr %i.j, %i.bh
  %bound1409 = icmp ult ptr %i.dh, %scevgep404
  %found.conflict410 = and i1 %bound0408, %bound1409
  %conflict.rdx411 = or i1 %conflict.rdx.reass, %found.conflict410
  %bound0412 = icmp ult ptr %i.bg, %i.l
  %bound1413 = icmp ult ptr %scevgep406, %i.df
  %found.conflict414 = and i1 %bound0412, %bound1413
  %conflict.rdx415 = or i1 %conflict.rdx411, %found.conflict414
  %bound0416 = icmp ult ptr %i.bg, %i.bh
  %bound1417 = icmp ult ptr %i.dh, %i.df
  %found.conflict418 = and i1 %bound0416, %bound1417
  %conflict.rdx419 = or i1 %conflict.rdx415, %found.conflict418
  %bound0420 = icmp ult ptr %scevgep406, %i.bh
  %bound1421 = icmp ult ptr %i.dh, %i.l
  %found.conflict422 = and i1 %bound0420, %bound1421
  %conflict.rdx423 = or i1 %conflict.rdx419, %found.conflict422
  br i1 %conflict.rdx423, label %.lr.ph.i.i127.preheader829, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = getelementptr i8, ptr %i.bg, i64 %i.al
  %i.dj = getelementptr i8, ptr %i.am, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bg, i64 %i.dk ; 2 uses
  %next.gep424 = getelementptr i8, ptr %i.am, i64 %i.dk ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep424, align 4, !tbaa !337
  %wide.vec426 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337
  store <4 x i32> %wide.vec426, ptr %next.gep424, align 4, !tbaa !337
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !3615

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127.preheader829

.lr.ph.i.i127.preheader829:                       ; preds = %vector.memcheck, %.lr.ph.i.i127.preheader, %middle.block
  %.010.i.i128.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i127.preheader ], [ %i.di, %middle.block ]
  %.079.i.i129.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i.i127.preheader ], [ %i.dj, %middle.block ]
  br label %.lr.ph.i.i127

.lr.ph.i.i127:                                    ; preds = %.lr.ph.i.i127.preheader829, %.lr.ph.i.i127
  %.010.i.i128 = phi ptr [ %i.dt, %.lr.ph.i.i127 ], [ %.010.i.i128.ph, %.lr.ph.i.i127.preheader829 ] ; 4 uses
  %.079.i.i129 = phi ptr [ %i.ds, %.lr.ph.i.i127 ], [ %.079.i.i129.ph, %.lr.ph.i.i127.preheader829 ] ; 4 uses
  %i.dm = load i32, ptr %.079.i.i129, align 4, !tbaa !337
  %i.dn = load i32, ptr %.010.i.i128, align 4, !tbaa !337
  store i32 %i.dn, ptr %.079.i.i129, align 4, !tbaa !337
  store i32 %i.dm, ptr %.010.i.i128, align 4, !tbaa !337
  %i.do = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 4 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !337
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !337
  store i32 %i.dr, ptr %i.do, align 4, !tbaa !337
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !337
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i129, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i128, i64 8
  %.not.i.i130 = icmp eq ptr %i.ds, %i.bi
  br i1 %.not.i.i130, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i, label %.lr.ph.i.i127, !llvm.loop !3616

_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i: ; preds = %.lr.ph.i.i127, %middle.block, %bb.k
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.du = load i64, ptr %i.bn, align 8, !tbaa !367
  %i.dv = load i64, ptr %.0102288, align 8, !tbaa !367
  store i64 %i.dv, ptr %i.bn, align 8, !tbaa !367
  store i64 %i.du, ptr %.0102288, align 8, !tbaa !367
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i
  %i.dw = icmp eq ptr %i.bn, %.0232283
  br i1 %i.dw, label %.sink.split.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = icmp eq ptr %.0232283, %.0102288
  %spec.select = select i1 %i.dx, ptr %i.bn, ptr %.0232283
  br label %.sink.split.i

bb.o:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bv, label %bb.p, label %bb.s

.thread347:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  br i1 %i.bp, label %.thread348, label %.thread349

.thread349:                                       ; preds = %.thread347
  store ptr %.0220285, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108286, ptr %i.d, align 8, !tbaa !330
  %i.dy = ptrtoint ptr %.0108286 to i64
  %i.dz = ptrtoint ptr %.0220285 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds i8, ptr %.0226284, i64 %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %bb.u

.thread348:                                       ; preds = %.thread347
  %i.ec = ptrtoint ptr %.0108286 to i64
  %i.ed = ptrtoint ptr %.0220285 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.eg ; 2 uses
  store ptr %i.eh, ptr %i.c, align 8, !tbaa !330
  store ptr %i.eh, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ei = ptrtoint ptr %.0108286 to i64
  %i.ej = ptrtoint ptr %.0220285 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 3
  %i.em = sub nsw i64 0, %i.el
  %i.en = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.em ; 2 uses
  store ptr %i.en, ptr %i.c, align 8, !tbaa !330
  store ptr %i.en, ptr %i.d, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eo = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0220285, ptr noundef %.0108286, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

bb.r:                                             ; preds = %.thread348, %bb.p
  %i.ep = phi i8 [ 1, %.thread348 ], [ %i.bu, %bb.p ]
  %i.eq = phi i1 [ true, %.thread348 ], [ %i.bt, %bb.p ]
  store ptr %9, ptr %10, align 8, !tbaa !384
  %i.er = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0220285, ptr noundef %.0108286, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %10) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit: ; preds = %bb.q, %bb.r
  %i.es = phi i8 [ %i.bu, %bb.q ], [ %i.ep, %bb.r ]
  %i.et = phi i1 [ %i.bt, %bb.q ], [ %i.eq, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.v

bb.s:                                             ; preds = %bb.o
  store ptr %.0220285, ptr %i.c, align 8, !tbaa !330
  store ptr %.0108286, ptr %i.d, align 8, !tbaa !330
  %i.eu = ptrtoint ptr %.0108286 to i64
  %i.ev = ptrtoint ptr %.0220285 to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.0226284, i64 %i.ew ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_(ptr noundef %.0226284, ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

bb.u:                                             ; preds = %.thread349, %bb.s
  %i.ez = phi ptr [ %i.eb, %.thread349 ], [ %i.ex, %bb.s ]
  %i.fa = phi i8 [ 1, %.thread349 ], [ %i.bu, %bb.s ]
  %i.fb = phi i1 [ true, %.thread349 ], [ %i.bt, %bb.s ]
  store ptr %7, ptr %8, align 8, !tbaa !384
  %i.fc = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPSt4pairIiiES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS8_9select1stIiEEEEEENS0_7swap_opEEET_SH_SH_RSH_SH_SH_RT0_SK_T1_T2_(ptr noundef %.0226284, ptr noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.bi, ptr noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dead_on_return %8) ; 0 uses
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131: ; preds = %bb.t, %bb.u
  %i.fd = phi i8 [ %i.bu, %bb.t ], [ %i.fa, %bb.u ]
  %i.fe = phi i1 [ %i.bt, %bb.t ], [ %i.fb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit
  %i.ff = phi i1 [ %i.fe, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.et, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fg = phi i8 [ %i.fd, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit131 ], [ %i.es, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPSt4pairIiiES5_NS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7swap_opEEET_SF_SF_RSF_SF_SF_RT0_SI_T1_T2_b.exit ]
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !330 ; 11 uses
  %i.fi = ptrtoint ptr %i.bi to i64
  %i.fj = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 2 uses
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = sub nsw i64 0, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.fm ; 6 uses
  %.not.i132 = icmp eq ptr %i.fh, %i.fn
  br i1 %.not.i132, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairIiiEEEvT_S7_RS7_T0_S9_S9_.exit142, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not8.i.i133 = icmp eq ptr %i.fh, %i.bi
  br i1 %.not8.i.i133, label %_ZN5boost20adl_move_swap_rangesIPSt4pairIiiES3_EET0_T_S5_S4_.exit.i138, label %.lr.ph.i.i134.preheader

.lr.ph.i.i134.preheader:                          ; preds = %bb.w
  %i.fo = mul i64 %indvar, %.idx254               ; 3 uses
  %i.fp = add i64 %i.ae, %i.fo                    ; 2 uses
  %i.fq = sub i64 %i.fp, %i.fj                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check522 = icmp ult i64 %i.fq, 40
  br i1 %min.iters.check522, label %.lr.ph.i.i134.preheader831, label %vector.memcheck523

vector.memcheck523:                               ; preds = %.lr.ph.i.i134.preheader
  %i.ft = add i64 %i.aa, %i.fo
  %i.fu = sub i64 %i.ft, %i.fj
  %i.fv = and i64 %i.fu, -8                       ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fh, i64 %i.fv
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = add i64 %i.x, %i.fo
  %i.fz = shl i64 %.022.lcssa.i, 3
  %i.ga = add i64 %i.fz, 8
  %i.gb = mul i64 %2, %i.ga
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %index.next508 = add nuw i64 %index495, 4       ; 2 uses
  %i.ii = icmp eq i64 %index.next508, %n.vec493
  br i1 %i.ii, label %middle.block509, label %vector.body494, !llvm.loop !4746

middle.block509:                                  ; preds = %vector.body494
  %cmp.n510 = icmp eq i64 %i.hy, %n.vec493
  br i1 %cmp.n510, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90.preheader549

.lr.ph.i.i90.preheader549:                        ; preds = %vector.memcheck488, %.lr.ph.i.i90.preheader, %middle.block509
  %.ph550 = phi ptr [ %.sroa.0185.0.lcssa.ph, %vector.memcheck488 ], [ %.sroa.0185.0.lcssa.ph, %.lr.ph.i.i90.preheader ], [ %i.ie, %middle.block509 ]
  %.05.i.i91.ph = phi ptr [ %i.hq, %vector.memcheck488 ], [ %i.hq, %.lr.ph.i.i90.preheader ], [ %i.if, %middle.block509 ]
  br label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.preheader549, %.lr.ph.i.i90
  %i.ij = phi ptr [ %i.ip, %.lr.ph.i.i90 ], [ %.ph550, %.lr.ph.i.i90.preheader549 ] ; 3 uses
  %.05.i.i91 = phi ptr [ %i.io, %.lr.ph.i.i90 ], [ %.05.i.i91.ph, %.lr.ph.i.i90.preheader549 ] ; 3 uses
  %i.ik = load i32, ptr %.05.i.i91, align 4, !tbaa !337, !noalias !4784
  store i32 %i.ik, ptr %i.ij, align 4, !tbaa !346, !noalias !4784
  %i.il = getelementptr inbounds nuw i8, ptr %.05.i.i91, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !337, !noalias !4784
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 %i.im, ptr %i.in, align 4, !tbaa !347, !noalias !4784
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i91, i64 8 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.not.i.i92 = icmp eq ptr %i.io, %i.hp
  br i1 %.not.i.i92, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93, label %.lr.ph.i.i90, !llvm.loop !4747

_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93: ; preds = %.lr.ph.i.i90, %middle.block509, %bb.a, %.thread
  %.058.lcssa299 = phi ptr [ %i.f, %bb.a ], [ %i.hs, %.thread ], [ %i.hs, %middle.block509 ], [ %i.hs, %.lr.ph.i.i90 ]
  %.0214.lcssa298 = phi i64 [ 0, %bb.a ], [ %.0214.lcssa.ph, %.thread ], [ %.0214.lcssa.ph, %middle.block509 ], [ %.0214.lcssa.ph, %.lr.ph.i.i90 ] ; 2 uses
  %.sroa.0189.0.lcssa297 = phi ptr [ %i.e, %bb.a ], [ %.sroa.0189.0.lcssa.ph, %.thread ], [ %.sroa.0189.0.lcssa.ph, %middle.block509 ], [ %.sroa.0189.0.lcssa.ph, %.lr.ph.i.i90 ]
  %.sroa.0179.0.lcssa296 = phi ptr [ %i.h, %bb.a ], [ %.sroa.0179.0.lcssa.ph, %.thread ], [ %.sroa.0179.0.lcssa.ph, %middle.block509 ], [ %.sroa.0179.0.lcssa.ph, %.lr.ph.i.i90 ]
  %.idx229 = shl i64 %6, 3                        ; 3 uses
  %i.iq = getelementptr i8, ptr %i.j, i64 %.idx229 ; 3 uses
  %.not3.i.i = icmp eq i64 %6, 0
  br i1 %.not3.i.i, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94.preheader

.lr.ph.i.i94.preheader:                           ; preds = %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93
  %i.ir = add i64 %.idx229, -8                    ; 2 uses
  %i.is = lshr exact i64 %i.ir, 3
  %i.it = add nuw nsw i64 %i.is, 1                ; 2 uses
  %min.iters.check519 = icmp ult i64 %i.ir, 40
  br i1 %min.iters.check519, label %.lr.ph.i.i94.preheader548, label %vector.memcheck520

vector.memcheck520:                               ; preds = %.lr.ph.i.i94.preheader
  %i.iu = getelementptr i8, ptr %7, i64 %.idx229
  %bound0521 = icmp ult ptr %7, %i.iq
  %bound1522 = icmp ult ptr %i.j, %i.iu
  %found.conflict523 = and i1 %bound0521, %bound1522
  br i1 %found.conflict523, label %.lr.ph.i.i94.preheader548, label %vector.ph524

vector.ph524:                                     ; preds = %vector.memcheck520
  %n.vec525 = and i64 %i.it, 4611686018427387900  ; 3 uses
  %i.iv = shl i64 %n.vec525, 3                    ; 2 uses
  %i.iw = getelementptr i8, ptr %i.j, i64 %i.iv
  %i.ix = getelementptr i8, ptr %7, i64 %i.iv
  br label %vector.body526

vector.body526:                                   ; preds = %vector.body526, %vector.ph524
  %index527 = phi i64 [ 0, %vector.ph524 ], [ %index.next540, %vector.body526 ] ; 2 uses
  %i.iy = shl i64 %index527, 3                    ; 3 uses
  %i.iz = or disjoint i64 %i.iy, 16               ; 2 uses
  %next.gep528 = getelementptr i8, ptr %i.j, i64 %i.iy
  %next.gep529 = getelementptr i8, ptr %i.j, i64 %i.iz
  %next.gep530 = getelementptr i8, ptr %7, i64 %i.iy
  %next.gep531 = getelementptr i8, ptr %7, i64 %i.iz
  %wide.vec532 = load <4 x i32>, ptr %next.gep528, align 4, !tbaa !337, !alias.scope !4786
  %wide.vec535 = load <4 x i32>, ptr %next.gep529, align 4, !tbaa !337, !alias.scope !4786
  store <4 x i32> %wide.vec532, ptr %next.gep530, align 4, !tbaa !337, !alias.scope !4787, !noalias !4786
  store <4 x i32> %wide.vec535, ptr %next.gep531, align 4, !tbaa !337, !alias.scope !4787, !noalias !4786
  %index.next540 = add nuw i64 %index527, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next540, %n.vec525
  br i1 %i.ja, label %middle.block541, label %vector.body526, !llvm.loop !4751

middle.block541:                                  ; preds = %vector.body526
  %cmp.n542 = icmp eq i64 %i.it, %n.vec525
  br i1 %cmp.n542, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94.preheader548

.lr.ph.i.i94.preheader548:                        ; preds = %vector.memcheck520, %.lr.ph.i.i94.preheader, %middle.block541
  %.ph = phi ptr [ %i.j, %vector.memcheck520 ], [ %i.j, %.lr.ph.i.i94.preheader ], [ %i.iw, %middle.block541 ]
  %.04.i.i.ph = phi ptr [ %7, %vector.memcheck520 ], [ %7, %.lr.ph.i.i94.preheader ], [ %i.ix, %middle.block541 ]
  br label %.lr.ph.i.i94

.lr.ph.i.i94:                                     ; preds = %.lr.ph.i.i94.preheader548, %.lr.ph.i.i94
  %i.jb = phi ptr [ %i.jg, %.lr.ph.i.i94 ], [ %.ph, %.lr.ph.i.i94.preheader548 ] ; 3 uses
  %.04.i.i = phi ptr [ %i.jh, %.lr.ph.i.i94 ], [ %.04.i.i.ph, %.lr.ph.i.i94.preheader548 ] ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !337
  store i32 %i.jc, ptr %.04.i.i, align 4, !tbaa !346
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !337
  %i.jf = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !347
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 8
  %.not.i.i95 = icmp eq ptr %i.jg, %i.iq
  br i1 %.not.i.i95, label %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i94, !llvm.loop !4752

_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i94, %middle.block541, %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit93
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ji, ptr %i.b, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %i.ji, ptr %20, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.jj = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4788
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %5
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %4
  store ptr %i.jl, ptr %22, align 8, !tbaa !349, !alias.scope !4789
  store ptr %.sroa.0189.0.lcssa297, ptr %23, align 8, !tbaa !349, !alias.scope !4790
  store ptr %i.j, ptr %24, align 8, !tbaa !349, !alias.scope !4791
  store ptr %7, ptr %25, align 8, !tbaa !386, !alias.scope !4792
  store ptr %i.iq, ptr %26, align 8, !tbaa !349, !alias.scope !4793
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_NS3_IS8_EESA_SJ_NS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.66") align 8 %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, i64 noundef %2, i64 noundef %.0214.lcssa298, i64 noundef 0, i64 noundef %.0214.lcssa298, i1 noundef zeroext true)
  %i.jm = load ptr, ptr %21, align 8, !tbaa !330, !noalias !4794
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %i.jn = load ptr, ptr %20, align 8, !tbaa !386  ; 2 uses
  %i.jo = load ptr, ptr %i.a, align 8, !tbaa !330 ; 3 uses
  %.not15.i = icmp eq ptr %i.jo, %i.jn
  br i1 %.not15.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit, %bb.y
  %.sroa.0.0 = phi ptr [ %i.kd, %bb.y ], [ %i.jm, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 3 uses
  %i.jp = phi ptr [ %.306, %bb.y ], [ %.sroa.0179.0.lcssa296, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 4 uses
  %.016.i = phi ptr [ %.016.i., %bb.y ], [ %i.jn, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit ] ; 4 uses
  %i.jq = icmp eq ptr %.058.lcssa299, %i.jp
  br i1 %i.jq, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i96, %.lr.ph.i.i.i
  %i.jr = phi ptr [ %i.jt, %.lr.ph.i.i.i ], [ %.sroa.0.0, %.lr.ph.i96 ] ; 2 uses
  %.05.i.i.i = phi ptr [ %i.js, %.lr.ph.i.i.i ], [ %.016.i, %.lr.ph.i96 ] ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 3 uses
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 -8 ; 2 uses
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !337, !noalias !4795
  store i32 %i.ju, ptr %i.jt, align 4, !tbaa !346, !noalias !4795
  %i.jv = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !337, !noalias !4795
  %i.jx = getelementptr inbounds i8, ptr %i.jr, i64 -4
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !347, !noalias !4795
  %.not.i.i.i = icmp eq ptr %i.jo, %i.js
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !89

bb.y:                                             ; preds = %.lr.ph.i96
  %i.jy = getelementptr inbounds i8, ptr %.016.i, i64 -8 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jp, i64 -8 ; 2 uses
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !337 ; 2 uses
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !337 ; 2 uses
  %i.kc = icmp slt i32 %i.ka, %i.kb               ; 3 uses
  %i.kd = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 2 uses
  %. = call i32 @llvm.smax.i32(i32 %i.ka, i32 %i.kb)
  %..016.i = select i1 %i.kc, ptr %i.jp, ptr %.016.i
  %.306 = select i1 %i.kc, ptr %i.jz, ptr %i.jp
  %.016.i. = select i1 %i.kc, ptr %.016.i, ptr %i.jy ; 2 uses
  store i32 %., ptr %i.kd, align 4, !tbaa !346
  %.sink.in = getelementptr inbounds i8, ptr %..016.i, i64 -4
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !337
  %i.ke = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4
  store i32 %.sink, ptr %i.ke, align 4, !tbaa !347
  %.not.i98 = icmp eq ptr %i.jo, %.016.i.
  br i1 %.not.i98, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i96, !llvm.loop !90

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7move_opEPS8_NS2_12vec_iteratorISD_Lb0EEEEEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.y, %.lr.ph.i.i.i, %_ZN5boost7movelib7move_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_EET0_NS0_9forward_tET_SB_S9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 12 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 11 uses
  %20 = alloca %"class.boost::container::vec_iterator", align 8 ; 8 uses
  %21 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 4 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4866 ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.d = load ptr, ptr %7, align 8, !tbaa !330    ; 3 uses
  store ptr %i.d, ptr %18, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  store ptr %i.d, ptr %19, align 8, !tbaa !349
  %i.e = load ptr, ptr %1, align 8, !tbaa !330    ; 7 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %3 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %i.f, ptr %20, align 8, !tbaa !349
  %i.g = mul i64 %i.a, %2
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g ; 12 uses
  %.not251 = icmp eq i64 %i.a, 0
  br i1 %.not251, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp eq i64 %5, 0
  %i.j = select i1 %i.i, i64 0, i64 %4            ; 2 uses
  %i.k = add i64 %i.j, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.a)
  %.idx242 = shl i64 %2, 3                        ; 6 uses
  %.not62 = icmp eq i64 %6, 0
  %.not68.i = icmp eq i64 %2, 0
  %i.l = shl i64 %3, 3                            ; 3 uses
  %29 = getelementptr i8, ptr %i.e, i64 %i.l
  %scevgep = getelementptr i8, ptr %29, i64 %.idx242 ; 2 uses
  %i.m = or disjoint i64 %i.l, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.e, i64 %i.m ; 4 uses
  %i.n = add i64 %.idx242, -8                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 3
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 232
  %i.q = getelementptr i8, ptr %i.e, i64 %i.l
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = getelementptr i8, ptr %i.e, i64 %i.m
  %stride.check = icmp slt i64 %.idx242, 0
  %bound0458 = icmp ult ptr %i.f, %scevgep
  %bound1459 = icmp ult ptr %scevgep.a, %scevgep
  %found.conflict460 = and i1 %bound0458, %bound1459
  %n.vec = and i64 %i.p, 4611686018427387902      ; 3 uses
  %i.t = shl i64 %n.vec, 3                        ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 2 uses
  %i.u = phi ptr [ %i.d, %.lr.ph ], [ %i.fg, %bb.x ] ; 5 uses
  %i.v = phi ptr [ %i.f, %.lr.ph ], [ %i.as, %bb.x ] ; 8 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fo, %bb.x ] ; 3 uses
  %.051261 = phi i64 [ %i.j, %.lr.ph ], [ %i.fm, %bb.x ] ; 4 uses
  %.052260 = phi i8 [ 1, %.lr.ph ], [ %.153, %bb.x ] ; 5 uses
  %.057259 = phi i64 [ %5, %.lr.ph ], [ %.158, %bb.x ] ; 2 uses
  %.0229258 = phi i64 [ %i.a, %.lr.ph ], [ %i.fp, %bb.x ] ; 4 uses
  %.sroa.0204.0257 = phi ptr [ %i.c, %.lr.ph ], [ %.sroa.0204.2, %bb.x ] ; 16 uses
  %.sroa.0200.0256 = phi ptr [ %i.e, %.lr.ph ], [ %.sroa.0200.1, %bb.x ] ; 10 uses
  %.sroa.0194.0255 = phi ptr [ %i.f, %.lr.ph ], [ %i.fj, %bb.x ] ; 5 uses
  %.sroa.0183.0252 = phi ptr [ %i.b, %.lr.ph ], [ %i.fk, %bb.x ] ; 16 uses
  %i.w = ptrtoaddr ptr %i.u to i64
  %i.x = icmp ult i64 %.051261, %.0
  br i1 %i.x, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.am, %.thread20.i ], [ %.051261, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.al, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.y = mul i64 %.01822.i, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.y
  %i.aa = mul i64 %.023.i, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %.sroa.0183.0252, i64 %.01822.i
  %i.ad = getelementptr inbounds [8 x i8], ptr %.sroa.0183.0252, i64 %.023.i
  %i.ae = load i32, ptr %i.ab, align 4, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.z, align 4, !tbaa !337 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ah = icmp slt i32 %i.af, %i.ae
  br i1 %i.ah, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !337
  %i.aj = load i32, ptr %i.ac, align 4, !tbaa !337
  %i.ak = icmp slt i32 %i.ai, %i.aj
  %cond.fr.i = freeze i1 %i.ak
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.al = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.am = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !91

_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.al, %.thread20.i ] ; 7 uses
  %i.an = add i64 %.018.lcssa.i, 2
  %i.ao = call i64 @llvm.umax.i64(i64 %.0, i64 %i.an) ; 2 uses
  %.sroa.speculated218 = call i64 @llvm.umin.i64(i64 %i.ao, i64 %.0229258)
  %i.ap = mul i64 %.018.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ap, 3                        ; 2 uses
  %i.aq = getelementptr i8, ptr %i.v, i64 %.idx   ; 11 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %2 ; 6 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %.idx242 ; 8 uses
  %i.at = load ptr, ptr %18, align 8, !tbaa !349  ; 10 uses
  %i.au = ptrtoaddr ptr %i.at to i64
  %i.av = icmp eq ptr %i.at, %i.u
  %.not61 = icmp eq i64 %.057259, 0
  br i1 %.not61, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.h, align 4, !tbaa !337
  %i.ax = load i32, ptr %i.aq, align 4, !tbaa !337
  %i.ay = icmp slt i32 %i.aw, %i.ax
  br i1 %i.ay, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old64 = trunc nuw i8 %.052260 to i1
  br i1 %.old64, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx243 = shl nsw i64 %.018.lcssa.i, 3
  %i.az = getelementptr inbounds i8, ptr %.sroa.0183.0252, i64 %.idx243 ; 13 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4867
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.a
  %i.bc = icmp eq ptr %.sroa.0204.0257, %i.bb
  br i1 %i.bc, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bd = trunc nuw i8 %.052260 to i1
  br i1 %i.bd, label %bb.j, label %.thread308

.thread308:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
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
  %i.be = load i32, ptr %i.az, align 4, !tbaa !337
  %i.bf = load i32, ptr %.sroa.0204.0257, align 4, !tbaa !337
  %i.bg = icmp slt i32 %i.be, %i.bf               ; 4 uses
  %i.bh = trunc nuw i8 %.052260 to i1             ; 2 uses
  %i.bi = xor i1 %i.bg, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bj = phi i1 [ true, %._crit_edge ], [ %i.bg, %bb.i ]
  br i1 %i.av, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bk = add i64 %i.w, -8
  %i.bl = sub i64 %i.bk, %i.au                    ; 3 uses
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check480 = icmp ult i64 %i.bl, 24
  br i1 %min.iters.check480, label %.lr.ph.i.i.preheader575, label %vector.memcheck481

vector.memcheck481:                               ; preds = %.lr.ph.i.i.preheader
  %i.bo = and i64 %i.bl, -8
  %i.bp = add i64 %i.bo, 8                        ; 2 uses
  %i.bq = getelementptr i8, ptr %i.at, i64 %i.bp
  %i.br = getelementptr i8, ptr %.sroa.0200.0256, i64 %i.bp
  %bound0482 = icmp ult ptr %i.at, %i.br
  %bound1483 = icmp ult ptr %.sroa.0200.0256, %i.bq
  %found.conflict484 = and i1 %bound0482, %bound1483
  br i1 %found.conflict484, label %.lr.ph.i.i.preheader575, label %vector.ph485

vector.ph485:                                     ; preds = %vector.memcheck481
  %n.vec486 = and i64 %i.bn, 4611686018427387902  ; 3 uses
  %i.bs = shl i64 %n.vec486, 3                    ; 2 uses
  %i.bt = getelementptr i8, ptr %.sroa.0200.0256, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.at, i64 %i.bs
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph485
  %index488 = phi i64 [ 0, %vector.ph485 ], [ %index.next499, %vector.body487 ] ; 2 uses
  %i.bv = shl i64 %index488, 3                    ; 2 uses
  %next.gep489 = getelementptr i8, ptr %.sroa.0200.0256, i64 %i.bv ; 2 uses
  %next.gep490 = getelementptr i8, ptr %i.at, i64 %i.bv ; 2 uses
  %wide.vec491 = load <4 x i32>, ptr %next.gep490, align 4, !tbaa !337, !alias.scope !4868, !noalias !4869
  %wide.vec494 = load <4 x i32>, ptr %next.gep489, align 4, !tbaa !337, !alias.scope !4870, !noalias !4869
  store <4 x i32> %wide.vec494, ptr %next.gep490, align 4, !tbaa !337, !alias.scope !4868, !noalias !4869
  store <4 x i32> %wide.vec491, ptr %next.gep489, align 4, !tbaa !337, !alias.scope !4870, !noalias !4869
  %index.next499 = add nuw i64 %index488, 2       ; 2 uses
  %i.bw = icmp eq i64 %index.next499, %n.vec486
  br i1 %i.bw, label %middle.block500, label %vector.body487, !llvm.loop !4807

middle.block500:                                  ; preds = %vector.body487
  %cmp.n501 = icmp eq i64 %i.bn, %n.vec486
  br i1 %cmp.n501, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader575

.lr.ph.i.i.preheader575:                          ; preds = %vector.memcheck481, %.lr.ph.i.i.preheader, %middle.block500
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.0200.0256, %vector.memcheck481 ], [ %.sroa.0200.0256, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block500 ]
  %.ph576.a = phi ptr [ %i.at, %vector.memcheck481 ], [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block500 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader575, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader575 ] ; 4 uses
  %i.bx = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.ph576.a, %.lr.ph.i.i.preheader575 ] ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !337, !noalias !4869
  %i.bz = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !337, !noalias !4869
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !337, !noalias !4869
  store i32 %i.by, ptr %.sroa.0.0.i, align 4, !tbaa !337, !noalias !4869
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !337, !noalias !4869
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !337, !noalias !4869
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !337, !noalias !4869
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !337, !noalias !4869
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.ce, %i.u
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !4808

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block500, %bb.j
  %i.cg = load ptr, ptr %7, align 8, !tbaa !330   ; 14 uses
  store ptr %i.cg, ptr %19, align 8, !tbaa !349
  store ptr %i.cg, ptr %18, align 8, !tbaa !349
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_S8_NS0_7swap_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i66.preheader

.lr.ph.i66.preheader:                             ; preds = %.preheader.i
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  br i1 %cmp.n534, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84, label %.lr.ph.i.i81.preheader571

.lr.ph.i.i81.preheader571:                        ; preds = %vector.memcheck514, %.lr.ph.i.i81.preheader, %middle.block533
  %.sroa.0.0.i82.ph = phi ptr [ %.sroa.0200.0.lcssa.ph, %vector.memcheck514 ], [ %.sroa.0200.0.lcssa.ph, %.lr.ph.i.i81.preheader ], [ %i.gd, %middle.block533 ]
  %.ph572 = phi ptr [ %.pre, %vector.memcheck514 ], [ %.pre, %.lr.ph.i.i81.preheader ], [ %i.ge, %middle.block533 ]
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %.lr.ph.i.i81.preheader571, %.lr.ph.i.i81
  %.sroa.0.0.i82 = phi ptr [ %i.gp, %.lr.ph.i.i81 ], [ %.sroa.0.0.i82.ph, %.lr.ph.i.i81.preheader571 ] ; 4 uses
  %i.gh = phi ptr [ %i.go, %.lr.ph.i.i81 ], [ %.ph572, %.lr.ph.i.i81.preheader571 ] ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !337, !noalias !4879
  %i.gj = load i32, ptr %.sroa.0.0.i82, align 4, !tbaa !337, !noalias !4879
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !337, !noalias !4879
  store i32 %i.gi, ptr %.sroa.0.0.i82, align 4, !tbaa !337, !noalias !4879
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 4 ; 2 uses
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !337, !noalias !4879
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !337, !noalias !4879
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !337, !noalias !4879
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !337, !noalias !4879
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i82, i64 8
  %.not.i.i83 = icmp eq ptr %i.go, %i.fq
  br i1 %.not.i.i83, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84, label %.lr.ph.i.i81, !llvm.loop !4834

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84: ; preds = %.lr.ph.i.i81, %middle.block533, %bb.a, %.thread
  %.052.lcssa318 = phi ptr [ %i.e, %bb.a ], [ %i.fs, %.thread ], [ %i.fs, %middle.block533 ], [ %i.fs, %.lr.ph.i.i81 ]
  %.0229.lcssa317 = phi i64 [ 0, %bb.a ], [ %.0229.lcssa.ph, %.thread ], [ %.0229.lcssa.ph, %middle.block533 ], [ %.0229.lcssa.ph, %.lr.ph.i.i81 ] ; 2 uses
  %.sroa.0204.0.lcssa316 = phi ptr [ %i.c, %bb.a ], [ %.sroa.0204.0.lcssa.ph, %.thread ], [ %.sroa.0204.0.lcssa.ph, %middle.block533 ], [ %.sroa.0204.0.lcssa.ph, %.lr.ph.i.i81 ]
  %.sroa.0194.0.lcssa315 = phi ptr [ %i.f, %bb.a ], [ %.sroa.0194.0.lcssa.ph, %.thread ], [ %.sroa.0194.0.lcssa.ph, %middle.block533 ], [ %.sroa.0194.0.lcssa.ph, %.lr.ph.i.i81 ]
  %.idx244 = shl i64 %6, 3                        ; 3 uses
  %i.gq = getelementptr i8, ptr %i.h, i64 %.idx244 ; 3 uses
  %i.gr = load ptr, ptr %7, align 8, !tbaa !330   ; 9 uses
  %.not1.i.i85 = icmp eq i64 %6, 0
  br i1 %.not1.i.i85, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84
  %i.gs = add i64 %.idx244, -8                    ; 2 uses
  %i.gt = lshr exact i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check543 = icmp ult i64 %i.gs, 24
  br i1 %min.iters.check543, label %.lr.ph.i.i86.preheader570, label %vector.memcheck544

vector.memcheck544:                               ; preds = %.lr.ph.i.i86.preheader
  %i.gv = getelementptr i8, ptr %i.gr, i64 %.idx244
  %bound0545 = icmp ult ptr %i.h, %i.gv
  %bound1546 = icmp ult ptr %i.gr, %i.gq
  %found.conflict547 = and i1 %bound0545, %bound1546
  br i1 %found.conflict547, label %.lr.ph.i.i86.preheader570, label %vector.ph548

vector.ph548:                                     ; preds = %vector.memcheck544
  %n.vec549 = and i64 %i.gu, 4611686018427387902  ; 3 uses
  %i.gw = shl i64 %n.vec549, 3                    ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gr, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.h, i64 %i.gw
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph548
  %index551 = phi i64 [ 0, %vector.ph548 ], [ %index.next562, %vector.body550 ] ; 2 uses
  %i.gz = shl i64 %index551, 3                    ; 2 uses
  %next.gep552 = getelementptr i8, ptr %i.gr, i64 %i.gz ; 2 uses
  %next.gep553 = getelementptr i8, ptr %i.h, i64 %i.gz ; 2 uses
  %wide.vec554 = load <4 x i32>, ptr %next.gep553, align 4, !tbaa !337, !alias.scope !4881, !noalias !4882
  %wide.vec557 = load <4 x i32>, ptr %next.gep552, align 4, !tbaa !337, !alias.scope !4883, !noalias !4882
  store <4 x i32> %wide.vec557, ptr %next.gep553, align 4, !tbaa !337, !alias.scope !4881, !noalias !4882
  store <4 x i32> %wide.vec554, ptr %next.gep552, align 4, !tbaa !337, !alias.scope !4883, !noalias !4882
  %index.next562 = add nuw i64 %index551, 2       ; 2 uses
  %i.ha = icmp eq i64 %index.next562, %n.vec549
  br i1 %i.ha, label %middle.block563, label %vector.body550, !llvm.loop !4842

middle.block563:                                  ; preds = %vector.body550
  %cmp.n564 = icmp eq i64 %i.gu, %n.vec549
  br i1 %cmp.n564, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89, label %.lr.ph.i.i86.preheader570

.lr.ph.i.i86.preheader570:                        ; preds = %vector.memcheck544, %.lr.ph.i.i86.preheader, %middle.block563
  %.sroa.0.0.i87.ph = phi ptr [ %i.gr, %vector.memcheck544 ], [ %i.gr, %.lr.ph.i.i86.preheader ], [ %i.gx, %middle.block563 ]
  %.ph = phi ptr [ %i.h, %vector.memcheck544 ], [ %i.h, %.lr.ph.i.i86.preheader ], [ %i.gy, %middle.block563 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader570, %.lr.ph.i.i86
  %.sroa.0.0.i87 = phi ptr [ %i.hj, %.lr.ph.i.i86 ], [ %.sroa.0.0.i87.ph, %.lr.ph.i.i86.preheader570 ] ; 4 uses
  %i.hb = phi ptr [ %i.hi, %.lr.ph.i.i86 ], [ %.ph, %.lr.ph.i.i86.preheader570 ] ; 4 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !337, !noalias !4882
  %i.hd = load i32, ptr %.sroa.0.0.i87, align 4, !tbaa !337, !noalias !4882
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !337, !noalias !4882
  store i32 %i.hc, ptr %.sroa.0.0.i87, align 4, !tbaa !337, !noalias !4882
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i87, i64 4 ; 2 uses
  %i.hg = load i32, ptr %i.he, align 4, !tbaa !337, !noalias !4882
  %i.hh = load i32, ptr %i.hf, align 4, !tbaa !337, !noalias !4882
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !337, !noalias !4882
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !337, !noalias !4882
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i87, i64 8
  %.not.i.i88 = icmp eq ptr %i.hi, %i.gq
  br i1 %.not.i.i88, label %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89, label %.lr.ph.i.i86, !llvm.loop !4843

_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89: ; preds = %.lr.ph.i.i86, %middle.block563, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit84
  store ptr %i.gr, ptr %18, align 8, !tbaa !349
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %6 ; 2 uses
  store ptr %i.hk, ptr %19, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  store ptr %i.hk, ptr %22, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  %i.hl = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4884
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %5
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %4
  store ptr %i.hn, ptr %24, align 8, !tbaa !349, !alias.scope !4885
  store ptr %.sroa.0204.0.lcssa316, ptr %25, align 8, !tbaa !349, !alias.scope !4886
  store ptr %i.h, ptr %26, align 8, !tbaa !349, !alias.scope !4887
  store ptr %i.gr, ptr %27, align 8, !tbaa !349, !alias.scope !4888
  store ptr %i.gq, ptr %28, align 8, !tbaa !349, !alias.scope !4889
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiES7_NSC_9select1stIiEEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.66") align 8 %23, ptr noundef nonnull align 8 dead_on_return %24, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dead_on_return %27, ptr noundef nonnull align 8 dead_on_return %28, i64 noundef %2, i64 noundef %.0229.lcssa317, i64 noundef 0, i64 noundef %.0229.lcssa317, i1 noundef zeroext true)
  %i.ho = load ptr, ptr %23, align 8, !tbaa !330, !noalias !4890
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.hp = load ptr, ptr %22, align 8, !tbaa !330, !noalias !4891 ; 2 uses
  %i.hq = load ptr, ptr %18, align 8, !tbaa !330  ; 3 uses
  %.not12.i = icmp eq ptr %i.hq, %i.hp
  br i1 %.not12.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_12vec_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89, %bb.ab
  %.sroa.096.0 = phi ptr [ %i.ii, %bb.ab ], [ %i.ho, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89 ] ; 3 uses
  %i.hr = phi ptr [ %.sroa.099.1, %bb.ab ], [ %.sroa.0194.0.lcssa315, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89 ] ; 4 uses
  %i.hs = phi ptr [ %i.il, %bb.ab ], [ %i.hp, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89 ] ; 4 uses
  %i.ht = icmp eq ptr %.052.lcssa318, %i.hr
  br i1 %i.ht, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i90, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.hw, %.lr.ph.i.i.i ], [ %.sroa.096.0, %.lr.ph.i90 ] ; 2 uses
  %i.hu = phi ptr [ %i.hv, %.lr.ph.i.i.i ], [ %i.hs, %.lr.ph.i90 ] ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 -8 ; 4 uses
  %i.hw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -8 ; 3 uses
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !337, !noalias !4892
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !337, !noalias !4892
  store i32 %i.hy, ptr %i.hv, align 4, !tbaa !337, !noalias !4892
  store i32 %i.hx, ptr %i.hw, align 4, !tbaa !337, !noalias !4892
  %i.hz = getelementptr inbounds i8, ptr %i.hu, i64 -4 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 2 uses
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !337, !noalias !4892
  %i.ic = load i32, ptr %i.ia, align 4, !tbaa !337, !noalias !4892
  store i32 %i.ic, ptr %i.hz, align 4, !tbaa !337, !noalias !4892
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !337, !noalias !4892
  %.not.i.i.i = icmp eq ptr %i.hq, %i.hv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_12vec_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !4864

bb.y:                                             ; preds = %.lr.ph.i90
  %i.id = getelementptr inbounds i8, ptr %i.hs, i64 -8 ; 3 uses
  %i.ie = getelementptr inbounds i8, ptr %i.hr, i64 -8 ; 3 uses
  %i.if = load i32, ptr %i.id, align 4, !tbaa !337 ; 2 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !337 ; 2 uses
  %i.ih = icmp slt i32 %i.if, %i.ig
  %i.ii = getelementptr inbounds i8, ptr %.sroa.096.0, i64 -8 ; 4 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !337 ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.096.0, i64 -4 ; 2 uses
  br i1 %i.ih, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ig, ptr %i.ii, align 4, !tbaa !337
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !337
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.if, ptr %i.ii, align 4, !tbaa !337
  store i32 %i.ij, ptr %i.id, align 4, !tbaa !337
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sink = phi ptr [ %i.hs, %bb.aa ], [ %i.hr, %bb.z ]
  %.sroa.099.1 = phi ptr [ %i.hr, %bb.aa ], [ %i.ie, %bb.z ]
  %i.il = phi ptr [ %i.id, %bb.aa ], [ %i.hs, %bb.z ] ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.sink, i64 -4 ; 2 uses
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !337
  %i.io = load i32, ptr %i.im, align 4, !tbaa !337
  store i32 %i.io, ptr %i.ik, align 4, !tbaa !337
  store i32 %i.in, ptr %i.im, align 4, !tbaa !337
  %.not.i91 = icmp eq ptr %i.hq, %i.il
  br i1 %.not.i91, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_12vec_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i90, !llvm.loop !4865

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS0_7swap_opENS2_12vec_iteratorIPS8_Lb0EEESF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EET0_NS0_9forward_tET_SB_S9_.exit89
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 8 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4907 ; 4 uses
  %i.d = mul i64 %i.b, %2
  %i.e = load ptr, ptr %1, align 8, !tbaa !349, !noalias !4908 ; 12 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %3 ; 6 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %i.d ; 4 uses
  %.not104 = icmp eq i64 %i.b, 0
  br i1 %.not104, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  br label %._crit_edge121

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.i = icmp eq i64 %5, 0
  %i.j = select i1 %i.i, i64 0, i64 %4            ; 2 uses
  %i.k = add i64 %i.j, 1
  %.sroa.speculated65 = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.b)
  %i.l = icmp ne i64 %6, 0
  %.idx99 = shl i64 %2, 3                         ; 5 uses
  %.not1.i.i = icmp eq i64 %2, 0
  %14 = mul i64 %2, %i.b
  %15 = shl i64 %14, 3                            ; 2 uses
  %i.m = shl i64 %3, 3                            ; 6 uses
  %16 = getelementptr i8, ptr %i.e, i64 %15
  %scevgep = getelementptr i8, ptr %16, i64 %i.m  ; 2 uses
  %i.n = or disjoint i64 %i.m, 4                  ; 2 uses
  %17 = add i64 %i.m, %.idx99                     ; 2 uses
  %scevgep173 = getelementptr i8, ptr %i.e, i64 %17
  %scevgep174 = getelementptr i8, ptr %i.e, i64 %i.n ; 3 uses
  %18 = getelementptr i8, ptr %i.e, i64 %17
  %scevgep.a = getelementptr i8, ptr %18, i64 -4
  %scevgep171 = getelementptr i8, ptr %i.e, i64 %15
  %i.o = getelementptr i8, ptr %scevgep171, i64 %i.m
  %scevgep172 = getelementptr i8, ptr %i.o, i64 -4 ; 2 uses
  %i.p = add i64 %.idx99, -8                      ; 2 uses
  %i.q = lshr exact i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 120
  %i.s = getelementptr i8, ptr %i.e, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %stride.check = icmp slt i64 %.idx99, 0
  %bound0173 = icmp ult ptr %i.f, %scevgep173
  %bound1174 = icmp ult ptr %scevgep174, %scevgep.a
  %found.conflict175 = and i1 %bound0173, %bound1174
  %invariant.op = or i1 %stride.check, %found.conflict175
  %i.u = getelementptr i8, ptr %i.e, i64 %i.n
  %i.v = getelementptr i8, ptr %i.e, i64 %i.m
  %n.vec = and i64 %i.r, 4611686018427387902      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx124 = shl nsw i64 %i.ay, 3
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 %.idx124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !387
  %.not101115 = icmp eq i64 %i.ay, 0
  br i1 %.not101115, label %._crit_edge121, label %.lr.ph120

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0112 = phi i64 [ %i.j, %.lr.ph ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.034111 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.035110 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.sroa.092.0109 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.092.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.096108 = phi i64 [ %i.b, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.sroa.070.0107 = phi ptr [ %i.c, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.sroa.059.0106 = phi ptr [ %i.f, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.val103105 = phi i64 [ %.sroa.speculated65, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.y = icmp ult i64 %.0112, %.val103105
  br i1 %i.y, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread20.i
  %.023.i = phi i64 [ %i.an, %.thread20.i ], [ %.0112, %bb.b ] ; 4 uses
  %.01822.i = phi i64 [ %i.am, %.thread20.i ], [ 0, %bb.b ] ; 4 uses
  %i.z = mul i64 %.01822.i, %2
  %i.aa = getelementptr inbounds [8 x i8], ptr %.sroa.059.0106, i64 %i.z
  %i.ab = mul i64 %.023.i, %2
  %i.ac = getelementptr inbounds [8 x i8], ptr %.sroa.059.0106, i64 %i.ab
  %i.ad = getelementptr inbounds [8 x i8], ptr %.sroa.070.0107, i64 %.01822.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %.sroa.070.0107, i64 %.023.i
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !337 ; 2 uses
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !337 ; 2 uses
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = icmp slt i32 %i.ag, %i.af
  br i1 %i.ai, label %.thread20.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !337
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !337
  %i.al = icmp slt i32 %i.aj, %i.ak
  %cond.fr.i = freeze i1 %i.al
  br i1 %cond.fr.i, label %.thread.i, label %.thread20.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread20.i

.thread20.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.am = phi i64 [ %.023.i, %.thread.i ], [ %.01822.i, %bb.d ], [ %.01822.i, %bb.c ] ; 2 uses
  %i.an = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %.val103105
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !91

_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread20.i, %bb.b
  %.018.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.am, %.thread20.i ] ; 5 uses
  %.idx100 = shl nsw i64 %.018.lcssa.i, 3
  %i.ao = getelementptr inbounds i8, ptr %.sroa.070.0107, i64 %.idx100 ; 4 uses
  %i.ap = add i64 %.018.lcssa.i, 2
  %i.aq = tail call i64 @llvm.umax.i64(i64 %.val103105, i64 %i.ap) ; 2 uses
  %.sroa.speculated80 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.096108)
  %i.ar = mul i64 %.018.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.ar, 3                        ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.059.0106, i64 %.idx ; 8 uses
  %i.at = trunc nuw i8 %.034111 to i1
  %or.cond = and i1 %i.l, %i.at
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.au = load i32, ptr %i.g, align 4, !tbaa !337
  %i.av = load i32, ptr %i.as, align 4, !tbaa !337
  %i.aw = icmp sge i32 %i.au, %i.av
  %spec.select = zext i1 %i.aw to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.034111, %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ax = zext nneg i8 %.1 to i64
  %i.ay = add i64 %.035110, %i.ax                 ; 3 uses
  %i.az = getelementptr i8, ptr %.sroa.059.0106, i64 %.idx99 ; 2 uses
  %.not.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader200, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ba = mul i64 %indvar, %.idx99                ; 3 uses
  %i.bb = shl i64 %.018.lcssa.i, 3
  %i.bc = add i64 %i.bb, 8
  %i.bd = mul i64 %2, %i.bc                       ; 2 uses
  %i.be = getelementptr i8, ptr %i.t, i64 %i.ba
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.bd  ; 3 uses
  %bound0 = icmp ult ptr %i.f, %i.bf
  %bound1 = icmp ult ptr %i.as, %scevgep172
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx.reass = or i1 %found.conflict, %invariant.op
  %i.bg = getelementptr i8, ptr %i.u, i64 %i.ba
  %i.bh = getelementptr i8, ptr %i.bg, i64 %.idx  ; 3 uses
  %i.bi = getelementptr i8, ptr %i.v, i64 %i.ba
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bd  ; 3 uses
  %bound0176 = icmp ult ptr %i.f, %i.bj
  %bound1177 = icmp ult ptr %i.bh, %scevgep172
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx.reass, %found.conflict178
  %bound0180 = icmp ult ptr %i.as, %scevgep
  %bound1181 = icmp ult ptr %scevgep174, %i.bf
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %i.as, %i.bj
  %bound1185 = icmp ult ptr %i.bh, %i.bf
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %scevgep174, %i.bj
  %bound1189 = icmp ult ptr %i.bh, %scevgep
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader200, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bk = getelementptr i8, ptr %i.as, i64 %i.w
  %i.bl = getelementptr i8, ptr %.sroa.059.0106, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bm ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.sroa.059.0106, i64 %i.bm ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !337, !noalias !4909
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !337, !noalias !4909
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !337, !noalias !4909
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !337, !noalias !4909
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !4899

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader200

.lr.ph.i.i.preheader200:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.04.0.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  %.ph = phi ptr [ %.sroa.059.0106, %vector.memcheck ], [ %.sroa.059.0106, %.lr.ph.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader200, %.lr.ph.i.i
  %.sroa.04.0.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %.sroa.04.0.i.ph, %.lr.ph.i.i.preheader200 ] ; 4 uses
  %i.bo = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader200 ] ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !337, !noalias !4909
  %i.bq = load i32, ptr %.sroa.04.0.i, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bp, ptr %.sroa.04.0.i, align 4, !tbaa !337, !noalias !4909
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !337, !noalias !4909
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !337, !noalias !4909
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !337, !noalias !4909
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.bv, %i.az
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4900

_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not9.i = icmp eq i64 %.018.lcssa.i, 0
  br i1 %.not9.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i
  %i.bx = load <2 x i32>, ptr %i.ao, align 4, !tbaa !337
  %i.by = load <2 x i32>, ptr %.sroa.070.0107, align 4, !tbaa !337
  store <2 x i32> %i.by, ptr %i.ao, align 4, !tbaa !337
  store <2 x i32> %i.bx, ptr %.sroa.070.0107, align 4, !tbaa !337
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesINS_9container12vec_iteratorIPSt4pairIiiELb0EEES6_EET0_T_S8_S7_.exit.i
  %i.bz = icmp eq ptr %i.ao, %.sroa.092.0109
  br i1 %i.bz, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = icmp eq ptr %.sroa.092.0109, %.sroa.070.0107
  %spec.select97 = select i1 %i.ca, ptr %i.ao, ptr %.sroa.092.0109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS_9container12vec_iteratorIPSt4pairIiiELb0EEES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.sroa.092.1 = phi ptr [ %.sroa.092.0109, %bb.f ], [ %spec.select97, %bb.j ], [ %.sroa.070.0107, %bb.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.070.0107, i64 8
  %i.cc = icmp ne i64 %.0112, 0
  %.neg = sext i1 %i.cc to i64
  %i.cd = add i64 %.0112, %.neg
  %i.ce = icmp ne i64 %i.aq, 0
  %.neg36 = sext i1 %i.ce to i64
  %i.cf = add i64 %.sroa.speculated80, %.neg36
  %i.cg = add i64 %.096108, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cg, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4901

._crit_edge121.loopexit:                          ; preds = %bb.n
  %.pre128 = load i8, ptr %i.a, align 1, !tbaa !387, !range !388
  %i.ch = trunc nuw i8 %.pre128 to i1
  %i.ci = select i1 %i.ch, ptr %i.da, ptr %i.db
  br label %._crit_edge121

._crit_edge121:                                   ; preds = %._crit_edge.thread, %._crit_edge121.loopexit, %._crit_edge
  %.sroa.speculated = phi ptr [ %i.e, %._crit_edge ], [ %i.ci, %._crit_edge121.loopexit ], [ %i.e, %._crit_edge.thread ] ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.speculated, ptr %7, align 8, !tbaa !349
  store ptr %i.g, ptr %8, align 8, !tbaa !349
  store ptr %i.cj, ptr %9, align 8, !tbaa !349
  %i.ck = ptrtoint ptr %i.g to i64
  %i.cl = ptrtoint ptr %.sroa.speculated to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

.lr.ph120:                                        ; preds = %._crit_edge, %bb.n
  %.sroa.040.0118 = phi ptr [ %i.dc, %bb.n ], [ %i.c, %._crit_edge ] ; 2 uses
  %.sroa.044.0117 = phi ptr [ %i.db, %bb.n ], [ %i.f, %._crit_edge ] ; 4 uses
  %.sroa.048.0116 = phi ptr [ %i.da, %bb.n ], [ %i.e, %._crit_edge ]
  %i.co = load ptr, ptr %0, align 8, !tbaa !349, !noalias !4910
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.b
  %i.cq = icmp eq ptr %.sroa.092.1, %i.cp
  br i1 %i.cq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph120
  %i.cr = load i32, ptr %.sroa.040.0118, align 4, !tbaa !337
  %i.cs = load i32, ptr %.sroa.092.1, align 4, !tbaa !337
  %i.ct = icmp slt i32 %i.cr, %i.cs
  %i.cu = zext i1 %i.ct to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph120
  %i.cv = phi i32 [ 1, %.lr.ph120 ], [ %i.cu, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.cw = load i8, ptr %i.a, align 1, !tbaa !387, !range !388, !noundef !344
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = icmp eq i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.sroa.048.0116, ptr %11, align 8, !tbaa !349
  store ptr %.sroa.044.0117, ptr %12, align 8, !tbaa !349
  %i.cz = getelementptr inbounds [8 x i8], ptr %.sroa.044.0117, i64 %2
  store ptr %i.cz, ptr %13, align 8, !tbaa !349, !alias.scope !4911
  call void @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEET_SG_SG_SG_PbT0_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull %i.a)
  %.pre = load ptr, ptr %10, align 8, !tbaa !330
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.da = phi ptr [ %.pre, %bb.m ], [ %.sroa.044.0117, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.db = getelementptr inbounds [8 x i8], ptr %.sroa.044.0117, i64 %2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.040.0118, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.dc, %i.x
  br i1 %.not101, label %._crit_edge121.loopexit, label %.lr.ph120, !llvm.loop !4906
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container12vec_iteratorIPSt4pairIiiELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiES8_NSB_9select1stIiEEEENS0_7move_opES9_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %16 = alloca %"class.boost::container::vec_iterator", align 8 ; 5 uses
  %17 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %18 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %19 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 4 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.20", align 8 ; 2 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %26 = alloca %"class.boost::movelib::reverse_iterator.66", align 8 ; 2 uses
  %i.c = add i64 %5, %4                           ; 6 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !330
  %i.e = load ptr, ptr %1, align 8, !tbaa !330    ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %3 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  store ptr %i.g, ptr %18, align 8, !tbaa !349
  %i.h = mul i64 %i.c, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not234 = icmp eq i64 %i.c, 0
  br i1 %.not234, label %_ZN5boost7movelib7move_opclIPSt4pairIiiENS_9container12vec_iteratorIS5_Lb0EEEEET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.c)
  %.idx226 = shl i64 %2, 3                        ; 8 uses
  %.not85 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %.not2021.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 2 uses
end_hunk_9
