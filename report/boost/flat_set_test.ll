Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26547
inline.NumDeleted: 4082
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 674
loop-unroll.NumUnrolled: 1026
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !35, !noalias !4373
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !35, !noalias !4373
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !35, !noalias !4373
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !35, !noalias !4373
  %.not.i30 = icmp eq ptr %i.ec, %i.av
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !4375

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eh = add i64 %i.u, %i.cm                     ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.eh, 28
  %i.ek = sub i64 %.sroa.064.0318, %i.cm
  %diff.check = icmp ugt i64 %i.ek, -32
  %or.cond = or i1 %min.iters.check320, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader374, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec322 = and i64 %i.ej, 9223372036854775800  ; 3 uses
  %i.el = mul i64 %n.vec322, -4                   ; 2 uses
  %i.em = getelementptr i8, ptr %.sroa.064.0, i64 %i.el ; 2 uses
  %i.en = getelementptr i8, ptr %i.cl, i64 %i.el
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.eo = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %.sroa.064.0, i64 %i.eo ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.cl, i64 %i.eo ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %next.gep326, i64 -16
  %i.eq = getelementptr inbounds i8, ptr %next.gep326, i64 -32
  %wide.load327 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !35, !noalias !4376
  %wide.load328 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !35, !noalias !4376
  %i.er = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.es = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.er, align 4, !tbaa !35, !noalias !4376
  store <4 x i32> %wide.load328, ptr %i.es, align 4, !tbaa !35, !noalias !4376
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.et, label %middle.block330, label %vector.body323, !llvm.loop !4381

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.ej, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader374

