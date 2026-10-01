Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26547
inline.NumDeleted: 4082
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 674
loop-unroll.NumUnrolled: 1026
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_:bb.a
  %i.je = load ptr, ptr %11, align 8, !tbaa !571  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.jf = load ptr, ptr %10, align 8, !tbaa !571  ; 2 uses
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !376 ; 4 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64              ; 2 uses
  %.not27.i = icmp eq ptr %i.jg, %i.jf
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157, %bb.ab
  %indvar434 = phi i64 [ %indvar.next435, %bb.ab ], [ 0, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 2 uses
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.jf, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 9 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa290, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.kk, %bb.ab ], [ %i.je, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157 ] ; 6 uses
  %i.ji = icmp eq ptr %.0108.lcssa291, %.01929.i
  br i1 %i.ji, label %.lr.ph.i.i.i.preheader, label %bb.y

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i158
  %.030.i432.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.jj = add i64 %.030.i432.le, -4
  %i.jk = sub i64 %i.jj, %i.jh                    ; 2 uses
  %i.jl = lshr i64 %i.jk, 2
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check442 = icmp ult i64 %i.jk, 92
  br i1 %min.iters.check442, label %.lr.ph.i.i.i.preheader458, label %vector.memcheck430

vector.memcheck430:                               ; preds = %.lr.ph.i.i.i.preheader
  %scevgep431 = getelementptr i8, ptr %.030.i, i64 -4
  %reass.sub = sub i64 %.030.i432.le, %i.jh
  %i.jn = add i64 %reass.sub, -4
  %i.jo = lshr i64 %i.jn, 2
  %i.jp = mul i64 %i.jo, -4                       ; 2 uses
  %scevgep433 = getelementptr i8, ptr %scevgep431, i64 %i.jp
  %i.jq = shl i64 %indvar434, 2
  %i.jr = sub nuw nsw i64 -4, %i.jq
  %scevgep436 = getelementptr i8, ptr %i.je, i64 %i.jr
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.jp
  %bound0438 = icmp ult ptr %scevgep433, %.02128.i
  %bound1439 = icmp ult ptr %scevgep437, %.030.i
  %found.conflict440 = and i1 %bound0438, %bound1439
  br i1 %found.conflict440, label %.lr.ph.i.i.i.preheader458, label %vector.ph443

vector.ph443:                                     ; preds = %vector.memcheck430
  %n.vec444 = and i64 %i.jm, 9223372036854775800  ; 3 uses
  %i.js = mul i64 %n.vec444, -4                   ; 2 uses
  %i.jt = getelementptr i8, ptr %.02128.i, i64 %i.js
  %i.ju = getelementptr i8, ptr %.030.i, i64 %i.js
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next453, %vector.body445 ] ; 2 uses
  %i.jv = mul i64 %index446, -4                   ; 2 uses
  %next.gep447 = getelementptr i8, ptr %.02128.i, i64 %i.jv ; 2 uses
  %next.gep448 = getelementptr i8, ptr %.030.i, i64 %i.jv ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %next.gep448, i64 -16 ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %next.gep448, i64 -32 ; 2 uses
  %wide.load449 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !367, !alias.scope !4478, !noalias !4479
  %wide.load450 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !367, !alias.scope !4478, !noalias !4479
  %i.jy = getelementptr inbounds i8, ptr %next.gep447, i64 -16 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %next.gep447, i64 -32 ; 2 uses
  %wide.load451 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !367, !alias.scope !4479
  %wide.load452 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !367, !alias.scope !4479
  store <4 x i32> %wide.load451, ptr %i.jw, align 4, !tbaa !367, !alias.scope !4478, !noalias !4479
  store <4 x i32> %wide.load452, ptr %i.jx, align 4, !tbaa !367, !alias.scope !4478, !noalias !4479
  store <4 x i32> %wide.load449, ptr %i.jy, align 4, !tbaa !367, !alias.scope !4479
  store <4 x i32> %wide.load450, ptr %i.jz, align 4, !tbaa !367, !alias.scope !4479
  %index.next453 = add nuw i64 %index446, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next453, %n.vec444
  br i1 %i.ka, label %middle.block454, label %vector.body445, !llvm.loop !4456

middle.block454:                                  ; preds = %vector.body445
  %cmp.n455 = icmp eq i64 %i.jm, %n.vec444
  br i1 %cmp.n455, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i.preheader458

.lr.ph.i.i.i.preheader458:                        ; preds = %vector.memcheck430, %.lr.ph.i.i.i.preheader, %middle.block454
  %.08.i.i.i.ph = phi ptr [ %.02128.i, %vector.memcheck430 ], [ %.02128.i, %.lr.ph.i.i.i.preheader ], [ %i.jt, %middle.block454 ]
  %.057.i.i.i.ph = phi ptr [ %.030.i, %vector.memcheck430 ], [ %.030.i, %.lr.ph.i.i.i.preheader ], [ %i.ju, %middle.block454 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader458, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.kc, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader458 ]
  %.057.i.i.i = phi ptr [ %i.kb, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader458 ]
  %i.kb = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 4 uses
  %i.kc = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.kd = load i32, ptr %i.kb, align 4, !tbaa !367
  %i.ke = load i32, ptr %i.kc, align 4, !tbaa !367
  store i32 %i.ke, ptr %i.kb, align 4, !tbaa !367
  store i32 %i.kd, ptr %i.kc, align 4, !tbaa !367
  %.not.i.i.i = icmp eq ptr %i.jg, %i.kb
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !4457

