Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_NS0_7swap_opES9_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !343
  store i32 0, ptr %i.ff, align 4, !tbaa !343
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !343
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !343
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !343
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !343
  store i32 0, ptr %i.fj, align 4, !tbaa !343
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !343
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !343
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !343
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 16
  %.not.i.i155.1 = icmp eq ptr %i.fn, %i.en
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157, label %.lr.ph.i.i152, !llvm.loop !105

_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !349
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.fp, ptr %10, align 8, !tbaa !479
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %4
  store ptr %i.fr, ptr %12, align 8, !tbaa !479, !alias.scope !6696
  store ptr %.0191.lcssa282, ptr %13, align 8, !tbaa !479, !alias.scope !6697
  store ptr %i.h, ptr %14, align 8, !tbaa !479, !alias.scope !6698
  store ptr %7, ptr %15, align 8, !tbaa !479, !alias.scope !6699
  store ptr %i.en, ptr %16, align 8, !tbaa !479, !alias.scope !6700
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEENS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEESB_SB_SB_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.129") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa281, i64 noundef 0, i64 noundef %.0195.lcssa281, i1 noundef zeroext true)
  %i.fs = load ptr, ptr %11, align 8, !tbaa !479
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ft = load ptr, ptr %10, align 8, !tbaa !479  ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !349 ; 3 uses
  %.not27.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ft, %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.gj, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157 ] ; 3 uses
  %i.fv = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 5 uses
  %i.fx = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !343
  store i32 0, ptr %i.fw, align 4, !tbaa !343
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !343
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !343
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !343
  %i.ga = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !343
  store i32 0, ptr %i.ga, align 4, !tbaa !343
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !343
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !343
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !343
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !109

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ge = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 4 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !343
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !343
  %i.gi = icmp slt i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 5 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !343
  %i.gl = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.gf, align 4, !tbaa !343
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !343
  store i32 %i.gk, ptr %i.gf, align 4, !tbaa !343
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !343
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !343
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !343
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gf, %bb.z ]
  %.1.i159 = phi ptr [ %i.ge, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !343
  store i32 0, ptr %i.gl, align 4, !tbaa !343
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !343
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !343
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !343
  %.not.i160 = icmp eq ptr %i.fu, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !6695

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEENS3_4pairIS7_S7_EENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EET0_NS0_9forward_tET_SC_SA_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !6701

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.al, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.ak, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !6702

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !343 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !343 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !343
  %i.az = load i32, ptr %i.as, align 4, !tbaa !343
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !108

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
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

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !343
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !343
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EENS4_23flat_tree_value_compareISt4lessIS7_ES8_NS4_9select1stIS7_EEEES9_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

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
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !343
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !343
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !343
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !6703

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !343
  store i32 0, ptr %i.by, align 4, !tbaa !343
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !343
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !343
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !6704

_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !343
  store i32 0, ptr %i.bd, align 4, !tbaa !343
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !343
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !343
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !343
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EES9_EEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6705

end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive46op_buffered_partial_merge_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_SB_NS0_10antistableINS0_7inverseINS5_23flat_tree_value_compareISt4lessIS8_ES9_NS5_9select1stIS8_EEEEEEEENS0_7swap_opEEET1_T_SO_RT0_SP_RSN_T2_T3_:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.022.041.lcssa, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.lcssa69, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !343, !noalias !7433
  store i32 0, ptr %i.z, align 4, !tbaa !343, !noalias !7433
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !343, !noalias !7433
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !343, !noalias !7433
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !343, !noalias !7433
  %i.ad = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !343, !noalias !7433
  store i32 0, ptr %i.ad, align 4, !tbaa !343, !noalias !7433
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !343, !noalias !7433
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !343, !noalias !7433
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !343, !noalias !7433
  %.not.i.i = icmp eq ptr %i.z, %.lcssa71
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EET0_NS0_9forward_tET_SE_SC_.exit, label %.lr.ph.i.i, !llvm.loop !118

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EET0_NS0_9forward_tET_SE_SC_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !479
  br label %.loopexit

.lr.ph75:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.016.04074 = phi ptr [ %.sroa.016.1, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.022.04173 = phi ptr [ %.sroa.022.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %i.ah = phi ptr [ %i.an, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 3 uses
  %i.ai = phi ptr [ %i.bl, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -8 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -8 ; 4 uses
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !343
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !343
  %.not28 = icmp slt i32 %i.al, %i.am
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 10 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !479, !noalias !485
  br i1 %.not28, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph75
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 5 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !479, !noalias !7434
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.016.04074, i64 -4
  %i.as = load <2 x i32>, ptr %i.ao, align 4, !tbaa !343
  store i32 0, ptr %i.ao, align 4, !tbaa !343
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  store i32 0, ptr %i.ap, align 4, !tbaa !343
  %i.au = add i32 %i.at, 2
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.av = load i32, ptr %i.an, align 4, !tbaa !343
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !343
  store i32 0, ptr %i.an, align 4, !tbaa !343
  %i.aw = load i32, ptr %i.aq, align 4, !tbaa !343
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !343
  store i32 0, ptr %i.aq, align 4, !tbaa !343
  %i.ax = load i32, ptr %i.aj, align 4, !tbaa !343
  store i32 %i.ax, ptr %i.an, align 4, !tbaa !343
  %i.ay = load i32, ptr %i.ar, align 4, !tbaa !343
  store i32 %i.ay, ptr %i.aq, align 4, !tbaa !343
  store <2 x i32> %i.as, ptr %i.aj, align 4, !tbaa !343
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph75
  %i.az = load ptr, ptr %0, align 8, !tbaa !479, !noalias !7435 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 5 uses
  store ptr %i.ba, ptr %0, align 8, !tbaa !479, !noalias !7435
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.022.04173, i64 -4
  %i.be = load <2 x i32>, ptr %i.ba, align 4, !tbaa !343
  store i32 0, ptr %i.ba, align 4, !tbaa !343
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  store i32 0, ptr %i.bb, align 4, !tbaa !343
  %i.bg = add i32 %i.bf, 2
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bh = load i32, ptr %i.an, align 4, !tbaa !343
  store i32 %i.bh, ptr %i.ba, align 4, !tbaa !343
  store i32 0, ptr %i.an, align 4, !tbaa !343
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !343
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !343
  store i32 0, ptr %i.bc, align 4, !tbaa !343
  %i.bj = load i32, ptr %i.ak, align 4, !tbaa !343
  store i32 %i.bj, ptr %i.an, align 4, !tbaa !343
  %i.bk = load i32, ptr %i.bd, align 4, !tbaa !343
  store i32 %i.bk, ptr %i.bc, align 4, !tbaa !343
  store <2 x i32> %i.be, ptr %i.ak, align 4, !tbaa !343
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi ptr [ %i.ao, %bb.d ], [ %i.ba, %bb.e ]
  %.sroa.016.1 = phi ptr [ %i.aj, %bb.d ], [ %.sroa.016.04074, %bb.e ] ; 4 uses
  %.sroa.022.1 = phi ptr [ %.sroa.022.04173, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %storemerge29.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge29 = add i32 %storemerge29.in, -2
  store i32 %storemerge29, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bm = load ptr, ptr %2, align 8, !tbaa !479   ; 2 uses
  %i.bn = icmp eq ptr %i.an, %i.bm
  br i1 %i.bn, label %.loopexit, label %.lr.ph, !llvm.loop !7422

.loopexit:                                        ; preds = %bb.f, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EET0_NS0_9forward_tET_SE_SC_.exit
  %.sroa.016.037 = phi ptr [ %.sroa.016.040.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EET0_NS0_9forward_tET_SE_SC_.exit ], [ %i.f, %bb.c ], [ %.sroa.016.1, %bb.f ]
  %.sroa.022.035 = phi ptr [ %.sroa.022.041.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEESB_EET0_NS0_9forward_tET_SE_SC_.exit ], [ %i.a, %bb.c ], [ %.sroa.022.1, %bb.f ]
  store ptr %.sroa.016.037, ptr %3, align 8, !tbaa !479
  store ptr %.sroa.022.035, ptr %5, align 8, !tbaa !479
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !7436

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader.prol.loopexit, %.lr.ph123.split.us.preheader
  %.0121.us = phi ptr [ %i.al, %.lr.ph123.split.us.preheader ], [ %.0121.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %.069120.us = phi ptr [ %i.ak, %.lr.ph123.split.us.preheader ], [ %.069120.us.unr, %.lr.ph123.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.069120.us, i64 %2
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !7437

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !343 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !343 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !493
  %i.az = load i8, ptr %i.as, align 1, !tbaa !493
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !147

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
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

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !343
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !343
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

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
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !343
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !343
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !343
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !7438

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !343
  store i32 0, ptr %i.by, align 4, !tbaa !343
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !343
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !343
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !7439

_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !493
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !493
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !493
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !493
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %bb.j, %bb.i, %bb.f
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7440

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container3dtl4pairINS9_4test24movable_and_copyable_intESD_EEEESG_SG_NS6_INSA_23flat_tree_value_compareISt4lessISD_ESE_NSA_9select1stISD_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !343, !noalias !7619
  store i32 0, ptr %i.cl, align 4, !tbaa !343, !noalias !7619
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !7619
  store i32 0, ptr %i.cm, align 4, !tbaa !343, !noalias !7619
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !7619
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !343, !noalias !7619
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !343, !noalias !7619
  store i32 0, ptr %i.ck, align 4, !tbaa !343, !noalias !7619
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !343, !noalias !7619
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !343, !noalias !7619
  store i32 0, ptr %i.cn, align 4, !tbaa !343, !noalias !7619
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !343, !noalias !7619
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !343, !noalias !7619
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !343, !noalias !7619
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !343, !noalias !7619
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !343, !noalias !7619
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !7619
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !7619
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i26, !llvm.loop !129

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !343, !noalias !7620
  store i32 0, ptr %i.cz, align 4, !tbaa !343, !noalias !7620
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !343, !noalias !7620
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !343, !noalias !7620
  store i32 %i.db, ptr %i.da, align 4, !tbaa !343, !noalias !7620
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !343, !noalias !7620
  store i32 0, ptr %i.dd, align 4, !tbaa !343, !noalias !7620
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !343, !noalias !7620
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !343, !noalias !7620
  store i32 %i.df, ptr %i.de, align 4, !tbaa !343, !noalias !7620
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, label %.lr.ph.i.i, !llvm.loop !118

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread86 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread85 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !479
  %i.di = load ptr, ptr %1, align 8, !tbaa !496   ; 4 uses
  %i.dj = sub i64 0, %.018.lcssa.i
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !493
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !493
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !493
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !493
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !496   ; 2 uses
  %i.dq = icmp eq ptr %i.dk, %i.dp
  br i1 %i.dq, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq ptr %i.dp, %i.di
  br i1 %i.dr, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !496
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container3dtl4pairINS3_4test24movable_and_copyable_intES7_EEEESA_EET0_T_SC_SB_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !479
  %i.ds = load ptr, ptr %1, align 8, !tbaa !496
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !496
  %i.du = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.du to i64
  %i.dv = add i64 %.0100, %.neg
  %i.dw = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dw to i64
  %i.dx = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.dy = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7613

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container3dtl4pairINS6_4test24movable_and_copyable_intESA_EEEEEEvT_SE_RSE_T0_SG_SG_.exit, %bb.a
  %i.dz = load ptr, ptr %6, align 8, !tbaa !479
  store ptr %i.dz, ptr %0, align 8, !tbaa !479
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !7621

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.al, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.ak, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.069121.us, i64 %2
  %8 = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %2
  %9 = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %2
  %10 = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2
  %11 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %2
  %12 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %2
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !7622

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !343 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !343 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !340
  %i.az = load i64, ptr %i.as, align 8, !tbaa !340
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !110

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
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

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !343
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !343
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container3dtl4pairINS5_4test24movable_and_copyable_intES9_EENS6_23flat_tree_value_compareISt4lessIS9_ESA_NS6_9select1stIS9_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader

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
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !343
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !343
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !343
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !343
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !7623

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !343
  store i32 0, ptr %i.by, align 4, !tbaa !343
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !343
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !343
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !343
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !7624

_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !340
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !340
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !340
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !340
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPNS_9container3dtl4pairINS1_4test24movable_and_copyable_intES5_EES7_EET0_T_S9_S8_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container3dtl4pairINS4_4test24movable_and_copyable_intES8_EEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %bb.j, %bb.i, %bb.f
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7625

._crit_edge125.loopexit131:                       ; preds = %bb.l
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !343
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !343
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !343
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !343
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !343
  store i32 0, ptr %i.fh, align 4, !tbaa !343
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !343
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !343
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !343
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !220

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !419
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !419
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.fo, ptr %10, align 8, !tbaa !522
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !522, !alias.scope !13639
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !522, !alias.scope !13640
  store ptr %i.h, ptr %14, align 8, !tbaa !522, !alias.scope !13641
  store ptr %7, ptr %15, align 8, !tbaa !522, !alias.scope !13642
  store ptr %i.ep, ptr %16, align 8, !tbaa !522, !alias.scope !13643
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.179") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !522
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.fs = load ptr, ptr %10, align 8, !tbaa !522  ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !419 ; 3 uses
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
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !343
  store i32 0, ptr %i.fv, align 4, !tbaa !343
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !343
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !343
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !343
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !222

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !343
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !343
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !343 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !343
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !343
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !343
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !343
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !343
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !343
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !343
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !13638

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !13644

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
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !13645

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
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !343 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !343
  %i.al = load i32, ptr %i.ae, align 4, !tbaa !343
  %i.am = icmp slt i32 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !221

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
  %i.av = load i32, ptr %i.e, align 4, !tbaa !343
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
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
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !343
  store i32 0, ptr %.071116, align 4, !tbaa !343
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.be = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.be, ptr %.071116, align 4, !tbaa !343
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !343
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !343
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !343
  store i32 0, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !343
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !220

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i32, ptr %i.ap, align 4, !tbaa !343
  store i32 0, ptr %i.ap, align 4, !tbaa !343
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.by = add i32 %i.bx, 1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bz = load i32, ptr %.073114, align 4, !tbaa !343
  store i32 %i.bz, ptr %i.ap, align 4, !tbaa !343
  store i32 %i.bw, ptr %.073114, align 4, !tbaa !343
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cb = add i32 %i.ca, -1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13646

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.cs = phi i8 [ %i.db, %bb.l ], [ 1, %.lr.ph124 ]
  %i.ct = phi i8 [ %i.dc, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.df, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.de, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.dd, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cu = load i32, ptr %.0122, align 4, !tbaa !343
  %i.cv = load i32, ptr %.1101, align 4, !tbaa !343
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7swap_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_:bb.a
  store i32 %i.k, ptr %i.g, align 4, !tbaa !343
  %storemerge37.in48 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge3749 = add i32 %storemerge37.in48, -1
  store i32 %storemerge3749, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.q = load ptr, ptr %2, align 8, !tbaa !522    ; 2 uses
  %.not3550 = icmp eq ptr %i.i, %i.q
  br i1 %.not3550, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = load ptr, ptr %4, align 8, !tbaa !522
  %i.s = icmp eq ptr %i.g, %i.r
  br i1 %i.s, label %.lr.ph.i.i.preheader, label %.lr.ph108

.lr.ph:                                           ; preds = %bb.f
  %i.t = load ptr, ptr %4, align 8, !tbaa !522
  %i.u = icmp eq ptr %.sroa.024.1, %i.t
  br i1 %i.u, label %.lr.ph.i.i.preheader.loopexit, label %.lr.ph108, !llvm.loop !14542

.lr.ph.i.i.preheader.loopexit:                    ; preds = %.lr.ph
  store ptr %.sink, ptr %0, align 8, !tbaa !522, !noalias !485
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
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343, !noalias !14553
  store i32 0, ptr %i.w, align 4, !tbaa !343, !noalias !14553
  %i.z = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14553
  %i.aa = add i32 %i.z, 1
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14553
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !343, !noalias !14553
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !343, !noalias !14553
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343, !noalias !14553
  %i.ac = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14553
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14553
  %.not.i.i = icmp eq ptr %i.w, %.lcssa103
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !229

_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i
  store ptr %i.x, ptr %0, align 8, !tbaa !522
  br label %.loopexit

.lr.ph108:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.051107 = phi ptr [ %.sroa.020.1, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.024.052106 = phi ptr [ %.sroa.024.1, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.029.053105 = phi ptr [ %.sroa.029.1, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.ae = phi ptr [ %i.ba, %.lr.ph ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %i.af = phi ptr [ %.sink, %.lr.ph ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.sroa.020.051107, i64 -4 ; 5 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.029.053105, i64 -4 ; 4 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !343
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !343
  %.not36 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.ak = getelementptr inbounds i8, ptr %.sroa.024.052106, i64 -4 ; 3 uses
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !522, !noalias !14554
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !343
  store i32 0, ptr %i.am, align 4, !tbaa !343
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !343
  store i32 0, ptr %i.al, align 4, !tbaa !343
  %i.ar = load i32, ptr %i.ag, align 4, !tbaa !343
  store i32 %i.ar, ptr %i.al, align 4, !tbaa !343
  store i32 0, ptr %i.ag, align 4, !tbaa !343
  %i.as = load i32, ptr %i.ak, align 4, !tbaa !343
  store i32 %i.as, ptr %i.ag, align 4, !tbaa !343
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !343
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph108
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 5 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !522, !noalias !14555
  %i.au = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 4 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !343
  store i32 0, ptr %i.au, align 4, !tbaa !343
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !343
  store i32 0, ptr %i.at, align 4, !tbaa !343
  %i.az = load i32, ptr %i.ah, align 4, !tbaa !343
  store i32 %i.az, ptr %i.at, align 4, !tbaa !343
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !343
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ba = phi ptr [ %i.at, %bb.e ], [ %i.al, %bb.d ] ; 3 uses
  %.sink = phi ptr [ %i.au, %bb.e ], [ %i.am, %bb.d ] ; 3 uses
  %.sroa.020.1 = phi ptr [ %.sroa.020.051107, %bb.e ], [ %i.ag, %bb.d ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.052106, %bb.e ], [ %i.ak, %bb.d ] ; 4 uses
  %.sroa.029.1 = phi ptr [ %i.ah, %bb.e ], [ %.sroa.029.053105, %bb.d ] ; 3 uses
  %storemerge37.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %storemerge37 = add i32 %storemerge37.in, -1
  store i32 %storemerge37, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bb = load ptr, ptr %2, align 8, !tbaa !522   ; 2 uses
  %.not35 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not35, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !14542

.loopexit.loopexit:                               ; preds = %bb.f
  store ptr %.sink, ptr %0, align 8, !tbaa !522, !noalias !485
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit
  %.sroa.020.047 = phi ptr [ %.sroa.020.051.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.h, %bb.c ], [ %.sroa.020.1, %.loopexit.loopexit ]
  %.sroa.024.045 = phi ptr [ %.sroa.024.052.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.g, %bb.c ], [ %.sroa.024.1, %.loopexit.loopexit ]
  %.sroa.029.043 = phi ptr [ %.sroa.029.053.lcssa, %_ZN5boost7movelib7swap_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit ], [ %i.a, %bb.c ], [ %.sroa.029.1, %.loopexit.loopexit ]
  store ptr %.sroa.024.045, ptr %3, align 8, !tbaa !522
  store ptr %.sroa.029.043, ptr %6, align 8, !tbaa !522
  store ptr %.sroa.020.047, ptr %5, align 8, !tbaa !522
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !14556

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
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !14557

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
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !343 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !493
  %i.al = load i8, ptr %i.ae, align 1, !tbaa !493
  %i.am = icmp ult i8 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !256

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
  %i.av = load i32, ptr %i.e, align 4, !tbaa !343
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
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
  %i.bb = load i32, ptr %.071115, align 4, !tbaa !343
  store i32 0, ptr %.071115, align 4, !tbaa !343
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.be = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.be, ptr %.071115, align 4, !tbaa !343
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !343
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !343
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !343
  store i32 0, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !343
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !220

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i8, ptr %i.ap, align 1, !tbaa !493
  %i.bx = load i8, ptr %.073113, align 1, !tbaa !493
  store i8 %i.bx, ptr %i.ap, align 1, !tbaa !493
  store i8 %i.bw, ptr %.073113, align 1, !tbaa !493
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14558

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph123 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph123 ] ; 2 uses
  %.0121 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph123 ] ; 2 uses
  %.069120 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph123 ] ; 4 uses
  %.070119 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph123 ]
  %i.cq = load i8, ptr %.0121, align 1, !tbaa !493
  %i.cr = load i8, ptr %.1101, align 1, !tbaa !493
  %i.cs = icmp ult i8 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069120, i64 %2
  %i.cw = call noundef ptr @_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_SF_PbT0_(ptr noundef %.070119, ptr noundef %.069120, ptr noundef %i.cv, ptr noundef nonnull %i.a)
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a

.thread85:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread85, %.lr.ph.i25
  %.sroa.051.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread85 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.051.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !343, !noalias !14813
  store i32 0, ptr %i.by, align 4, !tbaa !343, !noalias !14813
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14813
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14813
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !343, !noalias !14813
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !343, !noalias !14813
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !343, !noalias !14813
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14813
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14813
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !229

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
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !343, !noalias !14814
  store i32 0, ptr %i.cj, align 4, !tbaa !343, !noalias !14814
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14814
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14814
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !343, !noalias !14814
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !343, !noalias !14814
  store i32 0, ptr %i.ci, align 4, !tbaa !343, !noalias !14814
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !343, !noalias !14814
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !343, !noalias !14814
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !343, !noalias !14814
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14814
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14814
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !238

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !343, !noalias !14815
  store i32 0, ptr %i.cs, align 4, !tbaa !343, !noalias !14815
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14815
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14815
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !343, !noalias !14815
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !343, !noalias !14815
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !343, !noalias !14815
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14815
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !14815
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !229

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread86 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread85 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !522
  %i.db = load ptr, ptr %1, align 8, !tbaa !496   ; 4 uses
  %i.dc = sub i64 0, %.018.lcssa.i
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -1 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.db, i64 -1 ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !493
  %i.dh = load i8, ptr %i.df, align 1, !tbaa !493
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !493
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !493
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.di = load ptr, ptr %2, align 8, !tbaa !496   ; 2 uses
  %i.dj = icmp eq ptr %i.dd, %i.di
  br i1 %i.dj, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = icmp eq ptr %i.di, %i.db
  br i1 %i.dk, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dd, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !496
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !522
  %i.dl = load ptr, ptr %1, align 8, !tbaa !496
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1 ; 2 uses
  store ptr %i.dm, ptr %1, align 8, !tbaa !496
  %i.dn = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dn to i64
  %i.do = add i64 %.0100, %.neg
  %i.dp = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dp to i64
  %i.dq = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  %i.dr = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14808

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ds = load ptr, ptr %6, align 8, !tbaa !522
  store ptr %i.ds, ptr %0, align 8, !tbaa !522
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 5 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [4 x i8], ptr %1, i64 %3   ; 5 uses
  %i.e = getelementptr [4 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 1, ptr %i.a, align 1, !tbaa !480
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !14816

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
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !14817

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
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !343 ; 2 uses
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !343 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  br i1 %i.ai, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.aj = icmp slt i32 %i.ah, %i.ag
  br i1 %i.aj, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !340
  %i.al = load i64, ptr %i.ae, align 8, !tbaa !340
  %i.am = icmp ult i64 %i.ak, %i.al
  %cond.fr.i = freeze i1 %i.am
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.an = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ao = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !223

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
  %i.av = load i32, ptr %i.e, align 4, !tbaa !343
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
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
  %i.bb = load i32, ptr %.071116, align 4, !tbaa !343
  store i32 0, ptr %.071116, align 4, !tbaa !343
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.be = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.be, ptr %.071116, align 4, !tbaa !343
  store i32 %i.bb, ptr %i.at, align 4, !tbaa !343
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.bj = load i32, ptr %.079.i.i, align 4, !tbaa !343
  store i32 0, ptr %.079.i.i, align 4, !tbaa !343
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bm = load i32, ptr %.010.i.i, align 4, !tbaa !343
  store i32 %i.bm, ptr %.079.i.i, align 4, !tbaa !343
  store i32 %i.bj, ptr %.010.i.i, align 4, !tbaa !343
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 3 uses
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !343
  store i32 0, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !343
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !343
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !343
  %i.bt = add i32 %i.bn, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i.1 = icmp eq ptr %i.bu, %i.ba
  br i1 %.not.i.i.1, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !220

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.bw = load i64, ptr %i.ap, align 8, !tbaa !340
  %i.bx = load i64, ptr %.073114, align 8, !tbaa !340
  store i64 %i.bx, ptr %i.ap, align 8, !tbaa !340
  store i64 %i.bw, ptr %.073114, align 8, !tbaa !340
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
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14818

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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void

.lr.ph124.split:                                  ; preds = %.lr.ph124, %bb.l
  %i.co = phi i8 [ %i.cx, %bb.l ], [ 1, %.lr.ph124 ]
  %i.cp = phi i8 [ %i.cy, %bb.l ], [ 1, %.lr.ph124 ] ; 2 uses
  %.0122 = phi ptr [ %i.db, %bb.l ], [ %0, %.lr.ph124 ] ; 2 uses
  %.069121 = phi ptr [ %i.da, %bb.l ], [ %i.d, %.lr.ph124 ] ; 4 uses
  %.070120 = phi ptr [ %i.cz, %bb.l ], [ %1, %.lr.ph124 ]
  %i.cq = load i64, ptr %.0122, align 8, !tbaa !340
  %i.cr = load i64, ptr %.1101, align 8, !tbaa !340
  %i.cs = icmp ult i64 %i.cq, %i.cr
  %i.ct = zext i1 %i.cs to i8
  %i.cu = icmp eq i8 %i.cp, %i.ct
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph124.split
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.069121, i64 %2
end_hunk_5