.lr.ph.i.i.preheader374:                          ; preds = %.lr.ph.i.i.preheader, %middle.block330
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.em, %middle.block330 ]
  %.ph375 = phi ptr [ %i.cl, %.lr.ph.i.i.preheader ], [ %i.en, %middle.block330 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader374, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader374 ]
  %i.eu = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.ph375, %.lr.ph.i.i.preheader374 ]
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !35, !noalias !4376
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !35, !noalias !4376
  %.not.i.i31 = icmp eq ptr %i.ev, %i.av
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4382

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block363, %middle.block330, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.av, %bb.s ], [ %i.ex, %.lr.ph.i.i ], [ %i.cl, %bb.t ], [ %i.dj, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cz, %middle.block ], [ %i.em, %middle.block330 ], [ %i.du, %middle.block363 ], [ %i.ee, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !4016
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.o, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.av, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -8 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !85
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !85
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !85
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fd = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.fe = icmp eq ptr %i.ey, %i.fd
  br i1 %i.fe, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = icmp eq ptr %i.fd, %i.o
  br i1 %i.ff, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.o, %bb.y ], [ %i.ey, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fg = phi ptr [ %i.o, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.o, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.av, ptr %3, align 8, !tbaa !4016
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !4143
  %i.fi = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fi to i64
  %i.fj = add i64 %.0140, %.neg
  %i.fk = icmp ne i64 %i.au, 0
  %.neg24 = sext i1 %i.fk to i64
  %i.fl = add i64 %.sroa.speculated, %.neg24
  %i.fm = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4383

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.fn = load ptr, ptr %6, align 8, !tbaa !4016
  store ptr %i.fn, ptr %0, align 8, !tbaa !4016
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130  ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !129
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !129
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !127    ; 4 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %0, align 4, !tbaa !35     ; 4 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !35
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.p = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !tbaa !35
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !4384

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %storemerge10.i.i
  store i32 %i.o, ptr %i.v, align 4, !tbaa !35
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !4385

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.o, ptr %0, align 4, !tbaa !35
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %7 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ne i64 %3, 0
  %or.cond104 = and i1 %i.c, %i.b
  br i1 %or.cond104, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %invariant.op = sub i64 -4, %i.a
  %invariant.op282 = sub i64 -4, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit
  %.tr91108 = phi i64 [ %4, %.lr.ph ], [ %i.ef, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 5 uses
  %.tr90107 = phi i64 [ %3, %.lr.ph ], [ %i.ap, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 6 uses
  %.tr88106 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 27 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 10 uses
  %.tr88106165 = ptrtoaddr ptr %.tr88106 to i64   ; 7 uses
  %.not = icmp ugt i64 %.tr90107, %6
  %.not76 = icmp ugt i64 %.tr91108, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS2_mNS0_7move_opEEEEEvT_SF_SF_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS2_mNS0_7move_opEEEEEvT_SF_SF_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !4386
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !4388
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !4389
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS2_mSC_EEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.tr91108, %.tr90107             ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.tr88106, align 4, !tbaa !35 ; 2 uses
  %i.k = load i32, ptr %.tr105, align 4, !tbaa !35 ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.j, ptr %.tr105, align 4, !tbaa !35
  store i32 %i.k, ptr %.tr88106, align 4, !tbaa !35
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.h, 16
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_T0_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %.tr90107, %.tr91108
  br i1 %i.n, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = lshr i64 %.tr90107, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.tr105, i64 %i.o ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr88106
  %.pre = ptrtoint ptr %.tr88106 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.q = sub i64 %i.d, %.pre
  %i.r = ashr exact i64 %i.q, 2
  %i.s = load i32, ptr %i.p, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr88106, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = icmp slt i32 %i.v, %i.s                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.neg.i = xor i64 %i.t, -1
  %i.y = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.w, ptr %i.x, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.w, i64 %i.y, i64 %i.t      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !3935

_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre126 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit
  %.pre-phi127 = phi i64 [ %.pre126, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr88106, %bb.i ]
  %i.z = sub i64 %.pre-phi127, %.pre
  %i.aa = ashr exact i64 %i.z, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ab = lshr i64 %.tr91108, 1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.tr88106, i64 %i.ab ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr88106, %.tr105
  %.pre124 = ptrtoint ptr %.tr105 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ad = ptrtoint ptr %.tr88106 to i64
  %i.ae = sub i64 %i.ad, %.pre124
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !35
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.af, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr105, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ah = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01316.i81, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !35
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.neg.i82 = xor i64 %i.ah, -1
  %i.am = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ak, ptr %.01316.i81, ptr %i.al ; 3 uses
  %.1.i84 = select i1 %i.ak, i64 %i.ah, i64 %i.am ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !3951

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre128 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit
  %.pre-phi129 = phi i64 [ %.pre128, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.pre124, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr105, %bb.k ]
  %i.an = sub i64 %.pre-phi129, %.pre124
  %i.ao = ashr exact i64 %i.an, 2
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ac, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 12 uses
  %.070 = phi i64 [ %i.o, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ao, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.aa, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ab, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.p, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 18 uses
  %.071217 = ptrtoaddr ptr %.071 to i64           ; 2 uses
  %.0164 = ptrtoaddr ptr %.0 to i64               ; 5 uses
  %i.ap = sub i64 %.tr90107, %.070                ; 4 uses
  %i.aq = icmp ule i64 %i.ap, %.069
  %.not.i87 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.aq, %.not.i87
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not8.i.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.ar = add i64 %.071217, -4
  %i.as = sub i64 %i.ar, %.tr88106165             ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.as, 28
  %i.av = sub i64 %.tr88106165, %i.a
  %diff.check235 = icmp ugt i64 %i.av, -32
  %or.cond251 = or i1 %min.iters.check237, %diff.check235
  br i1 %or.cond251, label %.lr.ph.i.i.preheader263, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec239 = and i64 %i.au, 9223372036854775800  ; 3 uses
  %i.aw = shl i64 %n.vec239, 2                    ; 2 uses
  %i.ax = getelementptr i8, ptr %5, i64 %i.aw     ; 2 uses
  %i.ay = getelementptr i8, ptr %.tr88106, i64 %i.aw
  br label %vector.body240
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.ey
  %bound0322 = icmp ult ptr %scevgep319, %.sroa.064.0
  %bound1323 = icmp ult ptr %scevgep321, %i.cw
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %.lr.ph.i.i.preheader383, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck317
  %n.vec328 = and i64 %i.ev, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec328, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.064.0, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cw, i64 %i.ez
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 2 uses
  %i.fc = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.064.0, i64 %i.fc ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.cw, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !35, !alias.scope !5933, !noalias !5936
  %wide.load334 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !35, !alias.scope !5933, !noalias !5936
  %i.ff = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep331, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !35, !alias.scope !5942, !noalias !5943
  %wide.load336 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !35, !alias.scope !5942, !noalias !5943
  store <4 x i32> %wide.load335, ptr %i.fd, align 4, !tbaa !35, !alias.scope !5933, !noalias !5936
  store <4 x i32> %wide.load336, ptr %i.fe, align 4, !tbaa !35, !alias.scope !5933, !noalias !5936
  store <4 x i32> %wide.load333, ptr %i.ff, align 4, !tbaa !35, !alias.scope !5942, !noalias !5943
  store <4 x i32> %wide.load334, ptr %i.fg, align 4, !tbaa !35, !alias.scope !5942, !noalias !5943
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.fh, label %middle.block338, label %vector.body329, !llvm.loop !5944

middle.block338:                                  ; preds = %vector.body329
  %cmp.n339 = icmp eq i64 %i.ev, %n.vec328
  br i1 %cmp.n339, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader383

.lr.ph.i.i.preheader383:                          ; preds = %vector.memcheck317, %.lr.ph.i.i.preheader, %middle.block338
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.fa, %middle.block338 ]
  %.ph384 = phi ptr [ %i.cw, %vector.memcheck317 ], [ %i.cw, %.lr.ph.i.i.preheader ], [ %i.fb, %middle.block338 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader383, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader383 ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.ph384, %.lr.ph.i.i.preheader383 ]
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !35, !noalias !5943
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !35, !noalias !5943
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !35, !noalias !5943
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !35, !noalias !5943
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ba
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !5945

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block372, %middle.block338, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ba, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cw, %bb.t ], [ %i.du, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dk, %middle.block ], [ %i.fa, %middle.block338 ], [ %i.ef, %middle.block372 ], [ %i.ep, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !4016
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.r, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ba, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !85
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !85
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !85
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.ft = icmp eq ptr %i.fn, %i.fs
  br i1 %i.ft, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq ptr %i.fs, %i.r
  br i1 %i.fu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.r, %bb.y ], [ %i.fn, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fv = phi ptr [ %i.r, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.r, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ba, ptr %3, align 8, !tbaa !4016
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !4143
  %i.fx = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fx to i64
  %i.fy = add i64 %.0140, %.neg
  %i.fz = icmp ne i64 %i.az, 0
  %.neg24 = sext i1 %i.fz to i64
  %i.ga = add i64 %.sroa.speculated, %.neg24
  %i.gb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5946

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gc = load ptr, ptr %6, align 8, !tbaa !4016
  store ptr %i.gc, ptr %0, align 8, !tbaa !4016
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130  ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !5947, !nonnull !849 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !3998
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !129
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !129
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !127    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %0, align 4, !tbaa !35     ; 4 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !35
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.q = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !35
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !5949

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %storemerge10.i.i
  store i32 %i.p, ptr %i.w, align 4, !tbaa !35
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !5950

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !35
  store ptr %i.j, ptr %6, align 8, !tbaa !3998
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !3998
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull align 8 dead_on_return %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit: ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %bb.b, %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %.not84 = icmp slt i32 %i.b, %i.c
  br i1 %.not84, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 12 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 13 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !5951

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129  ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !127   ; 7 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %.pre146 = ptrtoaddr ptr %.pre to i64
  %i.t = add i64 %i.d, -4
  %i.u = sub i64 %i.t, %.114.i147.le              ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 44
  %i.x = sub i64 %.114.i147.le, %.pre146
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond278 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond278, label %.lr.ph.i.i.preheader302, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %.pre, i64 %i.y
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.ab ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.114.i, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !35
  %wide.load149 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load149, ptr %i.ad, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader302

.lr.ph.i.i.preheader302:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader302, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 2 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !5953

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 2                     ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !127   ; 8 uses
  %.not8.i17.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = add i64 %.idx26.i, -4                   ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.al, 44
  %i.ao = sub i64 %.114.i147.le, %i.ak
  %diff.check152 = icmp ugt i64 %i.ao, -32
  %or.cond279 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond279, label %.lr.ph.i18.i.preheader300, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i18.i.preheader
  %n.vec156 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.ap = shl i64 %n.vec156, 2                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %.114.i, i64 %i.ap
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.as = shl i64 %index158, 2                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.114.i, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load161 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !35
  %wide.load162 = load <4 x i32>, ptr %i.at, align 4, !tbaa !35
  %i.au = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !35
  store <4 x i32> %wide.load162, ptr %i.au, align 4, !tbaa !35
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.av, label %middle.block164, label %vector.body157, !llvm.loop !5954

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.an, %n.vec156
  br i1 %cmp.n165, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader300

.lr.ph.i18.i.preheader300:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block164
  %.010.i19.i.ph = phi ptr [ %i.aj, %.lr.ph.i18.i.preheader ], [ %i.aq, %middle.block164 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.ar, %middle.block164 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader300, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.ay, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader300 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.ax, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader300 ] ; 2 uses
  %i.aw = load i32, ptr %.079.i20.i, align 4, !tbaa !35
  store i32 %i.aw, ptr %.010.i19.i, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !5955

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block164, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.aj, %bb.f ], [ %i.aq, %middle.block164 ], [ %i.ay, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i169 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test11movable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck317 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dd, %middle.block346 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.de, %middle.block346 ]
  %.ph355 = phi ptr [ %i.ck, %vector.memcheck317 ], [ %i.ck, %.lr.ph.i29.preheader ], [ %i.df, %middle.block346 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader354, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader354 ]
  %.sroa.045.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader354 ]
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i29 ], [ %.ph355, %.lr.ph.i29.preheader354 ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !865, !noalias !8934
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !865, !noalias !8934
  store i32 0, ptr %i.dn, align 4, !tbaa !865, !noalias !8934
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !865, !noalias !8934
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !865, !noalias !8934
  store i32 0, ptr %i.dm, align 4, !tbaa !865, !noalias !8934
  %.not.i30 = icmp eq ptr %i.dm, %i.au
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !8936

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dr = add i64 %i.v, %i.cl                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.du = add i64 %i.x, %i.cl
  %i.dv = lshr i64 %i.du, 2
  %i.dw = mul i64 %i.dv, -4                       ; 2 uses
  %scevgep311 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 -4
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.dw
  %bound0 = icmp ult ptr %scevgep311, %i.ck
  %bound1 = icmp ult ptr %scevgep313, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.dx = mul i64 %n.vec, -4                      ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.064.0, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ck, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.ea ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.ck, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eb, align 4, !tbaa !865, !alias.scope !8937, !noalias !8940
  %wide.load315 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !865, !alias.scope !8937, !noalias !8940
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ed, align 4, !tbaa !865, !alias.scope !8945, !noalias !8947
  store <4 x i32> %wide.load315, ptr %i.ee, align 4, !tbaa !865, !alias.scope !8945, !noalias !8947
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !865, !alias.scope !8937, !noalias !8940
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !865, !alias.scope !8937, !noalias !8940
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !8948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  %.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader352 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !865, !noalias !8940
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !865, !noalias !8940
  store i32 0, ptr %i.eh, align 4, !tbaa !865, !noalias !8940
  %.not.i.i31 = icmp eq ptr %i.eh, %i.au
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !8949

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block346, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.au, %bb.s ], [ %i.ei, %.lr.ph.i.i ], [ %i.ck, %bb.t ], [ %i.cp, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dy, %middle.block ], [ %i.de, %middle.block346 ], [ %i.do, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !8647
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.p, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.au, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.en = load i64, ptr %i.el, align 8, !tbaa !85
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !85
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !85
  store i64 %i.en, ptr %i.em, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ep = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.eq = icmp eq ptr %i.ek, %i.ep
  br i1 %i.eq, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = icmp eq ptr %i.ep, %i.p
  br i1 %i.er, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.p, %bb.y ], [ %i.ek, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.es = phi ptr [ %i.p, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.p, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.au, ptr %3, align 8, !tbaa !8647
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  store ptr %i.et, ptr %1, align 8, !tbaa !4143
  %i.eu = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eu to i64
  %i.ev = add i64 %.0140, %.neg
  %i.ew = icmp ne i64 %i.at, 0
  %.neg24 = sext i1 %i.ew to i64
  %i.ex = add i64 %.sroa.speculated, %.neg24
  %i.ey = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ey, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8950

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ez = load ptr, ptr %6, align 8, !tbaa !8647
  store ptr %i.ez, ptr %0, align 8, !tbaa !8647
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !865
  store i32 %i.c, ptr %3, align 4, !tbaa !865
  store i32 0, ptr %0, align 4, !tbaa !865
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test11movable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test11movable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %4, -1                           ; 3 uses
  %xtraiter44 = and i64 %i.e, 1
  %i.f = icmp eq i64 %4, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter48 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter49 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter49.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !865
  store i32 %i.i, ptr %i.g, align 4, !tbaa !865
  store i32 0, ptr %i.h, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !865
  store i32 %i.l, ptr %i.j, align 4, !tbaa !865
  store i32 0, ptr %i.k, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !8540

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 3 uses
  %i.m = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %4, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !865
  store i32 0, ptr %i.p, align 4, !tbaa !865
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !865
  store i32 0, ptr %i.r, align 4, !tbaa !865
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit41.unr-lcssa, label %.lr.ph.i, !llvm.loop !8540

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !865
  store i32 %i.u, ptr %i.s, align 4, !tbaa !865
  store i32 0, ptr %i.t, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit41.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !865
  store i32 0, ptr %i.w, align 4, !tbaa !865
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !865
  store i32 %i.y, ptr %0, align 4, !tbaa !865
  store i32 0, ptr %i.x, align 4, !tbaa !865
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter55 = and i64 %4, 3                     ; 3 uses
  %i.ag = icmp ult i64 %4, 4
  br i1 %i.ag, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter59 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aw, %.preheader.i.i.i ] ; 5 uses
  %niter60 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter60.next.3, %.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !865
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !865
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !865
  %i.aq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !865
  %i.au = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add i64 %niter60, 4           ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !8429

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %xtraiter50 = and i64 %4, 3                     ; 3 uses
  %i.ay = icmp ult i64 %4, 4
  br i1 %i.ay, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter53 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter54 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter54.next.3, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !865
  %i.ba = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !865
  %i.be = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !865
  %i.bi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !865
  %i.bm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !8429

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bo, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bs, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !865
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !8951

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %bb.b
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = sub i64 %i.bx, %i.bt
  %i.bz = ashr exact i64 %i.by, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cd, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i64 [ %epil.iter56.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !865
  %i.cb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !8952

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test11movable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  store ptr %i.z, ptr %15, align 8, !tbaa !8647
  %i.bs = load ptr, ptr %6, align 8, !tbaa !8647
  store ptr %i.bs, ptr %16, align 8, !tbaa !8647
  call void @_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test11movable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.175") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dead_on_return %16, i1 noundef zeroext %11)
  %i.bt = load ptr, ptr %13, align 8, !tbaa !8647 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !8647
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.bu = load ptr, ptr %3, align 8, !tbaa !8647  ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  %i.bw = load ptr, ptr %12, align 8, !tbaa !8647 ; 6 uses
  br i1 %i.bv, label %.thread83, label %.thread84

.thread83:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread83 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !865, !noalias !10098
  store i32 0, ptr %i.by, align 4, !tbaa !865, !noalias !10098
  %i.cb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10098
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10098
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !865, !noalias !10098
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !865, !noalias !10098
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !865, !noalias !10098
  %i.ce = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10098
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10098
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !8788

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread84 ]
  %.sroa.042.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread84 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread84 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !865, !noalias !10101
  store i32 0, ptr %i.cj, align 4, !tbaa !865, !noalias !10101
  %i.cl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10101
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10101
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !865, !noalias !10101
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !865, !noalias !10101
  store i32 0, ptr %i.ci, align 4, !tbaa !865, !noalias !10101
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !865, !noalias !10101
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !865, !noalias !10101
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !865, !noalias !10101
  %i.cp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10101
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10101
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !8875

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !865, !noalias !10104
  store i32 0, ptr %i.cs, align 4, !tbaa !865, !noalias !10104
  %i.cv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10104
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10104
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !865, !noalias !10104
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !865, !noalias !10104
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !865, !noalias !10104
  %i.cy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10104
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10104
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !8788

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread84 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !8647
  %i.db = load ptr, ptr %1, align 8, !tbaa !4143  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -8 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !85
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !85
  store i64 %i.df, ptr %i.de, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dh = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.di = icmp eq ptr %i.dc, %i.dh
  br i1 %i.di, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp eq ptr %i.dh, %i.db
  br i1 %i.dj, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dc, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  %i.dk = phi ptr [ %i.db, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test11movable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.db, %bb.o ], [ %.pre124, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !8647
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !4143
  %i.dm = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dm to i64
  %i.dn = add i64 %.0100, %.neg
  %i.do = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.do to i64
  %i.dp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dq = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10109

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test11movable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.dr = load ptr, ptr %6, align 8, !tbaa !8647
  store ptr %i.dr, ptr %0, align 8, !tbaa !8647
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test11movable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.177", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.177", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !865
  store i32 %i.c, ptr %4, align 4, !tbaa !865
  store i32 0, ptr %0, align 4, !tbaa !865
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.d
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test11movable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test11movable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %5, -1                           ; 3 uses
  %xtraiter45 = and i64 %i.e, 1
  %i.f = icmp eq i64 %5, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter49 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter50 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter50.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !865
  store i32 %i.i, ptr %i.g, align 4, !tbaa !865
  store i32 0, ptr %i.h, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !865
  store i32 %i.l, ptr %i.j, align 4, !tbaa !865
  store i32 0, ptr %i.k, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter50.next.1 = add i64 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !8540

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 3 uses
  %i.m = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %5, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !865
  store i32 0, ptr %i.p, align 4, !tbaa !865
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !865
  store i32 0, ptr %i.r, align 4, !tbaa !865
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit42.unr-lcssa, label %.lr.ph.i, !llvm.loop !8540

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !865
  store i32 %i.u, ptr %i.s, align 4, !tbaa !865
  store i32 0, ptr %i.t, align 4, !tbaa !865
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit42.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit42.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !865
  store i32 0, ptr %i.w, align 4, !tbaa !865
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !865
  store i32 %i.y, ptr %0, align 4, !tbaa !865
  store i32 0, ptr %i.x, align 4, !tbaa !865
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load ptr, ptr %3, align 8, !tbaa !8885, !nonnull !849
  store ptr %i.ag, ptr %7, align 8, !tbaa !8619
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test11movable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter56 = and i64 %5, 3                     ; 3 uses
  %i.ah = icmp ult i64 %5, 4
  br i1 %i.ah, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter60 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ax, %.preheader.i.i.i ] ; 5 uses
  %niter61 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter61.next.3, %.preheader.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ai, align 4, !tbaa !865
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !865
  %i.an = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !865
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !865
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ax = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !8429

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %5, 3                     ; 3 uses
  %i.az = icmp ult i64 %5, 4
  br i1 %i.az, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter54 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bp, %bb.d ] ; 5 uses
  %niter55 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter55.next.3, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !865
  %i.bb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !865
  %i.bf = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !865
  %i.bj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !865
  %i.bn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bp = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter55.next.3 = add i64 %niter55, 4           ; 2 uses
  %niter55.ncmp.3 = icmp eq i64 %niter55.next.3, %unroll_iter54
  br i1 %niter55.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !8429

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bp, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter51, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !865
  %i.br = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bt = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter51
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !10110

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %3, align 8, !tbaa !8885, !nonnull !849
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  store ptr %i.bu, ptr %6, align 8, !tbaa !8619
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test11movable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ax, %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  call void @llvm.assume(i1 %lcmp.mod59)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter57 = phi i64 [ %epil.iter57.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !865
  %i.cd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %next.gep333 = getelementptr i8, ptr %i.cf, i64 %i.db
  %i.dc = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %wide.load334 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !2268, !alias.scope !11331, !noalias !11334
  %i.dd = getelementptr inbounds i8, ptr %next.gep332, i64 -16
  store <4 x i32> %wide.load334, ptr %i.dd, align 4, !tbaa !2268, !alias.scope !11338, !noalias !11340
  %i.de = getelementptr inbounds i8, ptr %next.gep333, i64 -16
  %wide.load335 = load <4 x i32>, ptr %i.de, align 4, !tbaa !2268, !alias.scope !11341, !noalias !11342
  store <4 x i32> %wide.load335, ptr %i.dc, align 4, !tbaa !2268, !alias.scope !11331, !noalias !11334
  %index.next336 = add nuw i64 %index330, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next336, %n.vec328
  br i1 %i.df, label %middle.block337, label %vector.body329, !llvm.loop !11343

middle.block337:                                  ; preds = %vector.body329
  %cmp.n338 = icmp eq i64 %i.ct, %n.vec328
  br i1 %cmp.n338, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29.preheader345

.lr.ph.i29.preheader345:                          ; preds = %vector.memcheck312, %.lr.ph.i29.preheader, %middle.block337
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck312 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.cy, %middle.block337 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck312 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.cz, %middle.block337 ]
  %.ph346 = phi ptr [ %i.cf, %vector.memcheck312 ], [ %i.cf, %.lr.ph.i29.preheader ], [ %i.da, %middle.block337 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader345, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.di, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader345 ]
  %.sroa.045.0 = phi ptr [ %i.dj, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader345 ]
  %i.dg = phi ptr [ %i.dh, %.lr.ph.i29 ], [ %.ph346, %.lr.ph.i29.preheader345 ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -4 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2268, !noalias !11342
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2268, !noalias !11342
  %i.dl = load i32, ptr %i.dh, align 4, !tbaa !2268, !noalias !11342
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !2268, !noalias !11342
  %.not.i30 = icmp eq ptr %i.dh, %i.ap
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !11344

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dm = add i64 %i.s, %i.cg                     ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dm, 28
  %i.dp = sub i64 %.sroa.064.0307, %i.cg
  %diff.check = icmp ugt i64 %i.dp, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.do, 9223372036854775800     ; 3 uses
  %i.dq = mul i64 %n.vec, -4                      ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.064.0, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %i.cf, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.dt ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.cf, i64 %i.dt ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %next.gep309, i64 -16
  %i.dv = getelementptr inbounds i8, ptr %next.gep309, i64 -32
  %wide.load = load <4 x i32>, ptr %i.du, align 4, !tbaa !2268, !noalias !11345
  %wide.load310 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !2268, !noalias !11345
  %i.dw = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !2268, !noalias !11345
  store <4 x i32> %wide.load310, ptr %i.dx, align 4, !tbaa !2268, !noalias !11345
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !11350

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader343

.lr.ph.i.i.preheader343:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dr, %middle.block ]
  %.ph = phi ptr [ %i.cf, %.lr.ph.i.i.preheader ], [ %i.ds, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader343, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eb, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader343 ]
  %i.dz = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader343 ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -4 ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !2268, !noalias !11345
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !2268, !noalias !11345
  %.not.i.i31 = icmp eq ptr %i.ea, %i.ap
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !11351

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block337, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ap, %bb.s ], [ %i.eb, %.lr.ph.i.i ], [ %i.cf, %bb.t ], [ %i.cm, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dr, %middle.block ], [ %i.cz, %middle.block337 ], [ %i.dj, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !11108
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.m, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ap, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !85
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !85
  store i64 %i.eh, ptr %i.ee, align 8, !tbaa !85
  store i64 %i.eg, ptr %i.ef, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ei = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.ej = icmp eq ptr %i.ed, %i.ei
  br i1 %i.ej, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = icmp eq ptr %i.ei, %i.m
  br i1 %i.ek, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.m, %bb.y ], [ %i.ed, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.el = phi ptr [ %i.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.m, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ap, ptr %3, align 8, !tbaa !11108
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  store ptr %i.em, ptr %1, align 8, !tbaa !4143
  %i.en = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.en to i64
  %i.eo = add i64 %.0140, %.neg
  %i.ep = icmp ne i64 %i.ao, 0
  %.neg24 = sext i1 %i.ep to i64
  %i.eq = add i64 %.sroa.speculated, %.neg24
  %i.er = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.er, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !11352

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.es = load ptr, ptr %6, align 8, !tbaa !11108
  store ptr %i.es, ptr %0, align 8, !tbaa !11108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2268
  store i32 %i.c, ptr %3, align 4, !tbaa !2268
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %4, -1                           ; 3 uses
  %xtraiter44 = and i64 %i.e, 1
  %i.f = icmp eq i64 %4, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter49 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter50 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter50.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2268
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2268
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter50.next.1 = add i64 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !11044

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 5 uses
  %i.m = add i64 %4, -1                           ; 2 uses
  %i.n = add i64 %4, -2
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.p, align 4, !tbaa !2268
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %load_initial, ptr %i.r, align 4, !tbaa !2268
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %load_initial, ptr %i.t, align 4, !tbaa !2268
  %storemerge6.in.i.2 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.2 = add i32 %storemerge6.in.i.2, 1
  store i32 %storemerge6.i.2, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.2 = add i64 %storemerge13.i, 3    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.2
  store i32 %load_initial, ptr %i.u, align 4, !tbaa !2268
  %storemerge6.in.i.3 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.3 = add i32 %storemerge6.in.i.3, 1
  store i32 %storemerge6.i.3, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.3 = add i64 %storemerge13.i, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit41.unr-lcssa, label %.lr.ph.i, !llvm.loop !11044

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod46.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init
  %i.x = load i32, ptr %i.w, align 4, !tbaa !2268
  store i32 %i.x, ptr %i.v, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.3, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %storemerge13.i.epil = phi i64 [ %storemerge.i.epil, %.lr.ph.i.epil ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil
  store i32 %load_initial, ptr %i.y, align 4, !tbaa !2268
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.epil = add i64 %storemerge13.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.epil, !llvm.loop !11353

.loopexit:                                        ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.epil, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i.2, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil, %.lr.ph.i.epil ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2268
  store i32 %i.aa, ptr %0, align 4, !tbaa !2268
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ac, %i.af
  %i.ah = ashr exact i64 %i.ag, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ah, i64 noundef %i.ae, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter57 = and i64 %4, 3                     ; 3 uses
  %i.ai = icmp ult i64 %4, 4
  br i1 %i.ai, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter61 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ay, %.preheader.i.i.i ] ; 5 uses
  %niter62 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter62.next.3, %.preheader.i.i.i ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.aj, align 4, !tbaa !2268
  %i.ak = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 -2147483648, ptr %i.an, align 4, !tbaa !2268
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 -2147483648, ptr %i.ar, align 4, !tbaa !2268
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 -2147483648, ptr %i.av, align 4, !tbaa !2268
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter62.next.3 = add i64 %niter62, 4           ; 2 uses
  %niter62.ncmp.3 = icmp eq i64 %niter62.next.3, %unroll_iter61
  br i1 %niter62.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !10929

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %4, 3                     ; 3 uses
  %i.ba = icmp ult i64 %4, 4
  br i1 %i.ba, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter55 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bq, %bb.d ] ; 5 uses
  %niter56 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter56.next.3, %bb.d ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !2268
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 -2147483648, ptr %i.bf, align 4, !tbaa !2268
  %i.bg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bh = add i32 %i.bg, -1
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 -2147483648, ptr %i.bj, align 4, !tbaa !2268
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 -2147483648, ptr %i.bn, align 4, !tbaa !2268
  %i.bo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bp = add i32 %i.bo, -1
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bq = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter56.next.3 = add i64 %niter56, 4           ; 2 uses
  %niter56.ncmp.3 = icmp eq i64 %niter56.next.3, %unroll_iter55
  br i1 %niter56.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !10929

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod53.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod53.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bq, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod54 = icmp ne i64 %xtraiter51, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bu, %bb.e ] ; 2 uses
  %epil.iter52 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter52.next, %bb.e ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.br, align 4, !tbaa !2268
  %i.bs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bu = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter52.next = add i64 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i64 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !11354

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.az

bb.f:                                             ; preds = %bb.b
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ay, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod60 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod60)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter58 = phi i64 [ %epil.iter58.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !2268
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !11355

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %7 = alloca %"class.boost::movelib::range_xbuf.224", align 8 ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ne i64 %3, 0
  %or.cond104 = and i1 %i.c, %i.b
  br i1 %or.cond104, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %invariant.op = sub i64 -4, %i.a
  %invariant.op281 = sub i64 -4, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit
  %.tr91108 = phi i64 [ %4, %.lr.ph ], [ %i.ek, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr90107 = phi i64 [ %3, %.lr.ph ], [ %i.au, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 6 uses
  %.tr88106 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 28 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPNS_9container4test12copyable_intES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 10 uses
  %.tr88106164 = ptrtoaddr ptr %.tr88106 to i64   ; 7 uses
  %.not = icmp ugt i64 %.tr90107, %6
  %.not76 = icmp ugt i64 %.tr91108, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !11356
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !11358
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !11359
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %i.bu = load ptr, ptr %3, align 8, !tbaa !11108 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  br i1 %i.bv, label %.thread87, label %.thread88

.thread87:                                        ; preds = %.thread
  %i.bw = load ptr, ptr %12, align 8, !tbaa !11108 ; 3 uses
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread87
  %.pre2.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12089
  %i.bx = add i32 %.pre2.i, 1
  br label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.lr.ph.i25, %.lr.ph.preheader.i
  %.sroa.053.0 = phi ptr [ %i.bu, %.lr.ph.preheader.i ], [ %i.cb, %.lr.ph.i25 ]
  %i.by = phi i32 [ %i.bx, %.lr.ph.preheader.i ], [ %i.ce, %.lr.ph.i25 ]
  %i.bz = phi ptr [ %i.bw, %.lr.ph.preheader.i ], [ %i.ca, %.lr.ph.i25 ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.053.0, i64 -4 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !2268, !noalias !12089
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12089
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !2268, !noalias !12089
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !2268, !noalias !12089
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !2268, !noalias !12089
  %i.ce = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12089 ; 2 uses
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12089
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !11224

.thread88:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  %.pre124 = load ptr, ptr %12, align 8, !tbaa !11108 ; 3 uses
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.preheader.i26

.lr.ph.preheader.i26:                             ; preds = %.thread88
  %.pre.i27 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12092
  %i.cg = add i32 %.pre.i27, 1
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i28, %.lr.ph.preheader.i26
  %.sroa.047.0 = phi ptr [ %.pre124, %.lr.ph.preheader.i26 ], [ %i.ck, %.lr.ph.i28 ]
  %.sroa.046.0 = phi ptr [ %i.bt, %.lr.ph.preheader.i26 ], [ %i.cl, %.lr.ph.i28 ]
  %i.ch = phi i32 [ %i.cg, %.lr.ph.preheader.i26 ], [ %i.cp, %.lr.ph.i28 ]
  %i.ci = phi ptr [ %i.bu, %.lr.ph.preheader.i26 ], [ %i.cj, %.lr.ph.i28 ]
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -4 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.047.0, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !2268, !noalias !12092
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12092
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !2268, !noalias !12092
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !2268, !noalias !12092
  %i.co = load i32, ptr %i.cj, align 4, !tbaa !2268, !noalias !12092
  store i32 %i.co, ptr %i.ck, align 4, !tbaa !2268, !noalias !12092
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !2268, !noalias !12092
  %i.cp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12092 ; 2 uses
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12092
  %.not.i29 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i29, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i28, !llvm.loop !11285

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %.pre2.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12095
  %i.cr = add i32 %.pre2.i.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.0.i = phi ptr [ %storemerge.i, %.lr.ph.preheader.i.i ], [ %i.cv, %.lr.ph.i.i ]
  %i.cs = phi i32 [ %i.cr, %.lr.ph.preheader.i.i ], [ %i.cy, %.lr.ph.i.i ]
  %i.ct = phi ptr [ %i.bq, %.lr.ph.preheader.i.i ], [ %i.cu, %.lr.ph.i.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !2268, !noalias !12095
  store i32 %i.cs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12095
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !2268, !noalias !12095
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !2268, !noalias !12095
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !2268, !noalias !12095
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12095 ; 2 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12095
  %.not.i.i30 = icmp eq ptr %i.cu, %i.z
  br i1 %.not.i.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !11224

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i28, %.lr.ph.i25, %.lr.ph.i.i, %.thread88, %bb.l, %.thread87, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread87 ], [ %i.ac, %.lr.ph.i.i ], [ %.pre124, %.thread88 ], [ %i.ac, %bb.l ], [ %.pre124, %.lr.ph.i28 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bu, %.thread87 ], [ %i.cv, %.lr.ph.i.i ], [ %i.bt, %.thread88 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i28 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !11108
  %i.db = load ptr, ptr %1, align 8, !tbaa !4143  ; 6 uses
  %.neg91 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg91 ; 3 uses
  %.not.i31 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i31, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg91, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -8 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !85
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !85
  store i64 %i.df, ptr %i.de, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dh = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.di = icmp eq ptr %i.dc, %i.dh
  br i1 %i.di, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp eq ptr %i.dh, %i.db
  br i1 %i.dj, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dc, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre125 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  %i.dk = phi ptr [ %i.db, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test12copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.db, %bb.o ], [ %.pre125, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !11108
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !4143
  %i.dm = icmp ne i64 %.0104, 0
  %.neg = sext i1 %i.dm to i64
  %i.dn = add i64 %.0104, %.neg
  %i.do = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.do to i64
  %i.dp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dq = add i64 %.086103, -1                    ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12100

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.dr = load ptr, ptr %6, align 8, !tbaa !11108
  store ptr %i.dr, ptr %0, align 8, !tbaa !11108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2268
  store i32 %i.c, ptr %4, align 4, !tbaa !2268
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.d
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %5, -1                           ; 3 uses
  %xtraiter45 = and i64 %i.e, 1
  %i.f = icmp eq i64 %5, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter50 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter51 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter51.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2268
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2268
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter51.next.1 = add i64 %niter51, 2           ; 2 uses
  %niter51.ncmp.1 = icmp eq i64 %niter51.next.1, %unroll_iter50
  br i1 %niter51.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !11044

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 5 uses
  %i.m = add i64 %5, -1                           ; 2 uses
  %i.n = add i64 %5, -2
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.p, align 4, !tbaa !2268
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 %load_initial, ptr %i.r, align 4, !tbaa !2268
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %load_initial, ptr %i.t, align 4, !tbaa !2268
  %storemerge6.in.i.2 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.2 = add i32 %storemerge6.in.i.2, 1
  store i32 %storemerge6.i.2, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.2 = add i64 %storemerge13.i, 3    ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.2
  store i32 %load_initial, ptr %i.u, align 4, !tbaa !2268
  %storemerge6.in.i.3 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.3 = add i32 %storemerge6.in.i.3, 1
  store i32 %storemerge6.i.3, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.3 = add i64 %storemerge13.i, 4    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit42.unr-lcssa, label %.lr.ph.i, !llvm.loop !11044

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod47.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod49 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod49)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init
  %i.x = load i32, ptr %i.w, align 4, !tbaa !2268
  store i32 %i.x, ptr %i.v, align 4, !tbaa !2268
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit42.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.3, %.loopexit.loopexit42.unr-lcssa ]
  %lcmp.mod44 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod44)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %storemerge13.i.epil = phi i64 [ %storemerge.i.epil, %.lr.ph.i.epil ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil
  store i32 %load_initial, ptr %i.y, align 4, !tbaa !2268
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.epil = add i64 %storemerge13.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.epil, !llvm.loop !12101

.loopexit:                                        ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.epil, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i.2, %.loopexit.loopexit42.unr-lcssa ], [ %storemerge13.i.epil, %.lr.ph.i.epil ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !2268
  store i32 %i.aa, ptr %0, align 4, !tbaa !2268
  %i.ab = ptrtoint ptr %2 to i64
  %i.ac = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ac, %i.af
  %i.ah = ashr exact i64 %i.ag, 2
  %i.ai = load ptr, ptr %3, align 8, !tbaa !12102, !nonnull !849
  store ptr %i.ai, ptr %7, align 8, !tbaa !11090
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test12copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ah, i64 noundef %i.ae, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter58 = and i64 %5, 3                     ; 3 uses
  %i.aj = icmp ult i64 %5, 4
  br i1 %i.aj, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter62 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.az, %.preheader.i.i.i ] ; 5 uses
  %niter63 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter63.next.3, %.preheader.i.i.i ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !2268
  %i.al = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !2268
  %i.ap = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !2268
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !2268
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.az = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !10929

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %xtraiter52 = and i64 %5, 3                     ; 3 uses
  %i.bb = icmp ult i64 %5, 4
  br i1 %i.bb, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter56 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.br, %bb.d ] ; 5 uses
  %niter57 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter57.next.3, %bb.d ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.bc, align 4, !tbaa !2268
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.be = add i32 %i.bd, -1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !2268
  %i.bh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !2268
  %i.bl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !2268
  %i.bp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.br = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter57.next.3 = add i64 %niter57, 4           ; 2 uses
  %niter57.ncmp.3 = icmp eq i64 %niter57.next.3, %unroll_iter56
  br i1 %niter57.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !10929

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod54.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod54.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.br, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter52, 0
  call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bv, %bb.e ] ; 2 uses
  %epil.iter53 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter53.next, %bb.e ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !2268
  %i.bt = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bv = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter53.next = add i64 %epil.iter53, 1     ; 2 uses
  %epil.iter53.cmp.not = icmp eq i64 %epil.iter53.next, %xtraiter52
  br i1 %epil.iter53.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !12104

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ba

bb.f:                                             ; preds = %bb.b
  %i.bw = load ptr, ptr %3, align 8, !tbaa !12102, !nonnull !849
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bx = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.by = ptrtoint ptr %0 to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 2
  %i.cb = ptrtoint ptr %2 to i64
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = ashr exact i64 %i.cc, 2
  store ptr %i.bw, ptr %6, align 8, !tbaa !11090
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ca, i64 noundef %i.cd, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod60.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod60.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.az, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter58, 0
  call void @llvm.assume(i1 %lcmp.mod61)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.ch, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter59 = phi i64 [ %epil.iter59.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !2268
  %i.cf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ch = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter59.next = add i64 %epil.iter59, 1     ; 2 uses
  %epil.iter59.cmp.not = icmp eq i64 %epil.iter59.next, %xtraiter58
  br i1 %epil.iter59.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !12105

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test12copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2268 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !2268   ; 2 uses
  %.not90 = icmp slt i32 %i.b, %i.c
  br i1 %.not90, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test12copyable_intEES8_NS_11move_detail8identityIS8_EEEEEEPS8_SF_NS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 9 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i45, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck317 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dd, %middle.block346 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.de, %middle.block346 ]
  %.ph355 = phi ptr [ %i.ck, %vector.memcheck317 ], [ %i.ck, %.lr.ph.i29.preheader ], [ %i.df, %middle.block346 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader354, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader354 ]
  %.sroa.045.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader354 ]
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i29 ], [ %.ph355, %.lr.ph.i29.preheader354 ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !2753, !noalias !13624
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !2753, !noalias !13624
  store i32 0, ptr %i.dn, align 4, !tbaa !2753, !noalias !13624
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !2753, !noalias !13624
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2753, !noalias !13624
  store i32 0, ptr %i.dm, align 4, !tbaa !2753, !noalias !13624
  %.not.i30 = icmp eq ptr %i.dm, %i.au
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !13626

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dr = add i64 %i.v, %i.cl                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.du = add i64 %i.x, %i.cl
  %i.dv = lshr i64 %i.du, 2
  %i.dw = mul i64 %i.dv, -4                       ; 2 uses
  %scevgep311 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 -4
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.dw
  %bound0 = icmp ult ptr %scevgep311, %i.ck
  %bound1 = icmp ult ptr %scevgep313, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.dx = mul i64 %n.vec, -4                      ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.064.0, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ck, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.ea ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.ck, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eb, align 4, !tbaa !2753, !alias.scope !13627, !noalias !13630
  %wide.load315 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !2753, !alias.scope !13627, !noalias !13630
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ed, align 4, !tbaa !2753, !alias.scope !13635, !noalias !13637
  store <4 x i32> %wide.load315, ptr %i.ee, align 4, !tbaa !2753, !alias.scope !13635, !noalias !13637
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !2753, !alias.scope !13627, !noalias !13630
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !2753, !alias.scope !13627, !noalias !13630
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !13638

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  %.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader352 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !2753, !noalias !13630
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !2753, !noalias !13630
  store i32 0, ptr %i.eh, align 4, !tbaa !2753, !noalias !13630
  %.not.i.i31 = icmp eq ptr %i.eh, %i.au
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13639

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block346, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.au, %bb.s ], [ %i.ei, %.lr.ph.i.i ], [ %i.ck, %bb.t ], [ %i.cp, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dy, %middle.block ], [ %i.de, %middle.block346 ], [ %i.do, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13337
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.p, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.au, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.en = load i64, ptr %i.el, align 8, !tbaa !85
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !85
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !85
  store i64 %i.en, ptr %i.em, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ep = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.eq = icmp eq ptr %i.ek, %i.ep
  br i1 %i.eq, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = icmp eq ptr %i.ep, %i.p
  br i1 %i.er, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.p, %bb.y ], [ %i.ek, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.es = phi ptr [ %i.p, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.p, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.au, ptr %3, align 8, !tbaa !13337
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  store ptr %i.et, ptr %1, align 8, !tbaa !4143
  %i.eu = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eu to i64
  %i.ev = add i64 %.0140, %.neg
  %i.ew = icmp ne i64 %i.at, 0
  %.neg24 = sext i1 %i.ew to i64
  %i.ex = add i64 %.sroa.speculated, %.neg24
  %i.ey = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ey, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !13640

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ez = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.ez, ptr %0, align 8, !tbaa !13337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2753
  store i32 %i.c, ptr %3, align 4, !tbaa !2753
  store i32 0, ptr %0, align 4, !tbaa !2753
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %4, -1                           ; 3 uses
  %xtraiter44 = and i64 %i.e, 1
  %i.f = icmp eq i64 %4, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter48 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter49 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter49.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2753
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2753
  store i32 0, ptr %i.h, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2753
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2753
  store i32 0, ptr %i.k, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13230

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 3 uses
  %i.m = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %4, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !2753
  store i32 0, ptr %i.p, align 4, !tbaa !2753
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !2753
  store i32 0, ptr %i.r, align 4, !tbaa !2753
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit41.unr-lcssa, label %.lr.ph.i, !llvm.loop !13230

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2753
  store i32 %i.u, ptr %i.s, align 4, !tbaa !2753
  store i32 0, ptr %i.t, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit41.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !2753
  store i32 0, ptr %i.w, align 4, !tbaa !2753
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2753
  store i32 %i.y, ptr %0, align 4, !tbaa !2753
  store i32 0, ptr %i.x, align 4, !tbaa !2753
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter55 = and i64 %4, 3                     ; 3 uses
  %i.ag = icmp ult i64 %4, 4
  br i1 %i.ag, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter59 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aw, %.preheader.i.i.i ] ; 5 uses
  %niter60 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter60.next.3, %.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !2753
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !2753
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !2753
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !2753
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add i64 %niter60, 4           ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !13118

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %xtraiter50 = and i64 %4, 3                     ; 3 uses
  %i.ay = icmp ult i64 %4, 4
  br i1 %i.ay, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter53 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter54 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter54.next.3, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !2753
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !2753
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !2753
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !2753
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !13118

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bo, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bs, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !2753
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !13641

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %bb.b
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = sub i64 %i.bx, %i.bt
  %i.bz = ashr exact i64 %i.by, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cd, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i64 [ %epil.iter56.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !2753
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !13642

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  store ptr %i.z, ptr %15, align 8, !tbaa !13337
  %i.bs = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.bs, ptr %16, align 8, !tbaa !13337
  call void @_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.268") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dead_on_return %16, i1 noundef zeroext %11)
  %i.bt = load ptr, ptr %13, align 8, !tbaa !13337 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !13337
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.bu = load ptr, ptr %3, align 8, !tbaa !13337 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  %i.bw = load ptr, ptr %12, align 8, !tbaa !13337 ; 6 uses
  br i1 %i.bv, label %.thread83, label %.thread84

.thread83:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread83 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !2753, !noalias !14787
  store i32 0, ptr %i.by, align 4, !tbaa !2753, !noalias !14787
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14787
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14787
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !2753, !noalias !14787
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !2753, !noalias !14787
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !2753, !noalias !14787
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14787
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14787
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !13478

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread84 ]
  %.sroa.042.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread84 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread84 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !2753, !noalias !14790
  store i32 0, ptr %i.cj, align 4, !tbaa !2753, !noalias !14790
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14790
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14790
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !2753, !noalias !14790
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !2753, !noalias !14790
  store i32 0, ptr %i.ci, align 4, !tbaa !2753, !noalias !14790
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !2753, !noalias !14790
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !2753, !noalias !14790
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !2753, !noalias !14790
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14790
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14790
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !13565

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !2753, !noalias !14793
  store i32 0, ptr %i.cs, align 4, !tbaa !2753, !noalias !14793
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14793
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14793
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !2753, !noalias !14793
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !2753, !noalias !14793
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !2753, !noalias !14793
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14793
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14793
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13478

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread84 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13337
  %i.db = load ptr, ptr %1, align 8, !tbaa !4143  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -8 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !85
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !85
  store i64 %i.df, ptr %i.de, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dh = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.di = icmp eq ptr %i.dc, %i.dh
  br i1 %i.di, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp eq ptr %i.dh, %i.db
  br i1 %i.dj, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dc, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  %i.dk = phi ptr [ %i.db, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.db, %bb.o ], [ %.pre124, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !13337
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !4143
  %i.dm = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dm to i64
  %i.dn = add i64 %.0100, %.neg
  %i.do = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.do to i64
  %i.dp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dq = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !14798

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.dr = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.dr, ptr %0, align 8, !tbaa !13337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.270", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.270", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2753
  store i32 %i.c, ptr %4, align 4, !tbaa !2753
  store i32 0, ptr %0, align 4, !tbaa !2753
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.d
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %5, -1                           ; 3 uses
  %xtraiter45 = and i64 %i.e, 1
  %i.f = icmp eq i64 %5, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter49 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter50 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter50.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2753
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2753
  store i32 0, ptr %i.h, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2753
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2753
  store i32 0, ptr %i.k, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter50.next.1 = add i64 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13230

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 3 uses
  %i.m = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %5, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !2753
  store i32 0, ptr %i.p, align 4, !tbaa !2753
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !2753
  store i32 0, ptr %i.r, align 4, !tbaa !2753
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit42.unr-lcssa, label %.lr.ph.i, !llvm.loop !13230

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2753
  store i32 %i.u, ptr %i.s, align 4, !tbaa !2753
  store i32 0, ptr %i.t, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit42.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit42.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !2753
  store i32 0, ptr %i.w, align 4, !tbaa !2753
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2753
  store i32 %i.y, ptr %0, align 4, !tbaa !2753
  store i32 0, ptr %i.x, align 4, !tbaa !2753
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load ptr, ptr %3, align 8, !tbaa !13575, !nonnull !849
  store ptr %i.ag, ptr %7, align 8, !tbaa !13309
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter56 = and i64 %5, 3                     ; 3 uses
  %i.ah = icmp ult i64 %5, 4
  br i1 %i.ah, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter60 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ax, %.preheader.i.i.i ] ; 5 uses
  %niter61 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter61.next.3, %.preheader.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ai, align 4, !tbaa !2753
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !2753
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !2753
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !2753
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !13118

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %5, 3                     ; 3 uses
  %i.az = icmp ult i64 %5, 4
  br i1 %i.az, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter54 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bp, %bb.d ] ; 5 uses
  %niter55 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter55.next.3, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !2753
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !2753
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !2753
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !2753
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bp = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter55.next.3 = add i64 %niter55, 4           ; 2 uses
  %niter55.ncmp.3 = icmp eq i64 %niter55.next.3, %unroll_iter54
  br i1 %niter55.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !13118

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bp, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter51, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !2753
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bt = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter51
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !14799

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %3, align 8, !tbaa !13575, !nonnull !849
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  store ptr %i.bu, ptr %6, align 8, !tbaa !13309
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ax, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  call void @llvm.assume(i1 %lcmp.mod59)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter57 = phi i64 [ %epil.iter57.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !2753
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareINSA_16less_transparentESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  %.sroa.046.0.ph = phi ptr [ %.sroa.069.0, %vector.memcheck317 ], [ %.sroa.069.0, %.lr.ph.i29.preheader ], [ %i.dd, %middle.block346 ]
  %.sroa.045.0.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i29.preheader ], [ %i.de, %middle.block346 ]
  %.ph355 = phi ptr [ %i.ck, %vector.memcheck317 ], [ %i.ck, %.lr.ph.i29.preheader ], [ %i.df, %middle.block346 ]
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %.lr.ph.i29.preheader354, %.lr.ph.i29
  %.sroa.046.0 = phi ptr [ %i.dn, %.lr.ph.i29 ], [ %.sroa.046.0.ph, %.lr.ph.i29.preheader354 ]
  %.sroa.045.0 = phi ptr [ %i.do, %.lr.ph.i29 ], [ %.sroa.045.0.ph, %.lr.ph.i29.preheader354 ]
  %i.dl = phi ptr [ %i.dm, %.lr.ph.i29 ], [ %.ph355, %.lr.ph.i29.preheader354 ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.sroa.046.0, i64 -4 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !2753, !noalias !16240
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !2753, !noalias !16240
  store i32 0, ptr %i.dn, align 4, !tbaa !2753, !noalias !16240
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !2753, !noalias !16240
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !2753, !noalias !16240
  store i32 0, ptr %i.dm, align 4, !tbaa !2753, !noalias !16240
  %.not.i30 = icmp eq ptr %i.dm, %i.au
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i29, !llvm.loop !16242

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dr = add i64 %i.v, %i.cl                     ; 2 uses
  %i.ds = lshr i64 %i.dr, 2
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dr, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader352, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.064.0, i64 -4
  %i.du = add i64 %i.x, %i.cl
  %i.dv = lshr i64 %i.du, 2
  %i.dw = mul i64 %i.dv, -4                       ; 2 uses
  %scevgep311 = getelementptr i8, ptr %scevgep, i64 %i.dw
  %scevgep312 = getelementptr i8, ptr %i.ck, i64 -4
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %i.dw
  %bound0 = icmp ult ptr %scevgep311, %i.ck
  %bound1 = icmp ult ptr %scevgep313, %.sroa.064.0
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dt, 9223372036854775800     ; 3 uses
  %i.dx = mul i64 %n.vec, -4                      ; 2 uses
  %i.dy = getelementptr i8, ptr %.sroa.064.0, i64 %i.dx ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ck, i64 %i.dx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ea = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.064.0, i64 %i.ea ; 2 uses
  %next.gep314 = getelementptr i8, ptr %i.ck, i64 %i.ea ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %next.gep314, i64 -16 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %next.gep314, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.eb, align 4, !tbaa !2753, !alias.scope !16243, !noalias !16246
  %wide.load315 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !2753, !alias.scope !16243, !noalias !16246
  %i.ed = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ed, align 4, !tbaa !2753, !alias.scope !16251, !noalias !16253
  store <4 x i32> %wide.load315, ptr %i.ee, align 4, !tbaa !2753, !alias.scope !16251, !noalias !16253
  store <4 x i32> zeroinitializer, ptr %i.eb, align 4, !tbaa !2753, !alias.scope !16243, !noalias !16246
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !2753, !alias.scope !16243, !noalias !16246
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !16254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i.preheader352

.lr.ph.i.i.preheader352:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.dy, %middle.block ]
  %.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader352, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader352 ]
  %i.eg = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader352 ]
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 4 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !2753, !noalias !16246
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !2753, !noalias !16246
  store i32 0, ptr %i.eh, align 4, !tbaa !2753, !noalias !16246
  %.not.i.i31 = icmp eq ptr %i.eh, %i.au
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !16255

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block346, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.au, %bb.s ], [ %i.ei, %.lr.ph.i.i ], [ %i.ck, %bb.t ], [ %i.cp, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dy, %middle.block ], [ %i.de, %middle.block346 ], [ %i.do, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13337
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.p, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.au, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.en = load i64, ptr %i.el, align 8, !tbaa !85
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !85
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !85
  store i64 %i.en, ptr %i.em, align 8, !tbaa !85
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.ep = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.eq = icmp eq ptr %i.ek, %i.ep
  br i1 %i.eq, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.er = icmp eq ptr %i.ep, %i.p
  br i1 %i.er, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.p, %bb.y ], [ %i.ek, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre194 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.z, %.sink.split.i
  %i.es = phi ptr [ %i.p, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.p, %bb.z ], [ %.pre194, %.sink.split.i ]
  store ptr %i.au, ptr %3, align 8, !tbaa !13337
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  store ptr %i.et, ptr %1, align 8, !tbaa !4143
  %i.eu = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.eu to i64
  %i.ev = add i64 %.0140, %.neg
  %i.ew = icmp ne i64 %i.at, 0
  %.neg24 = sext i1 %i.ew to i64
  %i.ex = add i64 %.sroa.speculated, %.neg24
  %i.ey = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.ey, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !16256

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.ez = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.ez, ptr %0, align 8, !tbaa !13337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SD_SD_T0_T1_NS0_9iter_sizeISD_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2753
  store i32 %i.c, ptr %3, align 4, !tbaa !2753
  store i32 0, ptr %0, align 4, !tbaa !2753
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %4, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %4, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.d
  %bound0 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %4, -1                           ; 3 uses
  %xtraiter44 = and i64 %i.e, 1
  %i.f = icmp eq i64 %4, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter48 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter49 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter49.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2753
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2753
  store i32 0, ptr %i.h, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2753
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2753
  store i32 0, ptr %i.k, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter49.next.1 = add i64 %niter49, 2           ; 2 uses
  %niter49.ncmp.1 = icmp eq i64 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13230

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %3, align 4       ; 3 uses
  %i.m = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %4, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !2753
  store i32 0, ptr %i.p, align 4, !tbaa !2753
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !2753
  store i32 0, ptr %i.r, align 4, !tbaa !2753
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit41.unr-lcssa, label %.lr.ph.i, !llvm.loop !13230

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2753
  store i32 %i.u, ptr %i.s, align 4, !tbaa !2753
  store i32 0, ptr %i.t, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit41.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit41.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !2753
  store i32 0, ptr %i.w, align 4, !tbaa !2753
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit41.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit41.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2753
  store i32 %i.y, ptr %0, align 4, !tbaa !2753
  store i32 0, ptr %i.x, align 4, !tbaa !2753
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_SG_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %3, i64 noundef %4)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter55 = and i64 %4, 3                     ; 3 uses
  %i.ag = icmp ult i64 %4, 4
  br i1 %i.ag, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter59 = and i64 %4, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.aw, %.preheader.i.i.i ] ; 5 uses
  %niter60 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter60.next.3, %.preheader.i.i.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ah, align 4, !tbaa !2753
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aj = add i32 %i.ai, -1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !2753
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.an = add i32 %i.am, -1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 -2147483648, ptr %i.ap, align 4, !tbaa !2753
  %i.aq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !2753
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aw = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter60.next.3 = add i64 %niter60, 4           ; 2 uses
  %niter60.ncmp.3 = icmp eq i64 %niter60.next.3, %unroll_iter59
  br i1 %niter60.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !13118

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %xtraiter50 = and i64 %4, 3                     ; 3 uses
  %i.ay = icmp ult i64 %4, 4
  br i1 %i.ay, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter53 = and i64 %4, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bo, %bb.d ] ; 5 uses
  %niter54 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter54.next.3, %bb.d ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !2753
  %i.ba = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !2753
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !2753
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !2753
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bo = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter54.next.3 = add i64 %niter54, 4           ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !13118

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod51.not = icmp eq i64 %xtraiter50, 0
  br i1 %lcmp.mod51.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bo, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter50, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bs, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bp, align 4, !tbaa !2753
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bs = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter50
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !16257

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ax