bb.y:                                             ; preds = %.lr.ph.i158
  %i.kf = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 3 uses
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !367 ; 2 uses
  %i.ki = load i32, ptr %i.kg, align 4, !tbaa !367 ; 2 uses
  %i.kj = icmp slt i32 %i.kh, %i.ki
  %i.kk = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 4 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !367 ; 2 uses
  br i1 %i.kj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ki, ptr %i.kk, align 4, !tbaa !367
  store i32 %i.kl, ptr %i.kg, align 4, !tbaa !367
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i32 %i.kh, ptr %i.kk, align 4, !tbaa !367
  store i32 %i.kl, ptr %i.kf, align 4, !tbaa !367
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.kg, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.kf, %bb.aa ] ; 2 uses
  %.not.i160 = icmp eq ptr %i.jg, %.1.i159
  %indvar.next435 = add i64 %indvar434, 1
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !4458

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEPiSC_EEvT2_SD_SD_T1_SE_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %middle.block454, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 6 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = add i64 %i.k, %3
  %i.m = shl i64 %i.l, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.m
  %i.n = add i64 %.idx104, -4                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  %stride.check = icmp slt i64 %.idx104, 0
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit
  %.idx129 = shl i64 %i.bd, 2                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.bd, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.t = icmp eq ptr %.1101, %i.s
  br i1 %i.t, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.u = add i64 %.idx129, -4                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.y, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.x, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !4480

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.y, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.x, %.lr.ph124.split.us.preheader.prol ]
  %i.z = icmp ult i64 %i.u, 28
  br i1 %i.z, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.ac, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.ab, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ac, %i.r
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !4481

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.bz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.072115, %.val107109
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.as, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ar, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02226.i, %2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ae
  %i.ag = mul i64 %.027.i, %2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !367 ; 2 uses
  %i.al = load i32, ptr %i.af, align 4, !tbaa !367 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp slt i32 %i.al, %i.ak
  br i1 %i.an, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !367
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !367
  %i.aq = icmp slt i32 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !71

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.au = add i64 %.022.lcssa.i, 2
  %i.av = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.au) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.099111)
  %i.aw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.aw, 2
  %i.ax = getelementptr i8, ptr %.071116, i64 %.idx ; 6 uses
  %i.ay = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.ay
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %i.az = load i32, ptr %i.e, align 4, !tbaa !367
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !367
  %i.bb = icmp sge i32 %i.az, %i.ba
  %spec.select = zext i1 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bc = zext nneg i8 %.1 to i64
  %i.bd = add i64 %.075112, %i.bc                 ; 3 uses
  %i.be = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = shl i64 %.022.lcssa.i, 2
  %i.bg = add i64 %i.bf, 4
  %i.bh = mul i64 %2, %i.bg
  %scevgep161 = getelementptr i8, ptr %.071116, i64 %i.bh
  %bound0 = icmp ult ptr %i.d, %scevgep161
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bi = or i1 %found.conflict, %stride.check
  br i1 %i.bi, label %.lr.ph.i.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.q
  %i.bk = getelementptr i8, ptr %.071116, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 3 uses
  %next.gep162 = getelementptr i8, ptr %.071116, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !367, !alias.scope !4488, !noalias !4489
  %wide.load163 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !367, !alias.scope !4488, !noalias !4489
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !367, !alias.scope !4489
  %wide.load165 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !367, !alias.scope !4489
  store <4 x i32> %wide.load164, ptr %next.gep162, align 4, !tbaa !367, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load165, ptr %i.bm, align 4, !tbaa !367, !alias.scope !4488, !noalias !4489
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367, !alias.scope !4489
  store <4 x i32> %wide.load163, ptr %i.bn, align 4, !tbaa !367, !alias.scope !4489
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !4485

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %i.bp = load i32, ptr %.079.i.i, align 4, !tbaa !367
  %i.bq = load i32, ptr %.010.i.i, align 4, !tbaa !367
  store i32 %i.bq, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.bp, ptr %.010.i.i, align 4, !tbaa !367
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.br, %i.be
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !4486

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !367
  %i.bu = load i32, ptr %.073114, align 4, !tbaa !367
  store i32 %i.bu, ptr %i.at, align 4, !tbaa !367
  store i32 %i.bt, ptr %.073114, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bv = icmp eq ptr %i.at, %.0100110
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bw, ptr %i.at, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPiS3_EEvT_S4_RS4_T0_S6_S6_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.by = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.by to i64
  %i.bz = add i64 %.072115, %.neg
  %i.ca = icmp ne i64 %i.av, 0
  %.neg78 = sext i1 %i.ca to i64
  %i.cb = add i64 %.sroa.speculated89, %.neg78
  %i.cc = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4487

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cd = trunc nuw i8 %i.cu to i1
  %i.ce = select i1 %i.cd, ptr %i.cw, ptr %i.cx
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cf = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ce, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.aa, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ch = ptrtoint ptr %i.e to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.cf, ptr noundef %i.e, ptr noundef %i.cg, i64 noundef %i.ck, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cl = phi i8 [ %i.cu, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.cy, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.cx, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cw, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cn = load i32, ptr %.0122, align 4, !tbaa !367
  %i.co = load i32, ptr %.1101, align 4, !tbaa !367
  %i.cp = icmp slt i32 %i.cn, %i.co
  %i.cq = zext i1 %i.cp to i8
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPiEES5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_:bb.a
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %.sroa.016.037.i, %bb.o ], [ %i.df, %bb.n ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %i.dg, %bb.o ], [ %.sroa.022.038.i, %bb.n ] ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dp, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i10, !llvm.loop !5487

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i13, %middle.block263, %bb.k, %bb.l, %.loopexit.i, %bb.e
  %i.dq = phi ptr [ %.pre, %.loopexit.i ], [ %i.s, %bb.e ], [ %i.s, %bb.l ], [ %i.s, %bb.k ], [ %i.s, %middle.block263 ], [ %i.s, %.lr.ph.i.i.i13 ], [ %i.s, %bb.p ]
  %.sroa.052.0 = phi ptr [ %.sroa.052.1, %.loopexit.i ], [ %i.r, %bb.e ], [ %i.bw, %bb.l ], [ %i.r, %bb.k ], [ %i.cs, %middle.block263 ], [ %i.dc, %.lr.ph.i.i.i13 ], [ %i.dk, %bb.p ]
  %.sroa.059.0 = phi ptr [ %.sroa.024.044.i, %.loopexit.i ], [ %i.c, %bb.e ], [ %i.bu, %bb.l ], [ %i.c, %bb.k ], [ %.sroa.016.037.i, %middle.block263 ], [ %.sroa.016.037.i, %.lr.ph.i.i.i13 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.069.0 = phi ptr [ %.sroa.029.042.i, %.loopexit.i ], [ %i.r, %bb.e ], [ %i.r, %bb.l ], [ %i.r, %bb.k ], [ %.sroa.022.038.i, %middle.block263 ], [ %.sroa.022.038.i, %.lr.ph.i.i.i13 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.dq, ptr %1, align 8, !tbaa !571
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.059.1 = phi ptr [ %.sroa.059.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.065.0 = phi ptr [ %.sroa.052.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dr = load ptr, ptr %4, align 8, !tbaa !571   ; 3 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !571   ; 4 uses
  %.not.i21 = icmp eq ptr %.sroa.059.1, %i.dr
  %.not17.i = icmp eq ptr %.sroa.065.0, %.sroa.069.1
  %or.cond78 = select i1 %.not.i21, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = load ptr, ptr %5, align 8, !tbaa !571, !noalias !5503
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.030.0 = phi ptr [ %i.ds, %bb.s ], [ %i.dz, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dt, %bb.s ], [ %i.du, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.059.1, %bb.s ], [ %i.dy, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.069.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.030.1 = phi ptr [ %.sroa.030.0, %.outer.i ], [ %i.ec, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dv, %bb.u ] ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !367, !noalias !5503 ; 2 uses
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !367, !noalias !5503 ; 2 uses
  %.not26.i = icmp slt i32 %i.dw, %i.dx
  br i1 %.not26.i, label %bb.u, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.dy = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.dz = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !367, !noalias !5503
  store i32 %i.dw, ptr %i.dz, align 4, !tbaa !367, !noalias !5503
  %i.eb = load i32, ptr %i.dy, align 4, !tbaa !367, !noalias !5503
  store i32 %i.eb, ptr %i.du, align 4, !tbaa !367, !noalias !5503
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !367, !noalias !5503
  %.not28.i18 = icmp eq ptr %i.dy, %i.dr
  br i1 %.not28.i18, label %.loopexit.i19, label %.outer.i, !llvm.loop !85

bb.u:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 4 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !367, !noalias !5503
  store i32 %i.dx, ptr %i.ec, align 4, !tbaa !367, !noalias !5503
  store i32 %i.ed, ptr %i.dv, align 4, !tbaa !367, !noalias !5503
  %.not27.i20 = icmp eq ptr %i.dv, %.sroa.065.0
  br i1 %.not27.i20, label %.loopexit.i19, label %bb.t, !llvm.loop !85

.loopexit.i19:                                    ; preds = %.split.i, %bb.u
  %.sroa.030.2 = phi ptr [ %i.ec, %bb.u ], [ %i.dz, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dv, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dy, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.du, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !571, !noalias !5503
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.023.0.ph = phi ptr [ %i.ei, %bb.w ], [ %i.ds, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ek, %bb.w ], [ %.sroa.059.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.069.1, %bb.v ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.023.0 = phi ptr [ %i.ei, %bb.x ], [ %.sroa.023.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ef, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !367, !noalias !5504 ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !367, !noalias !5504 ; 2 uses
  %.not18.i = icmp slt i32 %i.eg, %i.eh
  %i.ei = getelementptr inbounds i8, ptr %.sroa.023.0, i64 -4 ; 7 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !367, !noalias !5504 ; 2 uses
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.ek = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.eg, ptr %i.ei, align 4, !tbaa !367, !noalias !5504
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !367, !noalias !5504
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !87

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !367, !noalias !5504
  store i32 %i.ej, ptr %i.ef, align 4, !tbaa !367, !noalias !5504
  %i.em = icmp eq ptr %i.ef, %.sroa.065.0
  br i1 %i.em, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !87

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPiEES5_S5_NS0_10antistableINS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i19, %bb.r
  %.sroa.037.0 = phi ptr [ %.sroa.030.2, %.loopexit.i19 ], [ %i.ds, %bb.r ], [ %i.ds, %bb.v ], [ %i.ei, %bb.w ], [ %i.ei, %bb.x ]
  %.sroa.059.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i19 ], [ %.sroa.059.1, %bb.r ], [ %.sroa.059.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.ek, %bb.w ]
  %.sroa.069.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i19 ], [ %.sroa.069.1, %bb.r ], [ %.sroa.069.1, %bb.v ], [ %i.ef, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.037.0, ptr %1, align 8, !tbaa !571
  store ptr %.sroa.069.2, ptr %6, align 8, !tbaa !571
  store ptr %.sroa.065.0, ptr %7, align 8, !tbaa !571
  store ptr %.sroa.059.2, ptr %3, align 8, !tbaa !571
  %i.en = load ptr, ptr %1, align 8, !tbaa !571
  store ptr %i.en, ptr %0, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 6 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = add i64 %i.k, %3
  %i.m = shl i64 %i.l, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.m
  %i.n = add i64 %.idx104, -4                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  %stride.check = icmp slt i64 %.idx104, 0
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77118 = icmp samesign eq i64 %i.bd, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.t = icmp eq ptr %.1101, %i.s
  br i1 %i.t, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.u = add i64 %.075111, -1
  %i.v = zext nneg i8 %.1 to i64
  %i.w = add i64 %i.u, %i.v
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.y, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.x, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !5505

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.y, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.x, %.lr.ph123.split.us.preheader.prol ]
  %i.z = icmp ult i64 %i.w, 7
  br i1 %i.z, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.ac, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.ab, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ac, %i.r
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !5506

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.bz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.072114, %.val106108
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.as, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ar, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02226.i, %2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ae
  %i.ag = mul i64 %.027.i, %2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !367 ; 2 uses
  %i.al = load i32, ptr %i.af, align 4, !tbaa !367 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp slt i32 %i.al, %i.ak
  br i1 %i.an, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !464
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !464
  %i.aq = icmp ult i8 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !102

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread24.i ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.au = add i64 %.022.lcssa.i, 2
  %i.av = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.au) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.099110)
  %i.aw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.aw, 2
  %i.ax = getelementptr i8, ptr %.071115, i64 %.idx ; 6 uses
  %i.ay = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.ay
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.az = load i32, ptr %i.e, align 4, !tbaa !367
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !367
  %i.bb = icmp sge i32 %i.az, %i.ba
  %spec.select = zext i1 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bc = zext nneg i8 %.1 to i64
  %i.bd = add i64 %.075111, %i.bc                 ; 4 uses
  %i.be = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = shl i64 %.022.lcssa.i, 2
  %i.bg = add i64 %i.bf, 4
  %i.bh = mul i64 %2, %i.bg
  %scevgep158 = getelementptr i8, ptr %.071115, i64 %i.bh
  %bound0 = icmp ult ptr %i.d, %scevgep158
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bi = or i1 %found.conflict, %stride.check
  br i1 %i.bi, label %.lr.ph.i.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.q
  %i.bk = getelementptr i8, ptr %.071115, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 3 uses
  %next.gep159 = getelementptr i8, ptr %.071115, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep159, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep159, align 4, !tbaa !367, !alias.scope !5513, !noalias !5514
  %wide.load160 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !367, !alias.scope !5513, !noalias !5514
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load161 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !367, !alias.scope !5514
  %wide.load162 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !367, !alias.scope !5514
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !367, !alias.scope !5513, !noalias !5514
  store <4 x i32> %wide.load162, ptr %i.bm, align 4, !tbaa !367, !alias.scope !5513, !noalias !5514
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367, !alias.scope !5514
  store <4 x i32> %wide.load160, ptr %i.bn, align 4, !tbaa !367, !alias.scope !5514
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !5510

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader166

.lr.ph.i.i.preheader166:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader166, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader166 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader166 ] ; 3 uses
  %i.bp = load i32, ptr %.079.i.i, align 4, !tbaa !367
  %i.bq = load i32, ptr %.010.i.i, align 4, !tbaa !367
  store i32 %i.bq, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.bp, ptr %.010.i.i, align 4, !tbaa !367
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.br, %i.be
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !5511

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bt = load i8, ptr %i.at, align 1, !tbaa !464
  %i.bu = load i8, ptr %.073113, align 1, !tbaa !464
  store i8 %i.bu, ptr %i.at, align 1, !tbaa !464
  store i8 %i.bt, ptr %.073113, align 1, !tbaa !464
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bv = icmp eq ptr %i.at, %.0100109
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bw, ptr %i.at, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.by = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.by to i64
  %i.bz = add i64 %.072114, %.neg
  %i.ca = icmp ne i64 %i.av, 0
  %.neg78 = sext i1 %i.ca to i64
  %i.cb = add i64 %.sroa.speculated89, %.neg78
  %i.cc = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5512

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cd = trunc nuw i8 %i.cu to i1
  %i.ce = select i1 %i.cd, ptr %i.cw, ptr %i.cx
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.cf = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ce, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.aa, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ch = ptrtoint ptr %i.e to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.cf, ptr noundef %i.e, ptr noundef %i.cg, i64 noundef %i.ck, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.cl = phi i8 [ %i.cu, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.cy, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.cx, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cw, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cn = load i8, ptr %.0121, align 1, !tbaa !464
  %i.co = load i8, ptr %.1101, align 1, !tbaa !464
  %i.cp = icmp ult i8 %i.cn, %i.co
  %i.cq = zext i1 %i.cp to i8
  %i.cr = icmp eq i8 %i.cm, %i.cq
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.et = add i64 %i.x, %i.cx                     ; 2 uses
  %i.eu = lshr i64 %i.et, 2
  %i.ev = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.et, 28
  br i1 %min.iters.check324, label %.lr.ph.i.i.preheader381, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep316 = getelementptr i8, ptr %i.cw, i64 -4
  %i.ew = add i64 %i.z, %i.cx
  %i.ex = lshr i64 %i.ew, 2
  %i.ey = mul i64 %i.ex, -4                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.ey
  %scevgep318 = getelementptr i8, ptr %.sroa.066.0, i64 -4
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.ey
  %bound0320 = icmp ult ptr %scevgep317, %.sroa.066.0
  %bound1321 = icmp ult ptr %scevgep319, %i.cw
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.preheader381, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck315
  %n.vec326 = and i64 %i.ev, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec326, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.066.0, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cw, i64 %i.ez
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next335, %vector.body327 ] ; 2 uses
  %i.fc = mul i64 %index328, -4                   ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.sroa.066.0, i64 %i.fc ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.cw, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep330, i64 -16 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %next.gep330, i64 -32 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !367, !alias.scope !5913, !noalias !5914
  %wide.load332 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !367, !alias.scope !5913, !noalias !5914
  %i.ff = getelementptr inbounds i8, ptr %next.gep329, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep329, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !367, !alias.scope !5915, !noalias !5916
  %wide.load334 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !367, !alias.scope !5915, !noalias !5916
  store <4 x i32> %wide.load333, ptr %i.fd, align 4, !tbaa !367, !alias.scope !5913, !noalias !5914
  store <4 x i32> %wide.load334, ptr %i.fe, align 4, !tbaa !367, !alias.scope !5913, !noalias !5914
  store <4 x i32> %wide.load331, ptr %i.ff, align 4, !tbaa !367, !alias.scope !5915, !noalias !5916
  store <4 x i32> %wide.load332, ptr %i.fg, align 4, !tbaa !367, !alias.scope !5915, !noalias !5916
  %index.next335 = add nuw i64 %index328, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next335, %n.vec326
  br i1 %i.fh, label %middle.block336, label %vector.body327, !llvm.loop !5896

middle.block336:                                  ; preds = %vector.body327
  %cmp.n337 = icmp eq i64 %i.ev, %n.vec326
  br i1 %cmp.n337, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader381

.lr.ph.i.i.preheader381:                          ; preds = %vector.memcheck315, %.lr.ph.i.i.preheader, %middle.block336
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.066.0, %vector.memcheck315 ], [ %.sroa.066.0, %.lr.ph.i.i.preheader ], [ %i.fa, %middle.block336 ]
  %.ph382 = phi ptr [ %i.cw, %vector.memcheck315 ], [ %i.cw, %.lr.ph.i.i.preheader ], [ %i.fb, %middle.block336 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader381, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader381 ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.ph382, %.lr.ph.i.i.preheader381 ]
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !367, !noalias !5916
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !367, !noalias !5916
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !367, !noalias !5916
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !367, !noalias !5916
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ba
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !5897

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block370, %middle.block336, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ba, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cw, %bb.t ], [ %i.du, %.lr.ph.i28 ], [ %.sroa.066.0, %bb.v ], [ %.sroa.066.0, %bb.w ], [ %i.dk, %middle.block ], [ %i.fa, %middle.block336 ], [ %i.ef, %middle.block370 ], [ %i.ep, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !571
  %i.fn = sub i64 0, %.018.lcssa.i
  %i.fo = getelementptr inbounds i8, ptr %i.r, i64 %i.fn ; 3 uses
  %.not.i32 = icmp eq ptr %i.ba, %.sroa.071.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  br i1 %.not23, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -1 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !464
  %i.fs = load i8, ptr %i.fq, align 1, !tbaa !464
  store i8 %i.fs, ptr %i.fp, align 1, !tbaa !464
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !464
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ft = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.fu = icmp eq ptr %i.fo, %i.ft
  br i1 %i.fu, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = icmp eq ptr %i.ft, %i.r
  br i1 %i.fv, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.r, %bb.y ], [ %i.fo, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !582
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  store ptr %i.ba, ptr %3, align 8, !tbaa !571
  %i.fw = load ptr, ptr %1, align 8, !tbaa !582
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -1 ; 2 uses
  store ptr %i.fx, ptr %1, align 8, !tbaa !582
  %i.fy = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fy to i64
  %i.fz = add i64 %.0140, %.neg
  %i.ga = icmp ne i64 %i.az, 0
  %.neg24 = sext i1 %i.ga to i64
  %i.gb = add i64 %.sroa.speculated, %.neg24
  %i.gc = add i64 %.097139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gc, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5898

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gd = load ptr, ptr %6, align 8, !tbaa !571
  store ptr %i.gd, ptr %0, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 6 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = add i64 %i.k, %3
  %i.m = shl i64 %i.l, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.m
  %i.n = add i64 %.idx104, -4                     ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 28
  %stride.check = icmp slt i64 %.idx104, 0
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.q = shl i64 %n.vec, 2                        ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit
  %.idx129 = shl i64 %i.bd, 3                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.bd, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.t = icmp eq ptr %.1101, %i.s
  br i1 %i.t, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.u = add i64 %.idx129, -8                     ; 2 uses
  %i.v = lshr exact i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.y, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.x, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !5917

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.y, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.x, %.lr.ph124.split.us.preheader.prol ]
  %i.z = icmp ult i64 %i.u, 56
  br i1 %i.z, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.ac, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.ab, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %2
  %i.ac = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ac, %i.r
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !5918

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.be, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.bz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cb, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %i.ad = icmp ult i64 %.072115, %.val107109
  br i1 %i.ad, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.as, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ar, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ae = mul i64 %.02226.i, %2
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ae
  %i.ag = mul i64 %.027.i, %2
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ag
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ak = load i32, ptr %i.ah, align 4, !tbaa !367 ; 2 uses
  %i.al = load i32, ptr %i.af, align 4, !tbaa !367 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp slt i32 %i.al, %i.ak
  br i1 %i.an, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !375
  %i.ap = load i64, ptr %i.ai, align 8, !tbaa !375
  %i.aq = icmp ult i64 %i.ao, %i.ap
  %cond.fr.i = freeze i1 %i.aq
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ar = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.as = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !72

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ar, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.at = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.au = add i64 %.022.lcssa.i, 2
  %i.av = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.au) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %.099111)
  %i.aw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.aw, 2
  %i.ax = getelementptr i8, ptr %.071116, i64 %.idx ; 6 uses
  %i.ay = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.ay
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.az = load i32, ptr %i.e, align 4, !tbaa !367
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !367
  %i.bb = icmp sge i32 %i.az, %i.ba
  %spec.select = zext i1 %i.bb to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bc = zext nneg i8 %.1 to i64
  %i.bd = add i64 %.075112, %i.bc                 ; 3 uses
  %i.be = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bf = shl i64 %.022.lcssa.i, 2
  %i.bg = add i64 %i.bf, 4
  %i.bh = mul i64 %2, %i.bg
  %scevgep161 = getelementptr i8, ptr %.071116, i64 %i.bh
  %bound0 = icmp ult ptr %i.d, %scevgep161
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bi = or i1 %found.conflict, %stride.check
  br i1 %i.bi, label %.lr.ph.i.i.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bj = getelementptr i8, ptr %i.ax, i64 %i.q
  %i.bk = getelementptr i8, ptr %.071116, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bl ; 3 uses
  %next.gep162 = getelementptr i8, ptr %.071116, i64 %i.bl ; 3 uses
  %i.bm = getelementptr i8, ptr %next.gep162, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep162, align 4, !tbaa !367, !alias.scope !5925, !noalias !5926
  %wide.load163 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !367, !alias.scope !5925, !noalias !5926
  %i.bn = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load164 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !367, !alias.scope !5926
  %wide.load165 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !367, !alias.scope !5926
  store <4 x i32> %wide.load164, ptr %next.gep162, align 4, !tbaa !367, !alias.scope !5925, !noalias !5926
  store <4 x i32> %wide.load165, ptr %i.bm, align 4, !tbaa !367, !alias.scope !5925, !noalias !5926
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367, !alias.scope !5926
  store <4 x i32> %wide.load163, ptr %i.bn, align 4, !tbaa !367, !alias.scope !5926
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !5922

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader169

.lr.ph.i.i.preheader169:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.ax, %vector.memcheck ], [ %i.ax, %.lr.ph.i.i.preheader ], [ %i.bj, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader169, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader169 ] ; 3 uses
  %i.bp = load i32, ptr %.079.i.i, align 4, !tbaa !367
  %i.bq = load i32, ptr %.010.i.i, align 4, !tbaa !367
  store i32 %i.bq, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.bp, ptr %.010.i.i, align 4, !tbaa !367
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.br, %i.be
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i, !llvm.loop !5923

_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bt = load i64, ptr %i.at, align 8, !tbaa !375
  %i.bu = load i64, ptr %.073114, align 8, !tbaa !375
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !375
  store i64 %i.bt, ptr %.073114, align 8, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPiS1_EET0_T_S3_S2_.exit.i
  %i.bv = icmp eq ptr %i.at, %.0100110
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bw, ptr %i.at, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPiEEvT_S5_RS5_T0_S7_S7_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.by = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.by to i64
  %i.bz = add i64 %.072115, %.neg
  %i.ca = icmp ne i64 %i.av, 0
  %.neg78 = sext i1 %i.ca to i64
  %i.cb = add i64 %.sroa.speculated89, %.neg78
  %i.cc = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5924

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cd = trunc nuw i8 %i.cu to i1
  %i.ce = select i1 %i.cd, ptr %i.cw, ptr %i.cx
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cf = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ce, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.aa, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ch = ptrtoint ptr %i.e to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.cf, ptr noundef %i.e, ptr noundef %i.cg, i64 noundef %i.ck, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cl = phi i8 [ %i.cu, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.cy, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.cx, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cw, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cn = load i64, ptr %.0122, align 8, !tbaa !375
  %i.co = load i64, ptr %.1101, align 8, !tbaa !375
  %i.cp = icmp ult i64 %i.cn, %i.co
  %i.cq = zext i1 %i.cp to i8
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.ew = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol.loopexit:                      ; preds = %.lr.ph.i.i152.prol, %.lr.ph.i.i152.preheader
  %.010.i.i153.unr = phi ptr [ %7, %.lr.ph.i.i152.preheader ], [ %i.ez, %.lr.ph.i.i152.prol ]
  %.079.i.i154.unr = phi ptr [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.ey, %.lr.ph.i.i152.prol ]
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.fn, %.lr.ph.i.i152 ], [ %.010.i.i153.unr, %.lr.ph.i.i152.prol.loopexit ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.fm, %.lr.ph.i.i152 ], [ %.079.i.i154.unr, %.lr.ph.i.i152.prol.loopexit ] ; 5 uses
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !424
  %i.fc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !424
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !424
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !424
  %i.ff = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !424
  store i32 0, ptr %i.fh, align 4, !tbaa !424
  store i32 %i.ff, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !424
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !424
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !424
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !135

_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !495
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !495
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fo, ptr %10, align 8, !tbaa !610
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !610, !alias.scope !8958
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !610, !alias.scope !8959
  store ptr %i.h, ptr %14, align 8, !tbaa !610, !alias.scope !8960
  store ptr %7, ptr %15, align 8, !tbaa !610, !alias.scope !8961
  store ptr %i.ep, ptr %16, align 8, !tbaa !610, !alias.scope !8962
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test11movable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.175") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !610
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fs = load ptr, ptr %10, align 8, !tbaa !610  ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !495 ; 3 uses
  %.not27.i = icmp eq ptr %i.ft, %i.fs
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa292, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.gi, %bb.ab ], [ %i.fr, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %i.fu = icmp eq ptr %.0108.lcssa293, %.01929.i
  br i1 %i.fu, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ]
  %.057.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ]
  %i.fv = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 5 uses
  %i.fw = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !424
  store i32 0, ptr %i.fv, align 4, !tbaa !424
  %i.fy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !424
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !424
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !424
  %i.gb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !137

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !424
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !424
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !424 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !424
  %i.gk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !424
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !424
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !424
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !424
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !424
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !424
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !8957

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.az, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !8963

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 28
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !8964

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !424 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !424 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !424
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !424
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !136

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !424
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !424
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !424
  store i32 0, ptr %.071116, align 4, !tbaa !424
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !424
  store i32 %i.be, ptr %.071116, align 4, !tbaa !424
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !424
  %i.bf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i, align 4, !tbaa !424
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !424
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !424
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !424
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !424
  store i32 0, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.bn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !424
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !424
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !135