bb.f:                                             ; preds = %bb.b
  %i.bt = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bu = ptrtoint ptr %0 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 2
  %i.bx = ptrtoint ptr %2 to i64
  %i.by = sub i64 %i.bx, %i.bt
  %i.bz = ashr exact i64 %i.by, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bw, i64 noundef %i.bz)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod57.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod57.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.aw, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = icmp ne i64 %xtraiter55, 0
  tail call void @llvm.assume(i1 %lcmp.mod58)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cd, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter56 = phi i64 [ %epil.iter56.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !2753
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cd = add nuw i64 %.07.i.i.i.epil, 1
  %epil.iter56.next = add i64 %epil.iter56, 1     ; 2 uses
  %epil.iter56.cmp.not = icmp eq i64 %epil.iter56.next, %xtraiter55
  br i1 %epil.iter56.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil, !llvm.loop !16258

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.a, %bb.f
  ret void
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test24movable_and_copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareINSA_16less_transparentESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEET3_T_SO_T0_T1_RT2_SR_SN_NS0_9iter_sizeISQ_E4typeESV_SV_SV_T4_bT5_:bb.a
  store ptr %i.z, ptr %15, align 8, !tbaa !13337
  %i.bs = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.bs, ptr %16, align 8, !tbaa !13337
  call void @_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareINS5_16less_transparentES6_NS_11move_detail8identityIS6_EEEEEENS0_7swap_opEEET1_RT_SK_RT0_SM_SN_SJ_T2_T3_b(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.268") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dead_on_return %16, i1 noundef zeroext %11)
  %i.bt = load ptr, ptr %13, align 8, !tbaa !13337 ; 4 uses
  store ptr %i.bt, ptr %6, align 8, !tbaa !13337
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.bu = load ptr, ptr %3, align 8, !tbaa !13337 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bt
  %i.bw = load ptr, ptr %12, align 8, !tbaa !13337 ; 6 uses
  br i1 %i.bv, label %.thread83, label %.thread84

.thread83:                                        ; preds = %.thread
  %.not1.i = icmp eq ptr %i.bw, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ]
  %i.bx = phi ptr [ %i.by, %.lr.ph.i25 ], [ %i.bw, %.thread83 ]
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 5 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 4 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !2753, !noalias !17397
  store i32 0, ptr %i.by, align 4, !tbaa !2753, !noalias !17397
  %i.cb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17397
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17397
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !2753, !noalias !17397
  store i32 %i.cd, ptr %i.by, align 4, !tbaa !2753, !noalias !17397
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !2753, !noalias !17397
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17397
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17397
  %.not.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i25, !llvm.loop !13478

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bu, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ci, %.lr.ph.i26 ], [ %i.bw, %.thread84 ]
  %.sroa.042.0 = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bt, %.thread84 ]
  %i.cg = phi ptr [ %i.ch, %.lr.ph.i26 ], [ %i.bu, %.thread84 ]
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 4 uses
  %i.cj = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 5 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !2753, !noalias !17400
  store i32 0, ptr %i.cj, align 4, !tbaa !2753, !noalias !17400
  %i.cl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17400
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17400
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !2753, !noalias !17400
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !2753, !noalias !17400
  store i32 0, ptr %i.ci, align 4, !tbaa !2753, !noalias !17400
  %i.co = load i32, ptr %i.ch, align 4, !tbaa !2753, !noalias !17400
  store i32 %i.co, ptr %i.ci, align 4, !tbaa !2753, !noalias !17400
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !2753, !noalias !17400
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17400
  %i.cq = add i32 %i.cp, -1
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17400
  %.not.i27 = icmp eq ptr %i.ch, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i26, !llvm.loop !13565

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bq, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ]
  %i.cr = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %i.bq, %bb.l ]
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4 ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !2753, !noalias !17403
  store i32 0, ptr %i.cs, align 4, !tbaa !2753, !noalias !17403
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17403
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17403
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !2753, !noalias !17403
  store i32 %i.cx, ptr %i.cs, align 4, !tbaa !2753, !noalias !17403
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !2753, !noalias !17403
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17403
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !17403
  %.not.i.i28 = icmp eq ptr %i.cs, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !13478

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.da = phi ptr [ %i.ac, %.loopexit ], [ %i.bw, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.bw, %.thread84 ], [ %i.ac, %bb.l ], [ %i.bw, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.bz, %.lr.ph.i25 ], [ %i.bu, %.thread83 ], [ %i.ct, %.lr.ph.i.i ], [ %i.bt, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cj, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !13337
  %i.db = load ptr, ptr %1, align 8, !tbaa !4143  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.da
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -8 ; 2 uses
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !85
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !85
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !85
  store i64 %i.df, ptr %i.de, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit.i
  %i.dh = load ptr, ptr %2, align 8, !tbaa !4143  ; 2 uses
  %i.di = icmp eq ptr %i.dc, %i.dh
  br i1 %i.di, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = icmp eq ptr %i.dh, %i.db
  br i1 %i.dj, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.db, %bb.n ], [ %i.dc, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4143
  %.pre124 = load ptr, ptr %1, align 8, !tbaa !4143
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit, %bb.o, %.sink.split.i
  %i.dk = phi ptr [ %i.db, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES7_EET0_T_S9_S8_.exit ], [ %i.db, %bb.o ], [ %.pre124, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !13337
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  store ptr %i.dl, ptr %1, align 8, !tbaa !4143
  %i.dm = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dm to i64
  %i.dn = add i64 %.0100, %.neg
  %i.do = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.do to i64
  %i.dp = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.dq = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dq, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !17408

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPNS_9container4test24movable_and_copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  %i.dr = load ptr, ptr %6, align 8, !tbaa !13337
  store ptr %i.dr, ptr %0, align 8, !tbaa !13337
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEES5_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.295", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.295", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !2753
  store i32 %i.c, ptr %4, align 4, !tbaa !2753
  store i32 0, ptr %0, align 4, !tbaa !2753
  %storemerge6.in8.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge69.i = add i32 %storemerge6.in8.i, 1
  store i32 %storemerge69.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not11.i = icmp eq i64 %5, 1
  br i1 %.not11.i, label %.loopexit, label %.lr.ph.i.lver.check

.lr.ph.i.lver.check:                              ; preds = %bb.c
  %i.d = shl i64 %5, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.d
  %bound0 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %scevgep, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.lver.orig.preheader, label %.lr.ph.i.ph

.lr.ph.i.lver.orig.preheader:                     ; preds = %.lr.ph.i.lver.check
  %i.e = add i64 %5, -1                           ; 3 uses
  %xtraiter45 = and i64 %i.e, 1
  %i.f = icmp eq i64 %5, 2
  br i1 %i.f, label %.lr.ph.i.lver.orig.epil.preheader, label %.lr.ph.i.lver.orig.preheader.new

.lr.ph.i.lver.orig.preheader.new:                 ; preds = %.lr.ph.i.lver.orig.preheader
  %unroll_iter49 = and i64 %i.e, -2
  br label %.lr.ph.i.lver.orig

.lr.ph.i.lver.orig:                               ; preds = %.lr.ph.i.lver.orig, %.lr.ph.i.lver.orig.preheader.new
  %storemerge13.i.lver.orig = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig.1, %.lr.ph.i.lver.orig ] ; 4 uses
  %storemerge.in712.i.lver.orig = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %storemerge.i.lver.orig, %.lr.ph.i.lver.orig ]
  %niter50 = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader.new ], [ %niter50.next.1, %.lr.ph.i.lver.orig ]
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2753
  store i32 %i.i, ptr %i.g, align 4, !tbaa !2753
  store i32 0, ptr %i.h, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig = add i32 %storemerge6.in.i.lver.orig, 1
  store i32 %storemerge6.i.lver.orig, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig = add i64 %storemerge13.i.lver.orig, 1 ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i.lver.orig
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !2753
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2753
  store i32 0, ptr %i.k, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.1 = add i32 %storemerge6.in.i.lver.orig.1, 1
  store i32 %storemerge6.i.lver.orig.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.lver.orig.1 = add i64 %storemerge13.i.lver.orig, 2 ; 2 uses
  %niter50.next.1 = add i64 %niter50, 2           ; 2 uses
  %niter50.ncmp.1 = icmp eq i64 %niter50.next.1, %unroll_iter49
  br i1 %niter50.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.lver.orig, !llvm.loop !13230