_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !424
  store i32 0, ptr %i.ap, align 4, !tbaa !424
  %i.bx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bz = load i32, ptr %.073114, align 4, !tbaa !424
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !424
  store i32 %i.bw, ptr %.073114, align 4, !tbaa !424
  %i.ca = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.cc = icmp eq ptr %i.ap, %.0100110
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cd, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test11movable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cf = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cf to i64
  %i.cg = add i64 %.072115, %.neg
  %i.ch = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.ch to i64
  %i.ci = add i64 %.sroa.speculated89, %.neg78
  %i.cj = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8965

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ck = trunc nuw i8 %i.db to i1
  %i.cl = select i1 %i.ck, ptr %i.dd, ptr %i.de
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cm = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cl, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.co = ptrtoint ptr %i.e to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.cm, ptr noundef %i.e, ptr noundef %i.cn, i64 noundef %i.cr, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ]
  %i.ct = phi i8 [ %i.dc, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.df, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.de, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dd, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cu = load i32, ptr %.0122, align 4, !tbaa !424
  %i.cv = load i32, ptr %.1101, align 4, !tbaa !424
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_:bb.a
  store i32 %i.k, ptr %i.g, align 4, !tbaa !424
  %storemerge37.in48 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %storemerge3749 = add i32 %storemerge37.in48, -1
  store i32 %storemerge3749, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.q = load ptr, ptr %2, align 8, !tbaa !610    ; 2 uses
  %.not3550 = icmp eq ptr %i.i, %i.q
  br i1 %.not3550, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !610
  %i.s = icmp eq ptr %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.lr.ph108

.lr.ph:                                           ; preds = %bb.f
  %i.t = load ptr, ptr %4, align 8, !tbaa !610
  %i.u = icmp eq ptr %.sroa.024.1, %i.t
  br i1 %i.u, label %.lr.ph.i.i.preheader.loopexit, label %.lr.ph108, !llvm.loop !9852

.lr.ph.i.i.preheader.loopexit:                    ; preds = %.lr.ph
  store ptr %.sink, ptr %0, align 8, !tbaa !610, !noalias !418
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.loopexit, %.lr.ph.preheader
  %.lcssa103 = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.i.i.preheader.loopexit ]
  %.lcssa101 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.029.053.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph.i.i.preheader.loopexit ] ; 2 uses
  %.sroa.024.052.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.020.051.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph.i.i.preheader.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.029.053.lcssa, %.lr.ph.i.i.preheader ]
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.lcssa101, %.lr.ph.i.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !424, !noalias !9863
  store i32 0, ptr %i.w, align 4, !tbaa !424, !noalias !9863
  %i.z = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !9863
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !9863
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !424, !noalias !9863
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !424, !noalias !9863
  store i32 %i.y, ptr %i.x, align 4, !tbaa !424, !noalias !9863
  %i.ac = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !9863
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !9863
  %.not.i.i = icmp eq ptr %i.w, %.lcssa103
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !144

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !610
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.051107 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.052106 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.029.053105 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ba, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %.sink, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.020.051107, i64 -4 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.029.053105, i64 -4 ; 4 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !424
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !424
  %.not36 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.ak = getelementptr inbounds i8, ptr %.sroa.024.052106, i64 -4 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !610, !noalias !9864
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !424
  store i32 0, ptr %i.am, align 4, !tbaa !424
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !424
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !424
  store i32 0, ptr %i.al, align 4, !tbaa !424
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !424
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !424
  store i32 0, ptr %i.ag, align 4, !tbaa !424
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !424
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !424
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !424
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph108
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !610, !noalias !9865
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !424
  store i32 0, ptr %i.au, align 4, !tbaa !424
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !424
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !424
  store i32 0, ptr %i.at, align 4, !tbaa !424
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !424
  store i32 %i.az, ptr %i.at, align 4, !tbaa !424
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !424
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.at, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %.sink = phi ptr [ %i.au, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.051107, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.052106, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.029.053105, %bb.d ] ; 3 uses
  %storemerge37.in = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %storemerge37 = add i32 %storemerge37.in, -1
  store i32 %storemerge37, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bb = load ptr, ptr %2, align 8, !tbaa !610   ; 2 uses
  %.not35 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not35, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !9852

.loopexit.loopexit:                               ; preds = %bb.f
  store ptr %.sink, ptr %0, align 8, !tbaa !610, !noalias !418
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.047 = phi ptr [ %.sroa.020.051.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %.loopexit.loopexit ]
  %.sroa.024.045 = phi ptr [ %.sroa.024.052.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %.loopexit.loopexit ]
  %.sroa.029.043 = phi ptr [ %.sroa.029.053.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %.loopexit.loopexit ]
  store ptr %.sroa.024.045, ptr %3, align 8, !tbaa !610
  store ptr %.sroa.029.043, ptr %6, align 8, !tbaa !610
  store ptr %.sroa.020.047, ptr %5, align 8, !tbaa !610
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77118 = icmp samesign eq i64 %i.az, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.q = add i64 %.075111, -1
  %i.r = zext nneg i8 %.1 to i64
  %i.s = add i64 %i.q, %i.r
  %xtraiter162 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.u, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.t, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter162
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !9866

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.u, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.t, %.lr.ph123.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.y, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.x, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !9867

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072114, %.val106108
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.af = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !424 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !424 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !464
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !464
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !171

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099110)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !424
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !424
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075111, %i.ay                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071115, align 4, !tbaa !424
  store i32 0, ptr %.071115, align 4, !tbaa !424
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !424
  store i32 %i.be, ptr %.071115, align 4, !tbaa !424
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !424
  %i.bf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071115, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i, align 4, !tbaa !424
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !424
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !424
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !424
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !424
  store i32 0, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.bn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !424
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !424
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !135

_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i8, ptr %i.ap, align 1, !tbaa !464
  %i.bx = load i8, ptr %.073113, align 1, !tbaa !464
  store i8 %i.bx, ptr %i.ap, align 1, !tbaa !464
  store i8 %i.bw, ptr %.073113, align 1, !tbaa !464
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100109
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cb = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072114, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !9868

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cq = load i8, ptr %.0121, align 1, !tbaa !464
  %i.cr = load i8, ptr %.1101, align 1, !tbaa !464
  %i.cs = icmp ult i8 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.cv, ptr noundef nonnull %i.a)
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test11movable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a

.thread85:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread85, %.lr.ph.i25
  %.sroa.051.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread85 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !424, !noalias !10123
  store i32 0, ptr %i.by, align 4, !tbaa !424, !noalias !10123
  %i.cb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10123
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10123
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !424, !noalias !10123
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !424, !noalias !10123
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !424, !noalias !10123
  %i.ce = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10123
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10123
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !144

.thread86:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread86, %.lr.ph.i26
  %.sroa.045.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread86 ]
  %.sroa.044.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread86 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread86 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !424, !noalias !10124
  store i32 0, ptr %i.cj, align 4, !tbaa !424, !noalias !10124
  %i.cl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10124
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10124
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !424, !noalias !10124
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !424, !noalias !10124
  store i32 0, ptr %i.ci, align 4, !tbaa !424, !noalias !10124
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !424, !noalias !10124
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !424, !noalias !10124
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !424, !noalias !10124
  %i.cp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10124
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10124
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !153

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !424, !noalias !10125
  store i32 0, ptr %i.cs, align 4, !tbaa !424, !noalias !10125
  %i.cv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10125
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10125
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !424, !noalias !10125
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !424, !noalias !10125
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !424, !noalias !10125
  %i.cy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10125
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10125
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !144

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread86 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !610
  %i.db = load ptr, ptr %1, align 8, !tbaa !582   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !464
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !464
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !464
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !464
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !582
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !610
  %i.dl = load ptr, ptr %1, align 8, !tbaa !582
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !582
  %i.dn = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0100, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dr = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10118

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !610
  store ptr %i.ds, ptr %0, align 8, !tbaa !610
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.idx129 = shl i64 %i.az, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -8                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !10126

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 56
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !10127

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !424 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !424 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !375
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !375
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !138

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !424
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !424
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !424
  store i32 0, ptr %.071116, align 4, !tbaa !424
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !424
  store i32 %i.be, ptr %.071116, align 4, !tbaa !424
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !424
  %i.bf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i, align 4, !tbaa !424
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !424
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !424
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !424
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !424
  store i32 0, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.bn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !424
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !424
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !424
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !135

_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !375
  %i.bx = load i64, ptr %.073114, align 8, !tbaa !375
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !375
  store i64 %i.bw, ptr %.073114, align 8, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100110
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test11movable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cb = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072115, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10128

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cq = load i64, ptr %.0122, align 8, !tbaa !375
  %i.cr = load i64, ptr %.1101, align 8, !tbaa !375
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.fn = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.fo = add i32 %i.fn, -1
  store i32 %i.fo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.preheader.i.i156
  %.unr313 = phi i32 [ %i.fi, %.lr.ph.preheader.i.i156 ], [ %i.fn, %.lr.ph.i.i158.prol ]
  %.010.i.i159.unr = phi ptr [ %7, %.lr.ph.preheader.i.i156 ], [ %i.fq, %.lr.ph.i.i158.prol ]
  %.079.i.i160.unr = phi ptr [ %i.h, %.lr.ph.preheader.i.i156 ], [ %i.fp, %.lr.ph.i.i158.prol ]
  %i.fr = icmp eq i64 %i.fj, 0
  br i1 %i.fr, label %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163, label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158
  %i.fs = phi i32 [ %i.fv, %.lr.ph.i.i158 ], [ %.unr313, %.lr.ph.i.i158.prol.loopexit ]
  %.010.i.i159 = phi ptr [ %i.gd, %.lr.ph.i.i158 ], [ %.010.i.i159.unr, %.lr.ph.i.i158.prol.loopexit ] ; 4 uses
  %.079.i.i160 = phi ptr [ %i.gc, %.lr.ph.i.i158 ], [ %.079.i.i160.unr, %.lr.ph.i.i158.prol.loopexit ] ; 4 uses
  %i.ft = load i32, ptr %.079.i.i160, align 4, !tbaa !505
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fu = load i32, ptr %.010.i.i159, align 4, !tbaa !505
  store i32 %i.fu, ptr %.079.i.i160, align 4, !tbaa !505
  store i32 %i.ft, ptr %.010.i.i159, align 4, !tbaa !505
  %i.fv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.fw = add i32 %i.fv, -1
  store i32 %i.fw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.fx = getelementptr inbounds nuw i8, ptr %.079.i.i160, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.010.i.i159, i64 4 ; 2 uses
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !505
  store i32 %i.fv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !505
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !505
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !505
  %i.gb = add i32 %i.fv, -1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i160, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.010.i.i159, i64 8
  %.not.i.i161.1 = icmp eq ptr %i.gc, %i.fh
  br i1 %.not.i.i161.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163, label %.lr.ph.i.i158, !llvm.loop !192

_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163: ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit154
  store ptr %7, ptr %i.a, align 8, !tbaa !516
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.ge, ptr %i.b, align 8, !tbaa !516
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.ge, ptr %10, align 8, !tbaa !630
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %4
  store ptr %i.gg, ptr %12, align 8, !tbaa !630, !alias.scope !11337
  store ptr %.0197.lcssa293, ptr %13, align 8, !tbaa !630, !alias.scope !11338
  store ptr %i.h, ptr %14, align 8, !tbaa !630, !alias.scope !11339
  store ptr %7, ptr %15, align 8, !tbaa !630, !alias.scope !11340
  store ptr %i.fh, ptr %16, align 8, !tbaa !630, !alias.scope !11341
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0201.lcssa292, i64 noundef 0, i64 noundef %.0201.lcssa292, i1 noundef zeroext true)
  %i.gh = load ptr, ptr %11, align 8, !tbaa !630
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.gi = load ptr, ptr %10, align 8, !tbaa !630  ; 2 uses
  %i.gj = load ptr, ptr %i.a, align 8, !tbaa !516 ; 3 uses
  %.not27.i = icmp eq ptr %i.gj, %i.gi
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163, %bb.ab
  %.030.i = phi ptr [ %.1.i165, %bb.ab ], [ %i.gi, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163 ] ; 3 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa294, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163 ] ; 3 uses
  %.02128.i = phi ptr [ %i.gy, %bb.ab ], [ %i.gh, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163 ] ; 2 uses
  %i.gk = icmp eq ptr %.0108.lcssa295, %.01929.i
  br i1 %i.gk, label %.lr.ph.preheader.i.i.i, label %bb.y

.lr.ph.preheader.i.i.i:                           ; preds = %.lr.ph.i164
  %.pre.i.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gl = add i32 %.pre.i.i.i, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.gm = phi i32 [ %i.gr, %.lr.ph.i.i.i ], [ %i.gl, %.lr.ph.preheader.i.i.i ]
  %.08.i.i.i = phi ptr [ %i.go, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.preheader.i.i.i ]
  %.057.i.i.i = phi ptr [ %i.gn, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.preheader.i.i.i ]
  %i.gn = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !505
  store i32 %i.gm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !505
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !505
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !505
  %i.gr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %.not.i.i.i = icmp eq ptr %i.gj, %i.gn
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !194