.lr.ph.i.ph:                                      ; preds = %.lr.ph.i.lver.check
  %load_initial = load i32, ptr %4, align 4       ; 3 uses
  %i.m = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %5, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.ph.new

.lr.ph.i.ph.new:                                  ; preds = %.lr.ph.i.ph
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.ph.new
  %storemerge13.i = phi i64 [ 1, %.lr.ph.i.ph.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in712.i = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.ph.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i
  store i32 %load_initial, ptr %i.o, align 4, !tbaa !2753
  store i32 0, ptr %i.p, align 4, !tbaa !2753
  %storemerge6.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i = add i32 %storemerge6.in.i, 1
  store i32 %storemerge6.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i = add i64 %storemerge13.i, 1      ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i
  store i32 %load_initial, ptr %i.q, align 4, !tbaa !2753
  store i32 0, ptr %i.r, align 4, !tbaa !2753
  %storemerge6.in.i.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.1 = add i32 %storemerge6.in.i.1, 1
  store i32 %storemerge6.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge.i.1 = add i64 %storemerge13.i, 2    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit42.unr-lcssa, label %.lr.ph.i, !llvm.loop !13230

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.lver.orig
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.loopexit, label %.lr.ph.i.lver.orig.epil.preheader

.lr.ph.i.lver.orig.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.lver.orig.preheader
  %storemerge13.i.lver.orig.epil.init = phi i64 [ 1, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.lver.orig.epil.init = phi i64 [ 0, %.lr.ph.i.lver.orig.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod48 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.lver.orig.epil.init
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.lver.orig.epil.init ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !2753
  store i32 %i.u, ptr %i.s, align 4, !tbaa !2753
  store i32 0, ptr %i.t, align 4, !tbaa !2753
  %storemerge6.in.i.lver.orig.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.lver.orig.epil = add i32 %storemerge6.in.i.lver.orig.epil, 1
  store i32 %storemerge6.i.lver.orig.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit.loopexit42.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.ph
  %storemerge13.i.epil.init = phi i64 [ 1, %.lr.ph.i.ph ], [ %storemerge.i.1, %.loopexit.loopexit42.unr-lcssa ] ; 2 uses
  %storemerge.in712.i.epil.init = phi i64 [ 0, %.lr.ph.i.ph ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ]
  %lcmp.mod44 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod44)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge13.i.epil.init
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in712.i.epil.init
  store i32 %load_initial, ptr %i.v, align 4, !tbaa !2753
  store i32 0, ptr %i.w, align 4, !tbaa !2753
  %storemerge6.in.i.epil = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %storemerge6.i.epil = add i32 %storemerge6.in.i.epil, 1
  store i32 %storemerge6.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit42.unr-lcssa, %.lr.ph.i.lver.orig.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge13.i.lver.orig.epil.init, %.lr.ph.i.lver.orig.epil.preheader ], [ %storemerge.i.lver.orig, %.loopexit.loopexit.unr-lcssa ], [ %storemerge.i, %.loopexit.loopexit42.unr-lcssa ], [ %storemerge13.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !2753
  store i32 %i.y, ptr %0, align 4, !tbaa !2753
  store i32 0, ptr %i.x, align 4, !tbaa !2753
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load ptr, ptr %3, align 8, !tbaa !16191, !nonnull !849
  store ptr %i.ag, ptr %7, align 8, !tbaa !15931
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intES5_NS0_10antistableINS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.af, i64 noundef %i.ac, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %.preheader.i.i.i.preheader unwind label %.preheader.i.i.i27

.preheader.i.i.i.preheader:                       ; preds = %.loopexit
  %xtraiter56 = and i64 %5, 3                     ; 3 uses
  %i.ah = icmp ult i64 %5, 4
  br i1 %i.ah, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter60 = and i64 %5, -4
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.ax, %.preheader.i.i.i ] ; 5 uses
  %niter61 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter61.next.3, %.preheader.i.i.i ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  store i32 -2147483648, ptr %i.ai, align 4, !tbaa !2753
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 -2147483648, ptr %i.am, align 4, !tbaa !2753
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !2753
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !2753
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aw = add i32 %i.av, -1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add nuw i64 %.07.i.i.i, 4               ; 2 uses
  %niter61.next.3 = add i64 %niter61, 4           ; 2 uses
  %niter61.ncmp.3 = icmp eq i64 %niter61.next.3, %unroll_iter60
  br i1 %niter61.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !13118

.preheader.i.i.i27:                               ; preds = %.loopexit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %xtraiter51 = and i64 %5, 3                     ; 3 uses
  %i.az = icmp ult i64 %5, 4
  br i1 %i.az, label %.epil.preheader, label %.preheader.i.i.i27.new

.preheader.i.i.i27.new:                           ; preds = %.preheader.i.i.i27
  %unroll_iter54 = and i64 %5, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i.i.i27.new
  %.07.i.i.i28 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %i.bp, %bb.d ] ; 5 uses
  %niter55 = phi i64 [ 0, %.preheader.i.i.i27.new ], [ %niter55.next.3, %bb.d ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !2753
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 -2147483648, ptr %i.be, align 4, !tbaa !2753
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bg = add i32 %i.bf, -1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 -2147483648, ptr %i.bi, align 4, !tbaa !2753
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 -2147483648, ptr %i.bm, align 4, !tbaa !2753
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bp = add nuw i64 %.07.i.i.i28, 4             ; 2 uses
  %niter55.next.3 = add i64 %niter55, 4           ; 2 uses
  %niter55.ncmp.3 = icmp eq i64 %niter55.next.3, %unroll_iter54
  br i1 %niter55.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, label %bb.d, !llvm.loop !13118

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa: ; preds = %bb.d
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa, %.preheader.i.i.i27
  %.07.i.i.i28.epil.init = phi i64 [ 0, %.preheader.i.i.i27 ], [ %i.bp, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa ]
  %lcmp.mod53 = icmp ne i64 %xtraiter51, 0
  call void @llvm.assume(i1 %lcmp.mod53)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.07.i.i.i28.epil = phi i64 [ %.07.i.i.i28.epil.init, %.epil.preheader ], [ %i.bt, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i28.epil
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !2753
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bt = add nuw i64 %.07.i.i.i28.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter51
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30, label %bb.e, !llvm.loop !17409

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30: ; preds = %bb.e, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit30.unr-lcssa
  resume { ptr, i32 } %i.ay

bb.f:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %3, align 8, !tbaa !16191, !nonnull !849
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bw = ptrtoint ptr %0 to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = sub i64 %i.bz, %i.bv
  %i.cb = ashr exact i64 %i.ca, 2
  store ptr %i.bu, ptr %6, align 8, !tbaa !15931
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.by, i64 noundef %i.cb, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa: ; preds = %.preheader.i.i.i
  %lcmp.mod58.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod58.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.ax, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod59 = icmp ne i64 %xtraiter56, 0
  call void @llvm.assume(i1 %lcmp.mod59)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.cf, %.preheader.i.i.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter57 = phi i64 [ %epil.iter57.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.07.i.i.i.epil
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !2753
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = add nuw i64 %.07.i.i.i.epil, 1
end_hunk_9