bb.y:                                             ; preds = %.lr.ph.i164
  %i.gt = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gv = load i32, ptr %i.gt, align 4, !tbaa !505
  %i.gw = load i32, ptr %i.gu, align 4, !tbaa !505
  %i.gx = icmp slt i32 %i.gv, %i.gw
  %i.gy = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 4 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !505 ; 2 uses
  %i.ha = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  br i1 %i.gx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hc = load i32, ptr %i.gu, align 4, !tbaa !505
  store i32 %i.hc, ptr %i.gy, align 4, !tbaa !505
  store i32 %i.gz, ptr %i.gu, align 4, !tbaa !505
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.hd = load i32, ptr %i.gt, align 4, !tbaa !505
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !505
  store i32 %i.gz, ptr %i.gt, align 4, !tbaa !505
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.gu, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i165 = phi ptr [ %.030.i, %bb.z ], [ %i.gt, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %.not.i166 = icmp eq ptr %i.gj, %.1.i165
  br i1 %.not.i166, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i164, !llvm.loop !11336

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.az, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !11342

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 28
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !11343

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.ch, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !505 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !505 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !505
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !505
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !193

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !505
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !505
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bb = add i32 %.pre.i.i, 1                    ; 2 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.bc = load i32, ptr %.071116, align 4, !tbaa !505
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !505
  store i32 %i.bd, ptr %.071116, align 4, !tbaa !505
  store i32 %i.bc, ptr %i.at, align 4, !tbaa !505
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bg = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.bb, %.lr.ph.preheader.i.i ], [ %i.be, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.preheader.i.i ], [ %i.bh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.preheader.i.i ], [ %i.bg, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bi = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bk = load i32, ptr %.010.i.i, align 4, !tbaa !505
  store i32 %i.bk, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !505
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bl, -1
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bs, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !192

_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bu = load i32, ptr %i.ap, align 4, !tbaa !505
  %i.bv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bx = load i32, ptr %.073114, align 4, !tbaa !505
  store i32 %i.bx, ptr %i.ap, align 4, !tbaa !505
  store i32 %i.bu, ptr %.073114, align 4, !tbaa !505
  %i.by = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ca = icmp eq ptr %i.ap, %.0100110
  br i1 %i.ca, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cb, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test12copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cd = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cd to i64
  %i.ce = add i64 %.072115, %.neg
  %i.cf = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cf to i64
  %i.cg = add i64 %.sroa.speculated89, %.neg78
  %i.ch = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11344

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ci = trunc nuw i8 %i.cz to i1
  %i.cj = select i1 %i.ci, ptr %i.db, ptr %i.dc
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.ck = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cj, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.cm = ptrtoint ptr %i.e to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ck, ptr noundef %i.e, ptr noundef %i.cl, i64 noundef %i.cp, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cq = phi i8 [ %i.cz, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cr = phi i8 [ %i.da, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.dd, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.dc, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.db, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cs = load i32, ptr %.0122, align 4, !tbaa !505
  %i.ct = load i32, ptr %.1101, align 4, !tbaa !505
  %i.cu = icmp slt i32 %i.cs, %i.ct
  %i.cv = zext i1 %i.cu to i8
  %i.cw = icmp eq i8 %i.cr, %i.cv
  br i1 %i.cw, label %bb.l, label %bb.k
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_:bb.a
  %i.cn = load ptr, ptr %1, align 8, !tbaa !630   ; 4 uses
  %.not.i22 = icmp eq ptr %.sroa.060.1, %i.cm
  %.not17.i = icmp eq ptr %.sroa.066.0, %.sroa.070.1
  %or.cond79 = select i1 %.not.i22, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %5, align 8, !tbaa !630, !noalias !11907
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.031.0 = phi ptr [ %i.cn, %bb.s ], [ %i.cu, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.co, %bb.s ], [ %i.cp, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.060.1, %bb.s ], [ %i.ct, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.070.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.031.1 = phi ptr [ %.sroa.031.0, %.outer.i ], [ %i.dc, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.cq, %bb.u ] ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 6 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !505, !noalias !11907
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !505, !noalias !11907
  %.not26.i = icmp slt i32 %i.cr, %i.cs
  br i1 %.not26.i, label %bb.u, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.ct = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.031.1, i64 -4 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !505, !noalias !11907
  %i.cw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.cy = load i32, ptr %i.cp, align 4, !tbaa !505, !noalias !11907
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !505, !noalias !11907
  %i.cz = load i32, ptr %i.ct, align 4, !tbaa !505, !noalias !11907
  store i32 %i.cz, ptr %i.cp, align 4, !tbaa !505, !noalias !11907
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !505, !noalias !11907
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %.not28.i19 = icmp eq ptr %i.ct, %i.cm
  br i1 %.not28.i19, label %.loopexit.i20, label %.outer.i, !llvm.loop !216

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds i8, ptr %.sroa.031.1, i64 -4 ; 4 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !505, !noalias !11907
  %i.de = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.dg = load i32, ptr %i.cq, align 4, !tbaa !505, !noalias !11907
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !505, !noalias !11907
  store i32 %i.dd, ptr %i.cq, align 4, !tbaa !505, !noalias !11907
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11907
  %.not27.i21 = icmp eq ptr %i.cq, %.sroa.066.0
  br i1 %.not27.i21, label %.loopexit.i20, label %bb.t, !llvm.loop !216

.loopexit.i20:                                    ; preds = %.split.i, %bb.u
  %.sroa.031.2 = phi ptr [ %i.dc, %bb.u ], [ %i.cu, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.cq, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.ct, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.cp, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !630, !noalias !11907
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.v
  %.pre152 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908
  %i.dj = add i32 %.pre152, 1
  br label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.w, %.preheader.i.preheader
  %.ph = phi i32 [ %i.dt, %bb.w ], [ %i.dj, %.preheader.i.preheader ]
  %.sroa.024.0.ph = phi ptr [ %i.dp, %bb.w ], [ %i.cn, %.preheader.i.preheader ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dr, %bb.w ], [ %.sroa.060.1, %.preheader.i.preheader ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.070.1, %.preheader.i.preheader ]
  %i.dk = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %i.dl = phi i32 [ %i.dx, %bb.x ], [ %.ph, %.preheader.i.outer ]
  %.sroa.024.0 = phi ptr [ %i.dp, %bb.x ], [ %.sroa.024.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.dm, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 6 uses
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !505, !noalias !11908
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !505, !noalias !11908
  %.not18.i = icmp slt i32 %i.dn, %i.do
  %i.dp = getelementptr inbounds i8, ptr %.sroa.024.0, i64 -4 ; 7 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !505, !noalias !11908 ; 2 uses
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.dr = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 5 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !505, !noalias !11908
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !505, !noalias !11908
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !505, !noalias !11908
  %i.dt = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908 ; 2 uses
  %i.du = add i32 %i.dt, -1
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908
  %i.dv = icmp eq ptr %i.dr, %i.cm
  br i1 %i.dv, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !209

bb.x:                                             ; preds = %.preheader.i
  %i.dw = load i32, ptr %i.dm, align 4, !tbaa !505, !noalias !11908
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !505, !noalias !11908
  store i32 %i.dq, ptr %i.dm, align 4, !tbaa !505, !noalias !11908
  %i.dx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908 ; 2 uses
  %i.dy = add i32 %i.dx, -1
  store i32 %i.dy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !11908
  %i.dz = icmp eq ptr %i.dm, %.sroa.066.0
  br i1 %i.dz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i, !llvm.loop !209

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i20, %bb.r
  %.sroa.038.0 = phi ptr [ %.sroa.031.2, %.loopexit.i20 ], [ %i.cn, %bb.r ], [ %i.cn, %bb.v ], [ %i.dp, %bb.w ], [ %i.dp, %bb.x ]
  %.sroa.060.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i20 ], [ %.sroa.060.1, %bb.r ], [ %.sroa.060.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.dr, %bb.w ]
  %.sroa.070.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i20 ], [ %.sroa.070.1, %bb.r ], [ %.sroa.070.1, %bb.v ], [ %i.dm, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.038.0, ptr %1, align 8, !tbaa !630
  store ptr %.sroa.070.2, ptr %6, align 8, !tbaa !630
  store ptr %.sroa.066.0, ptr %7, align 8, !tbaa !630
  store ptr %.sroa.060.2, ptr %3, align 8, !tbaa !630
  %i.ea = load ptr, ptr %1, align 8, !tbaa !630
  store ptr %i.ea, ptr %0, align 8, !tbaa !630
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77118 = icmp samesign eq i64 %i.az, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.q = add i64 %.075111, -1
  %i.r = zext nneg i8 %.1 to i64
  %i.s = add i64 %i.q, %i.r
  %xtraiter162 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.u, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.t, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter162
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !11909

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.u, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.t, %.lr.ph123.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.y, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.x, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !11910

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.by, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072114, %.val106108
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.af = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !505 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !505 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !464
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !464
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !228

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099110)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !505
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !505
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075111, %i.ay                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bb = add i32 %.pre.i.i, 1                    ; 2 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.bc = load i32, ptr %.071115, align 4, !tbaa !505
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !505
  store i32 %i.bd, ptr %.071115, align 4, !tbaa !505
  store i32 %i.bc, ptr %i.at, align 4, !tbaa !505
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bg = getelementptr inbounds nuw i8, ptr %.071115, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.bb, %.lr.ph.preheader.i.i ], [ %i.be, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.preheader.i.i ], [ %i.bh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071115, %.lr.ph.preheader.i.i ], [ %i.bg, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bi = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bk = load i32, ptr %.010.i.i, align 4, !tbaa !505
  store i32 %i.bk, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !505
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bl, -1
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bs, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !192

_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bu = load i8, ptr %i.ap, align 1, !tbaa !464
  %i.bv = load i8, ptr %.073113, align 1, !tbaa !464
  store i8 %i.bv, ptr %i.ap, align 1, !tbaa !464
  store i8 %i.bu, ptr %.073113, align 1, !tbaa !464
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = icmp eq ptr %i.ap, %.0100109
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bx, ptr %i.ap, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.bz = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.bz to i64
  %i.ca = add i64 %.072114, %.neg
  %i.cb = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cb to i64
  %i.cc = add i64 %.sroa.speculated89, %.neg78
  %i.cd = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11911

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.ce = trunc nuw i8 %i.cv to i1
  %i.cf = select i1 %i.ce, ptr %i.cx, ptr %i.cy
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.cg = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cf, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ci = ptrtoint ptr %i.e to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.cg, ptr noundef %i.e, ptr noundef %i.ch, i64 noundef %i.cl, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cn = phi i8 [ %i.cw, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.cz, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.cy, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cx, %bb.l ], [ %1, %.lr.ph123 ]
  %i.co = load i8, ptr %.0121, align 1, !tbaa !464
  %i.cp = load i8, ptr %.1101, align 1, !tbaa !464
  %i.cq = icmp ult i8 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i8
  %i.cs = icmp eq i8 %i.cn, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cu = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.ct, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !572, !range !417 ; 2 uses
  br label %bb.l

end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.preheader.i
  %.sroa.055.0 = phi ptr [ %i.bu, %.lr.ph.preheader.i ], [ %i.cb, %.lr.ph.i25 ]
  %i.by = phi i32 [ %i.bx, %.lr.ph.preheader.i ], [ %i.ce, %.lr.ph.i25 ]
  %i.bz = phi ptr [ %i.bw, %.lr.ph.preheader.i ], [ %i.ca, %.lr.ph.i25 ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.055.0, i64 -4 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !505, !noalias !12100
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12100
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !505, !noalias !12100
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !505, !noalias !12100
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !505, !noalias !12100
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12100 ; 2 uses
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12100
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !201

.thread90:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  %.pre124 = load ptr, ptr %12, align 8, !tbaa !630 ; 3 uses
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.preheader.i26

.lr.ph.preheader.i26:                             ; preds = %.thread90
  %.pre.i27 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12101
  %i.cg = add i32 %.pre.i27, 1
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.preheader.i26
  %.sroa.049.0 = phi ptr [ %.pre124, %.lr.ph.preheader.i26 ], [ %i.ck, %.lr.ph.i28 ]
  %.sroa.048.0 = phi ptr [ %i.bt, %.lr.ph.preheader.i26 ], [ %i.cl, %.lr.ph.i28 ]
  %i.ch = phi i32 [ %i.cg, %.lr.ph.preheader.i26 ], [ %i.cp, %.lr.ph.i28 ]
  %i.ci = phi ptr [ %i.bu, %.lr.ph.preheader.i26 ], [ %i.cj, %.lr.ph.i28 ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.048.0, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !505, !noalias !12101
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12101
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !505, !noalias !12101
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !505, !noalias !12101
  %i.co = load i32, ptr %i.cj, align 4, !tbaa !505, !noalias !12101
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !505, !noalias !12101
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !505, !noalias !12101
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12101 ; 2 uses
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12101
  %.not.i29 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i29, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !210

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %.pre2.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12102
  %i.cr = add i32 %.pre2.i.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %storemerge.i, %.lr.ph.preheader.i.i ], [ %i.cv, %.lr.ph.i.i ]
  %i.cs = phi i32 [ %i.cr, %.lr.ph.preheader.i.i ], [ %i.cy, %.lr.ph.i.i ]
  %i.ct = phi ptr [ %i.bq, %.lr.ph.preheader.i.i ], [ %i.cu, %.lr.ph.i.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !505, !noalias !12102
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12102
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !505, !noalias !12102
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !505, !noalias !12102
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !505, !noalias !12102
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12102 ; 2 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12102
  %.not.i.i30 = icmp eq ptr %i.cu, %i.z
  br i1 %.not.i.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !201

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i28, %.lr.ph.i25, %.lr.ph.i.i, %.thread90, %bb.l, %.thread89, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread89 ], [ %i.ac, %.lr.ph.i.i ], [ %.pre124, %.thread90 ], [ %i.ac, %bb.l ], [ %.pre124, %.lr.ph.i28 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bu, %.thread89 ], [ %i.cv, %.lr.ph.i.i ], [ %i.bt, %.thread90 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i28 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !630
  %i.db = load ptr, ptr %1, align 8, !tbaa !582   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i31 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i31, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !464
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !464
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !464
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !464
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !582
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !630
  %i.dl = load ptr, ptr %1, align 8, !tbaa !582
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !582
  %i.dn = icmp ne i64 %.0104, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0104, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dr = add i64 %.088103, -1                    ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12095

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !630
  store ptr %i.ds, ptr %0, align 8, !tbaa !630
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.idx129 = shl i64 %i.az, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -8                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !12103

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 56
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !12104

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.by, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cd, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !505 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !505 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !375
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !375
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !195

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !505
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !505
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bb = add i32 %.pre.i.i, 1                    ; 2 uses
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.bc = load i32, ptr %.071116, align 4, !tbaa !505
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !505
  store i32 %i.bd, ptr %.071116, align 4, !tbaa !505
  store i32 %i.bc, ptr %i.at, align 4, !tbaa !505
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bg = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.bb, %.lr.ph.preheader.i.i ], [ %i.be, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.preheader.i.i ], [ %i.bh, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.preheader.i.i ], [ %i.bg, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.bi = phi i32 [ %i.bl, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %.010.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bk = load i32, ptr %.010.i.i, align 4, !tbaa !505
  store i32 %i.bk, ptr %.079.i.i, align 4, !tbaa !505
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !505
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bl, -1
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bs, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !192

_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bu = load i64, ptr %i.ap, align 8, !tbaa !375
  %i.bv = load i64, ptr %.073114, align 8, !tbaa !375
  store i64 %i.bv, ptr %i.ap, align 8, !tbaa !375
  store i64 %i.bu, ptr %.073114, align 8, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test12copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = icmp eq ptr %i.ap, %.0100110
  br i1 %i.bw, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bx, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.bz = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.bz to i64
  %i.ca = add i64 %.072115, %.neg
  %i.cb = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cb to i64
  %i.cc = add i64 %.sroa.speculated89, %.neg78
  %i.cd = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12105

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ce = trunc nuw i8 %i.cv to i1
  %i.cf = select i1 %i.ce, ptr %i.cx, ptr %i.cy
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cg = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cf, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ci = ptrtoint ptr %i.e to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.cg, ptr noundef %i.e, ptr noundef %i.ch, i64 noundef %i.cl, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cm = phi i8 [ %i.cv, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cn = phi i8 [ %i.cw, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.cz, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.cy, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cx, %bb.l ], [ %1, %.lr.ph124 ]
  %i.co = load i64, ptr %.0122, align 8, !tbaa !375
  %i.cp = load i64, ptr %.1101, align 8, !tbaa !375
  %i.cq = icmp ult i64 %i.co, %i.cp
  %i.cr = zext i1 %i.cq to i8
  %i.cs = icmp eq i8 %i.cn, %i.cr
  br i1 %i.cs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
  %i.cu = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070120, ptr noundef %.069121, ptr noundef %i.ct, ptr noundef nonnull %i.a)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !572, !range !417 ; 2 uses
  br label %bb.l
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol.loopexit:                      ; preds = %.lr.ph.i.i152.prol, %.lr.ph.i.i152.preheader
  %.010.i.i153.unr = phi ptr [ %7, %.lr.ph.i.i152.preheader ], [ %i.ez, %.lr.ph.i.i152.prol ]
  %.079.i.i154.unr = phi ptr [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.ey, %.lr.ph.i.i152.prol ]
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.fn, %.lr.ph.i.i152 ], [ %.010.i.i153.unr, %.lr.ph.i.i152.prol.loopexit ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.fm, %.lr.ph.i.i152 ], [ %.079.i.i154.unr, %.lr.ph.i.i152.prol.loopexit ] ; 5 uses
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !528
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !528
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !528
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !528
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !528
  store i32 0, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !528
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !528
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !250

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !539
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fo, ptr %10, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !649, !alias.scope !13493
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !649, !alias.scope !13494
  store ptr %i.h, ptr %14, align 8, !tbaa !649, !alias.scope !13495
  store ptr %7, ptr %15, align 8, !tbaa !649, !alias.scope !13496
  store ptr %i.ep, ptr %16, align 8, !tbaa !649, !alias.scope !13497
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.268") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !649
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fs = load ptr, ptr %10, align 8, !tbaa !649  ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !539 ; 3 uses
  %.not27.i = icmp eq ptr %i.ft, %i.fs
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa292, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.gi, %bb.ab ], [ %i.fr, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %i.fu = icmp eq ptr %.0108.lcssa293, %.01929.i
  br i1 %i.fu, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ]
  %.057.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ]
  %i.fv = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 5 uses
  %i.fw = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !528
  store i32 0, ptr %i.fv, align 4, !tbaa !528
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !528
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !528
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !528
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !253

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !528
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !528
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !528 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !528
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !528
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !528
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !528
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !528
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !528
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !528
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !13492

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.az, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !13498

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 28
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !13499

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !528
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !528
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !251

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !528
  store i32 0, ptr %.071116, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071116, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !528
  store i32 0, ptr %i.ap, align 4, !tbaa !528
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bz = load i32, ptr %.073114, align 4, !tbaa !528
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !528
  store i32 %i.bw, ptr %.073114, align 4, !tbaa !528
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.cc = icmp eq ptr %i.ap, %.0100110
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cd, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cf = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cf to i64
  %i.cg = add i64 %.072115, %.neg
  %i.ch = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.ch to i64
  %i.ci = add i64 %.sroa.speculated89, %.neg78
  %i.cj = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13500

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ck = trunc nuw i8 %i.db to i1
  %i.cl = select i1 %i.ck, ptr %i.dd, ptr %i.de
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cm = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cl, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.co = ptrtoint ptr %i.e to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.cm, ptr noundef %i.e, ptr noundef %i.cn, i64 noundef %i.cr, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ]
  %i.ct = phi i8 [ %i.dc, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.df, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.de, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dd, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cu = load i32, ptr %.0122, align 4, !tbaa !528
  %i.cv = load i32, ptr %.1101, align 4, !tbaa !528
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_:bb.a
  store i32 %i.k, ptr %i.g, align 4, !tbaa !528
  %storemerge37.in48 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge3749 = add i32 %storemerge37.in48, -1
  store i32 %storemerge3749, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.q = load ptr, ptr %2, align 8, !tbaa !649    ; 2 uses
  %.not3550 = icmp eq ptr %i.i, %i.q
  br i1 %.not3550, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !649
  %i.s = icmp eq ptr %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.lr.ph108

.lr.ph:                                           ; preds = %bb.f
  %i.t = load ptr, ptr %4, align 8, !tbaa !649
  %i.u = icmp eq ptr %.sroa.024.1, %i.t
  br i1 %i.u, label %.lr.ph.i.i.preheader.loopexit, label %.lr.ph108, !llvm.loop !14387

.lr.ph.i.i.preheader.loopexit:                    ; preds = %.lr.ph
  store ptr %.sink, ptr %0, align 8, !tbaa !649, !noalias !418
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.loopexit, %.lr.ph.preheader
  %.lcssa103 = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.i.i.preheader.loopexit ]
  %.lcssa101 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.029.053.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph.i.i.preheader.loopexit ] ; 2 uses
  %.sroa.024.052.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.020.051.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph.i.i.preheader.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.029.053.lcssa, %.lr.ph.i.i.preheader ]
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.lcssa101, %.lr.ph.i.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !528, !noalias !14398
  store i32 0, ptr %i.w, align 4, !tbaa !528, !noalias !14398
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14398
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14398
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !528, !noalias !14398
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !528, !noalias !14398
  store i32 %i.y, ptr %i.x, align 4, !tbaa !528, !noalias !14398
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14398
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14398
  %.not.i.i = icmp eq ptr %i.w, %.lcssa103
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !649
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.051107 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.052106 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.029.053105 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ba, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %.sink, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.020.051107, i64 -4 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.029.053105, i64 -4 ; 4 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !528
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !528
  %.not36 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.ak = getelementptr inbounds i8, ptr %.sroa.024.052106, i64 -4 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !649, !noalias !14399
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !528
  store i32 0, ptr %i.am, align 4, !tbaa !528
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !528
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !528
  store i32 0, ptr %i.al, align 4, !tbaa !528
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !528
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !528
  store i32 0, ptr %i.ag, align 4, !tbaa !528
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !528
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !528
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !528
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph108
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !649, !noalias !14400
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !528
  store i32 0, ptr %i.au, align 4, !tbaa !528
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !528
  store i32 0, ptr %i.at, align 4, !tbaa !528
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !528
  store i32 %i.az, ptr %i.at, align 4, !tbaa !528
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !528
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.at, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %.sink = phi ptr [ %i.au, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.051107, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.052106, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.029.053105, %bb.d ] ; 3 uses
  %storemerge37.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge37 = add i32 %storemerge37.in, -1
  store i32 %storemerge37, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bb = load ptr, ptr %2, align 8, !tbaa !649   ; 2 uses
  %.not35 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not35, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !14387

.loopexit.loopexit:                               ; preds = %bb.f
  store ptr %.sink, ptr %0, align 8, !tbaa !649, !noalias !418
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.047 = phi ptr [ %.sroa.020.051.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %.loopexit.loopexit ]
  %.sroa.024.045 = phi ptr [ %.sroa.024.052.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %.loopexit.loopexit ]
  %.sroa.029.043 = phi ptr [ %.sroa.029.053.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %.loopexit.loopexit ]
  store ptr %.sroa.024.045, ptr %3, align 8, !tbaa !649
  store ptr %.sroa.029.043, ptr %6, align 8, !tbaa !649
  store ptr %.sroa.020.047, ptr %5, align 8, !tbaa !649
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77118 = icmp samesign eq i64 %i.az, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.q = add i64 %.075111, -1
  %i.r = zext nneg i8 %.1 to i64
  %i.s = add i64 %i.q, %i.r
  %xtraiter162 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.u, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.t, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter162
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !14401

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.u, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.t, %.lr.ph123.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.y, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.x, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !14402

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072114, %.val106108
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.af = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !464
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !464
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !287

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099110)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075111, %i.ay                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071115, align 4, !tbaa !528
  store i32 0, ptr %.071115, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071115, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071115, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i8, ptr %i.ap, align 1, !tbaa !464
  %i.bx = load i8, ptr %.073113, align 1, !tbaa !464
  store i8 %i.bx, ptr %i.ap, align 1, !tbaa !464
  store i8 %i.bw, ptr %.073113, align 1, !tbaa !464
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100109
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cb = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072114, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14403

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cq = load i8, ptr %.0121, align 1, !tbaa !464
  %i.cr = load i8, ptr %.1101, align 1, !tbaa !464
  %i.cs = icmp ult i8 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.cv, ptr noundef nonnull %i.a)
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a

.thread85:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread85, %.lr.ph.i25
  %.sroa.051.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread85 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !528, !noalias !14658
  store i32 0, ptr %i.by, align 4, !tbaa !528, !noalias !14658
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14658
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14658
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !528, !noalias !14658
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !528, !noalias !14658
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !528, !noalias !14658
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14658
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14658
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !260

.thread86:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread86, %.lr.ph.i26
  %.sroa.045.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread86 ]
  %.sroa.044.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread86 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread86 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !528, !noalias !14659
  store i32 0, ptr %i.cj, align 4, !tbaa !528, !noalias !14659
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14659
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14659
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !528, !noalias !14659
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !528, !noalias !14659
  store i32 0, ptr %i.ci, align 4, !tbaa !528, !noalias !14659
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !528, !noalias !14659
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !528, !noalias !14659
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !528, !noalias !14659
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14659
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14659
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !269

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !528, !noalias !14660
  store i32 0, ptr %i.cs, align 4, !tbaa !528, !noalias !14660
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14660
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14660
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !528, !noalias !14660
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !528, !noalias !14660
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !528, !noalias !14660
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14660
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !14660
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread86 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !649
  %i.db = load ptr, ptr %1, align 8, !tbaa !582   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !464
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !464
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !464
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !464
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !582
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !649
  %i.dl = load ptr, ptr %1, align 8, !tbaa !582
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !582
  %i.dn = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0100, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dr = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14653

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !649
  store ptr %i.ds, ptr %0, align 8, !tbaa !649
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.idx129 = shl i64 %i.az, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -8                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !14661

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 56
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !14662

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !375
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !375
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !254

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !528
  store i32 0, ptr %.071116, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071116, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !375
  %i.bx = load i64, ptr %.073114, align 8, !tbaa !375
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !375
  store i64 %i.bw, ptr %.073114, align 8, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100110
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cb = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072115, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14663

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cq = load i64, ptr %.0122, align 8, !tbaa !375
  %i.cr = load i64, ptr %.1101, align 8, !tbaa !375
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_T3_T4_:bb.a
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ey = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol.loopexit:                      ; preds = %.lr.ph.i.i152.prol, %.lr.ph.i.i152.preheader
  %.010.i.i153.unr = phi ptr [ %7, %.lr.ph.i.i152.preheader ], [ %i.ez, %.lr.ph.i.i152.prol ]
  %.079.i.i154.unr = phi ptr [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.ey, %.lr.ph.i.i152.prol ]
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.fn, %.lr.ph.i.i152 ], [ %.010.i.i153.unr, %.lr.ph.i.i152.prol.loopexit ] ; 4 uses
  %.079.i.i154 = phi ptr [ %i.fm, %.lr.ph.i.i152 ], [ %.079.i.i154.unr, %.lr.ph.i.i152.prol.loopexit ] ; 5 uses
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !528
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !528
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !528
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !528
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !528
  store i32 0, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !528
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !528
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !250

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !539
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !539
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store ptr %i.fo, ptr %10, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !649, !alias.scope !16049
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !649, !alias.scope !16050
  store ptr %i.h, ptr %14, align 8, !tbaa !649, !alias.scope !16051
  store ptr %7, ptr %15, align 8, !tbaa !649, !alias.scope !16052
  store ptr %i.ep, ptr %16, align 8, !tbaa !649, !alias.scope !16053
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareINS5_16less_transparentES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SH_NS0_7swap_opEEET3_T_SK_T0_T1_RT2_SN_SJ_NS0_9iter_sizeISM_E4typeESR_SR_SR_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.268") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !649
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fs = load ptr, ptr %10, align 8, !tbaa !649  ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !539 ; 3 uses
  %.not27.i = icmp eq ptr %i.ft, %i.fs
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa292, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 3 uses
  %.02128.i = phi ptr [ %i.gi, %bb.ab ], [ %i.fr, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157 ] ; 2 uses
  %i.fu = icmp eq ptr %.0108.lcssa293, %.01929.i
  br i1 %i.fu, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ]
  %.057.i.i.i = phi ptr [ %i.fv, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ]
  %i.fv = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 5 uses
  %i.fw = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !528
  store i32 0, ptr %i.fv, align 4, !tbaa !528
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !528
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !528
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !528
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !253

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !528
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !528
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !528 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !528
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !528
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !528
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !528
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !528
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !528
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !528
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !16048

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SD_EEvT2_SE_SE_T1_SF_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.idx129 = shl i64 %i.az, 2                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -4                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !16054

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 28
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 32 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !16055

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !528
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !528
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit, label %.lr.ph.i, !llvm.loop !303

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_EENS0_9iter_sizeIT1_E4typeET_T0_SF_SH_SH_SH_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !528
  store i32 0, ptr %.071116, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071116, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !528
  store i32 0, ptr %i.ap, align 4, !tbaa !528
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bz = load i32, ptr %.073114, align 4, !tbaa !528
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !528
  store i32 %i.bw, ptr %.073114, align 4, !tbaa !528
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.cc = icmp eq ptr %i.ap, %.0100110
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.cd, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.073114, i64 4
  %i.cf = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cf to i64
  %i.cg = add i64 %.072115, %.neg
  %i.ch = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.ch to i64
  %i.ci = add i64 %.sroa.speculated89, %.neg78
  %i.cj = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cj, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16056

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.ck = trunc nuw i8 %i.db to i1
  %i.cl = select i1 %i.ck, ptr %i.dd, ptr %i.de
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.cm = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.cl, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.co = ptrtoint ptr %i.e to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.cm, ptr noundef %i.e, ptr noundef %i.cn, i64 noundef %i.cr, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ]
  %i.ct = phi i8 [ %i.dc, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.df, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.de, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dd, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cu = load i32, ptr %.0122, align 4, !tbaa !528
  %i.cv = load i32, ptr %.1101, align 4, !tbaa !528
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareINS5_16less_transparentES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_T_SM_RT0_SN_SO_RSL_T2_T3_:bb.a
  store i32 %i.k, ptr %i.g, align 4, !tbaa !528
  %storemerge37.in48 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge3749 = add i32 %storemerge37.in48, -1
  store i32 %storemerge3749, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.q = load ptr, ptr %2, align 8, !tbaa !649    ; 2 uses
  %.not3550 = icmp eq ptr %i.i, %i.q
  br i1 %.not3550, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !649
  %i.s = icmp eq ptr %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.lr.ph108

.lr.ph:                                           ; preds = %bb.f
  %i.t = load ptr, ptr %4, align 8, !tbaa !649
  %i.u = icmp eq ptr %.sroa.024.1, %i.t
  br i1 %i.u, label %.lr.ph.i.i.preheader.loopexit, label %.lr.ph108, !llvm.loop !16943

.lr.ph.i.i.preheader.loopexit:                    ; preds = %.lr.ph
  store ptr %.sink, ptr %0, align 8, !tbaa !649, !noalias !418
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.loopexit, %.lr.ph.preheader
  %.lcssa103 = phi ptr [ %i.q, %.lr.ph.preheader ], [ %i.bb, %.lr.ph.i.i.preheader.loopexit ]
  %.lcssa101 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.ba, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.029.053.lcssa = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.sroa.029.1, %.lr.ph.i.i.preheader.loopexit ] ; 2 uses
  %.sroa.024.052.lcssa = phi ptr [ %i.g, %.lr.ph.preheader ], [ %.sroa.024.1, %.lr.ph.i.i.preheader.loopexit ]
  %.sroa.020.051.lcssa = phi ptr [ %i.h, %.lr.ph.preheader ], [ %.sroa.020.1, %.lr.ph.i.i.preheader.loopexit ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.x, %.lr.ph.i.i ], [ %.sroa.029.053.lcssa, %.lr.ph.i.i.preheader ]
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i ], [ %.lcssa101, %.lr.ph.i.i.preheader ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !528, !noalias !16954
  store i32 0, ptr %i.w, align 4, !tbaa !528, !noalias !16954
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !16954
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !16954
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !528, !noalias !16954
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !528, !noalias !16954
  store i32 %i.y, ptr %i.x, align 4, !tbaa !528, !noalias !16954
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !16954
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !16954
  %.not.i.i = icmp eq ptr %i.w, %.lcssa103
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !649
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.051107 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.052106 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.029.053105 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ba, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %.sink, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.020.051107, i64 -4 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.029.053105, i64 -4 ; 4 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !528
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !528
  %.not36 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.ak = getelementptr inbounds i8, ptr %.sroa.024.052106, i64 -4 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !649, !noalias !16955
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !528
  store i32 0, ptr %i.am, align 4, !tbaa !528
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !528
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !528
  store i32 0, ptr %i.al, align 4, !tbaa !528
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !528
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !528
  store i32 0, ptr %i.ag, align 4, !tbaa !528
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !528
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !528
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !528
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph108
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !649, !noalias !16956
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !528
  store i32 0, ptr %i.au, align 4, !tbaa !528
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !528
  store i32 0, ptr %i.at, align 4, !tbaa !528
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !528
  store i32 %i.az, ptr %i.at, align 4, !tbaa !528
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !528
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.at, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %.sink = phi ptr [ %i.au, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.051107, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.052106, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.029.053105, %bb.d ] ; 3 uses
  %storemerge37.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %storemerge37 = add i32 %storemerge37.in, -1
  store i32 %storemerge37, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bb = load ptr, ptr %2, align 8, !tbaa !649   ; 2 uses
  %.not35 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not35, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !16943

.loopexit.loopexit:                               ; preds = %bb.f
  store ptr %.sink, ptr %0, align 8, !tbaa !649, !noalias !418
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.047 = phi ptr [ %.sroa.020.051.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %.loopexit.loopexit ]
  %.sroa.024.045 = phi ptr [ %.sroa.024.052.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %.loopexit.loopexit ]
  %.sroa.029.043 = phi ptr [ %.sroa.029.053.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %.loopexit.loopexit ]
  store ptr %.sroa.024.045, ptr %3, align 8, !tbaa !649
  store ptr %.sroa.029.043, ptr %6, align 8, !tbaa !649
  store ptr %.sroa.020.047, ptr %5, align 8, !tbaa !649
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.az ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77118 = icmp samesign eq i64 %i.az, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.q = add i64 %.075111, -1
  %i.r = zext nneg i8 %.1 to i64
  %i.s = add i64 %i.q, %i.r
  %xtraiter162 = and i64 %i.az, 7                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.u, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.t, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter162
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !16957

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.u, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.t, %.lr.ph123.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.s, 7
  br i1 %i.v, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.y, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.x, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !16958

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072114, %.val106108
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071115, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.af = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !464
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !464
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !333

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099110)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075111, %i.ay                 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071115, align 4, !tbaa !528
  store i32 0, ptr %.071115, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071115, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071115, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i8, ptr %i.ap, align 1, !tbaa !464
  %i.bx = load i8, ptr %.073113, align 1, !tbaa !464
  store i8 %i.bx, ptr %i.ap, align 1, !tbaa !464
  store i8 %i.bw, ptr %.073113, align 1, !tbaa !464
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100109
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cb = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072114, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16959

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge124

._crit_edge124:                                   ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader, %._crit_edge.thread, %._crit_edge124.loopexit129, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge124.loopexit129 ], [ %.069120.us.lcssa.unr, %.lr.ph123.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph123.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cq = load i8, ptr %.0121, align 1, !tbaa !464
  %i.cr = load i8, ptr %.1101, align 1, !tbaa !464
  %i.cs = icmp ult i8 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEEEET_SE_SE_SE_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.cv, ptr noundef nonnull %i.a)
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareINSA_16less_transparentESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a

.thread85:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread85, %.lr.ph.i25
  %.sroa.051.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread85 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !528, !noalias !17214
  store i32 0, ptr %i.by, align 4, !tbaa !528, !noalias !17214
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17214
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17214
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !528, !noalias !17214
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !528, !noalias !17214
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !528, !noalias !17214
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17214
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17214
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !260

.thread86:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread86, %.lr.ph.i26
  %.sroa.045.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread86 ]
  %.sroa.044.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread86 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread86 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !528, !noalias !17215
  store i32 0, ptr %i.cj, align 4, !tbaa !528, !noalias !17215
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17215
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17215
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !528, !noalias !17215
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !528, !noalias !17215
  store i32 0, ptr %i.ci, align 4, !tbaa !528, !noalias !17215
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !528, !noalias !17215
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !528, !noalias !17215
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !528, !noalias !17215
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17215
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17215
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !269

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !528, !noalias !17216
  store i32 0, ptr %i.cs, align 4, !tbaa !528, !noalias !17216
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17216
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17216
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !528, !noalias !17216
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !528, !noalias !17216
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !528, !noalias !17216
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17216
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !17216
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !260

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread86 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !649
  %i.db = load ptr, ptr %1, align 8, !tbaa !582   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !464
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !464
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !464
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !464
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !582
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !649
  %i.dl = load ptr, ptr %1, align 8, !tbaa !582
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !582
  %i.dn = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0100, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dr = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17209

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !649
  store ptr %i.ds, ptr %0, align 8, !tbaa !649
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 2                        ; 2 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = add i64 %.idx104, -4                     ; 2 uses
  %i.l = and i64 %i.k, 4
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  %i.m = icmp eq i64 %i.k, 0
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.idx129 = shl i64 %i.az, 3                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !572
  %.not77119 = icmp eq i64 %i.az, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.p = icmp eq ptr %.1101, %i.o
  br i1 %i.p, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.q = add i64 %.idx129, -8                     ; 2 uses
  %i.r = lshr exact i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, 1
  %xtraiter165 = and i64 %i.s, 7                  ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.u, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.t, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !17217

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.u, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.t, %.lr.ph124.split.us.preheader.prol ]
  %i.v = icmp ult i64 %i.q, 56
  br i1 %i.v, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.y, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.x, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %2
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %2 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %2
  %i.y = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.y, %i.n
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !17218

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.ba, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.az, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cf, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ce, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %i.z = icmp ult i64 %.072115, %.val107109
  br i1 %i.z, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ao, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.an, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.aa = mul i64 %.02226.i, %2
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.aa
  %i.ac = mul i64 %.027.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.071116, i64 %i.ac
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !528 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !528 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !375
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !375
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !304

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.an, %.thread24.i ] ; 4 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.aq = add i64 %.022.lcssa.i, 2
  %i.ar = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.aq) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 %.099111)
  %i.as = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx ; 5 uses
  %i.au = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.au
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.av = load i32, ptr %i.e, align 4, !tbaa !528
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  %i.ax = icmp sge i32 %i.av, %i.aw
  %spec.select = zext i1 %i.ax to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.ay = zext nneg i8 %.1 to i64
  %i.az = add i64 %.075112, %i.ay                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !528
  store i32 0, ptr %.071116, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.be, ptr %.071116, align 4, !tbaa !528
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !528
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %.071116, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.010.i.i.unr = phi ptr [ %i.at, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.prol ]
  br i1 %i.m, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.079.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !528
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !528
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !528
  store i32 0, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !528
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !528
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !528
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !250

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !375
  %i.bx = load i64, ptr %.073114, align 8, !tbaa !375
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !375
  store i64 %i.bw, ptr %.073114, align 8, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.by = icmp eq ptr %i.ap, %.0100110
  br i1 %i.by, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.bz, ptr %i.ap, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cb = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cb to i64
  %i.cc = add i64 %.072115, %.neg
  %i.cd = icmp ne i64 %i.ar, 0
  %.neg78 = sext i1 %i.cd to i64
  %i.ce = add i64 %.sroa.speculated89, %.neg78
  %i.cf = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17219

._crit_edge125.loopexit131:                       ; preds = %bb.l
  %i.cg = trunc nuw i8 %i.cx to i1
  %i.ch = select i1 %i.cg, ptr %i.cz, ptr %i.da
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader, %._crit_edge.thread, %._crit_edge125.loopexit131, %._crit_edge
  %i.ci = phi ptr [ %1, %._crit_edge ], [ %1, %._crit_edge.thread ], [ %i.ch, %._crit_edge125.loopexit131 ], [ %.069121.us.lcssa.unr, %.lr.ph124.split.us.preheader.prol.loopexit ], [ %i.w, %.lr.ph124.split.us.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %6
  %i.ck = ptrtoint ptr %i.e to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 2
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ci, ptr noundef %i.e, ptr noundef %i.cj, i64 noundef %i.cn, i64 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cq = load i64, ptr %.0122, align 8, !tbaa !375
  %i.cr = load i64, ptr %.1101, align 8, !tbaa !375
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
end_hunk_14
