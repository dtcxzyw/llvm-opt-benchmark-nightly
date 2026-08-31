Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !69, !noalias !3303
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !69, !noalias !3303
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !69, !noalias !3303
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !69, !noalias !3303
  %.not.i30 = icmp eq ptr %i.ec, %i.av
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3305

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
  %wide.load327 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69, !noalias !3306
  %wide.load328 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !69, !noalias !3306
  %i.er = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.es = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.er, align 4, !tbaa !69, !noalias !3306
  store <4 x i32> %wide.load328, ptr %i.es, align 4, !tbaa !69, !noalias !3306
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.et, label %middle.block330, label %vector.body323, !llvm.loop !3311

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
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !69, !noalias !3306
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !69, !noalias !3306
  %.not.i.i31 = icmp eq ptr %i.ev, %i.av
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3312

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block363, %middle.block330, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.av, %bb.s ], [ %i.ex, %.lr.ph.i.i ], [ %i.cl, %bb.t ], [ %i.dj, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cz, %middle.block ], [ %i.em, %middle.block330 ], [ %i.du, %middle.block363 ], [ %i.ee, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2945
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
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !272
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !272
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !272
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !272
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fd = load ptr, ptr %2, align 8, !tbaa !3073  ; 2 uses
  %i.fe = icmp eq ptr %i.ey, %i.fd
  br i1 %i.fe, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = icmp eq ptr %i.fd, %i.o
  br i1 %i.ff, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.o, %bb.y ], [ %i.ey, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3073
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3073
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fg = phi ptr [ %i.o, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.o, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.av, ptr %3, align 8, !tbaa !2945
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !3073
  %i.fi = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fi to i64
  %i.fj = add i64 %.0140, %.neg
  %i.fk = icmp ne i64 %i.au, 0
  %.neg24 = sext i1 %i.fk to i64
  %i.fl = add i64 %.sroa.speculated, %.neg24
  %i.fm = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3313

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.fn = load ptr, ptr %6, align 8, !tbaa !2945
  store ptr %i.fn, ptr %0, align 8, !tbaa !2945
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2567 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !2564   ; 4 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %0, align 4, !tbaa !69     ; 4 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !69
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
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %storemerge10.i.i
  store i32 %i.o, ptr %i.v, align 4, !tbaa !69
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !3315

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.o, ptr %0, align 4, !tbaa !69
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !3316
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !3318
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !3319
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS2_mSC_EEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.tr91108, %.tr90107             ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.tr88106, align 4, !tbaa !69 ; 2 uses
  %i.k = load i32, ptr %.tr105, align 4, !tbaa !69 ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.j, ptr %.tr105, align 4, !tbaa !69
  store i32 %i.k, ptr %.tr88106, align 4, !tbaa !69
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
  %i.s = load i32, ptr %i.p, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr88106, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69
  %i.w = icmp slt i32 %i.v, %i.s                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.neg.i = xor i64 %i.t, -1
  %i.y = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.w, ptr %i.x, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.w, i64 %i.y, i64 %i.t      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !2861

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
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.af, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr105, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ah = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01316.i81, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.neg.i82 = xor i64 %i.ah, -1
  %i.am = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ak, ptr %.01316.i81, ptr %i.al ; 3 uses
  %.1.i84 = select i1 %i.ak, i64 %i.ah, i64 %i.am ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !2880

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
  %wide.load333 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !69, !alias.scope !4771, !noalias !4774
  %wide.load334 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !69, !alias.scope !4771, !noalias !4774
  %i.ff = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep331, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !69, !alias.scope !4780, !noalias !4781
  %wide.load336 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !69, !alias.scope !4780, !noalias !4781
  store <4 x i32> %wide.load335, ptr %i.fd, align 4, !tbaa !69, !alias.scope !4771, !noalias !4774
  store <4 x i32> %wide.load336, ptr %i.fe, align 4, !tbaa !69, !alias.scope !4771, !noalias !4774
  store <4 x i32> %wide.load333, ptr %i.ff, align 4, !tbaa !69, !alias.scope !4780, !noalias !4781
  store <4 x i32> %wide.load334, ptr %i.fg, align 4, !tbaa !69, !alias.scope !4780, !noalias !4781
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.fh, label %middle.block338, label %vector.body329, !llvm.loop !4782

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
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !69, !noalias !4781
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !69, !noalias !4781
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !69, !noalias !4781
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !69, !noalias !4781
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ba
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4783

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block372, %middle.block338, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ba, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cw, %bb.t ], [ %i.du, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dk, %middle.block ], [ %i.fa, %middle.block338 ], [ %i.ef, %middle.block372 ], [ %i.ep, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2945
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
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !272
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !272
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !272
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !272
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !3073  ; 2 uses
  %i.ft = icmp eq ptr %i.fn, %i.fs
  br i1 %i.ft, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq ptr %i.fs, %i.r
  br i1 %i.fu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.r, %bb.y ], [ %i.fn, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3073
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3073
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fv = phi ptr [ %i.r, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.r, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ba, ptr %3, align 8, !tbaa !2945
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !3073
  %i.fx = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fx to i64
  %i.fy = add i64 %.0140, %.neg
  %i.fz = icmp ne i64 %i.az, 0
  %.neg24 = sext i1 %i.fz to i64
  %i.ga = add i64 %.sroa.speculated, %.neg24
  %i.gb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4784

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gc = load ptr, ptr %6, align 8, !tbaa !2945
  store ptr %i.gc, ptr %0, align 8, !tbaa !2945
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2567 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !2927
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !2564   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %0, align 4, !tbaa !69     ; 4 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !69
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
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !4787

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %storemerge10.i.i
  store i32 %i.p, ptr %i.w, align 4, !tbaa !69
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !4788

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !69
  store ptr %i.j, ptr %6, align 8, !tbaa !2927
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !2927
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
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 13 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !4789

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2566 ; 3 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !2564  ; 7 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !69
  %wide.load149 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !69
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69
  store <4 x i32> %wide.load149, ptr %i.ad, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4790

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
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !69
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4791

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 2                     ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !2564  ; 8 uses
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
  %wide.load161 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !69
  %wide.load162 = load <4 x i32>, ptr %i.at, align 4, !tbaa !69
  %i.au = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !69
  store <4 x i32> %wide.load162, ptr %i.au, align 4, !tbaa !69
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.av, label %middle.block164, label %vector.body157, !llvm.loop !4792

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
  %i.aw = load i32, ptr %.079.i20.i, align 4, !tbaa !69
  store i32 %i.aw, ptr %.010.i19.i, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4793

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block164, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.aj, %bb.f ], [ %i.aq, %middle.block164 ], [ %i.ay, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i169 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS3_ISB_EESD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
.lr.ph.i34:                                       ; preds = %bb.x, %.lr.ph.i34
  %.sroa.059.0 = phi ptr [ %i.du, %.lr.ph.i34 ], [ %i.dl, %bb.x ]
  %i.dn = phi ptr [ %i.dq, %.lr.ph.i34 ], [ %.sroa.076.0, %bb.x ]
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1354, !noalias !8117
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1352, !noalias !8117 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %.sroa.059.0, align 8, !tbaa !1354, !noalias !8117
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1352, !noalias !8117 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dr, align 4, !tbaa !69, !noalias !8117
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !69, !noalias !8117
  store i32 %i.dx, ptr %i.dr, align 4, !tbaa !69, !noalias !8117
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !69, !noalias !8117
  %.not.i = icmp eq ptr %i.dq, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i34, !llvm.loop !7624

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container22stable_vector_iteratorIS4_Lb0EEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.dl, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.ee, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.eh, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.dy = phi ptr [ %i.eb, %.lr.ph.i35 ], [ %i.dl, %bb.z ]
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1354, !noalias !8120
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1352, !noalias !8120 ; 3 uses
  %i.ec = load ptr, ptr %.sroa.053.0, align 8, !tbaa !1354, !noalias !8125
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1352, !noalias !8125 ; 2 uses
  %i.ef = load ptr, ptr %.sroa.052.0, align 8, !tbaa !1354, !noalias !8128
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1352, !noalias !8128 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !69, !noalias !8131
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !69, !noalias !8131
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !69, !noalias !8131
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !69, !noalias !8131
  %.not.i36 = icmp eq ptr %i.eb, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35, !llvm.loop !7637

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.en = phi ptr [ %i.eq, %.lr.ph.i.i ], [ %i.dl, %bb.aa ]
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1354, !noalias !8132
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1352, !noalias !8132 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !69, !noalias !8132
  %i.et = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !8132
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1352, !noalias !8132 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !69, !noalias !8132
  %.not.i.i38 = icmp eq ptr %i.eq, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !7643

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.dl, %bb.x ], [ %i.ev, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.du, %.lr.ph.i34 ], [ %i.eh, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1450
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !272
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !272
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !272
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !3073  ; 2 uses
  %i.fd = icmp eq ptr %i.ex, %i.fc
  br i1 %i.fd, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = icmp eq ptr %i.fc, %i.c
  br i1 %i.fe, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.ex, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3073
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3073
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, %bb.ad, %.sink.split.i
  %i.ff = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit ], [ %i.c, %bb.ad ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1450
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 2 uses
  store ptr %i.fg, ptr %1, align 8, !tbaa !3073
  %i.fh = icmp ne i64 %.0148, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.0148, %.neg
  %i.fj = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg24
  %i.fl = add i64 %.0102147, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8137

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8138)
  %i.fm = load ptr, ptr %6, align 8, !tbaa !1450, !noalias !8138
  store ptr %i.fm, ptr %0, align 8, !tbaa !1450, !alias.scope !8138
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1450   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 4 uses
  store i32 %i.q, ptr %3, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %4, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !8141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader15

.lr.ph.i.preheader15:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader15, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge10.i
  store i32 %i.q, ptr %i.x, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !8142

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.q, ptr %i.p, align 8, !tbaa !69
  store ptr %i.a, ptr %8, align 8, !tbaa !1450
  store ptr %i.b, ptr %9, align 8, !tbaa !1450
  store ptr %i.d, ptr %10, align 8, !tbaa !1450
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1450
  store ptr %i.b, ptr %6, align 8, !tbaa !1450
  store ptr %i.d, ptr %7, align 8, !tbaa !1450
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.aa
  %i.ah = ashr exact i64 %i.ag, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.ad, i64 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !3316
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !3318
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !3319
  %i.f = load ptr, ptr %0, align 8, !tbaa !1450
  %i.g = load ptr, ptr %1, align 8, !tbaa !1450
  %i.h = load ptr, ptr %2, align 8, !tbaa !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !1450
  store ptr %i.g, ptr %8, align 8, !tbaa !1450
  store ptr %i.h, ptr %9, align 8, !tbaa !1450
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS4_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !1450
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1450
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !69   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.n, align 4, !tbaa !69
  store i32 %i.p, ptr %i.l, align 4, !tbaa !69
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.i, 16
  %i.s = load ptr, ptr %0, align 8, !tbaa !1450   ; 5 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %11, align 8, !tbaa !1450
  %i.t = load ptr, ptr %1, align 8, !tbaa !1450
  store ptr %i.t, ptr %12, align 8, !tbaa !1450
  %i.u = load ptr, ptr %2, align 8, !tbaa !1450
  store ptr %i.u, ptr %13, align 8, !tbaa !1450
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.w = icmp ugt i64 %3, %4
  br i1 %i.w, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit: ; preds = %bb.i
  %i.x = lshr i64 %3, 1                           ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !1354
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1352 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !1450
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1354, !noalias !8143 ; 3 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !1354, !noalias !8143 ; 3 uses
  %.not9.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not9.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, label %.lr.ph.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge: ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit
  %.pre77 = ptrtoint ptr %i.ad to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit

.lr.ph.i:                                         ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !69, !noalias !8143
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ak = phi ptr [ %i.v, %.lr.ph.i ], [ %i.aw, %bb.m ] ; 3 uses
  %.010.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 2 uses
  %i.al = lshr i64 %.010.i, 1                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1354, !noalias !8143
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1352, !noalias !8143
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.ak, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !69, !noalias !8143
  %i.ar = icmp slt i32 %i.aq, %i.aj
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.as = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !8143
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1352, !noalias !8143
  %.neg.i = xor i64 %i.al, -1
  %i.av = add i64 %.010.i, %.neg.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.aw = phi ptr [ %i.au, %bb.l ], [ %i.ak, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.av, %bb.l ], [ %i.al, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 2 uses
  %.not.i43 = icmp eq i64 %.1.i, 0
  br i1 %.not.i43, label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !7130

_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre76 = load ptr, ptr %i.aw, align 8, !tbaa !1354
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre77, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.af, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.ax = phi ptr [ %i.ac, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %.pre76, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.ay = phi ptr [ %i.v, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.aw, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %.pre-phi
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load ptr, ptr %.sroa.059.0, align 8, !tbaa !1354, !noalias !12053
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1352, !noalias !12053 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.el, align 4, !tbaa !69, !noalias !12053
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !69, !noalias !12053
  store i32 %i.er, ptr %i.el, align 4, !tbaa !69, !noalias !12053
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !69, !noalias !12053
  %.not.i = icmp eq ptr %i.ek, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i34, !llvm.loop !7624

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.ef, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.ey, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.fb, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.es = phi ptr [ %i.ev, %.lr.ph.i35 ], [ %i.ef, %bb.z ]
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1354, !noalias !12056
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1352, !noalias !12056 ; 3 uses
  %i.ew = load ptr, ptr %.sroa.053.0, align 8, !tbaa !1354, !noalias !12061
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1352, !noalias !12061 ; 2 uses
  %i.ez = load ptr, ptr %.sroa.052.0, align 8, !tbaa !1354, !noalias !12064
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1352, !noalias !12064 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !69, !noalias !12067
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !69, !noalias !12067
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !69, !noalias !12067
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !69, !noalias !12067
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !69, !noalias !12067
  store i32 %i.fd, ptr %i.fg, align 4, !tbaa !69, !noalias !12067
  %.not.i36 = icmp eq ptr %i.ev, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35, !llvm.loop !7864

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.fi = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %i.ef, %bb.aa ]
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1354, !noalias !12068
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1352, !noalias !12068 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !12068
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1352, !noalias !12068 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fm, align 4, !tbaa !69, !noalias !12068
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !69, !noalias !12068
  store i32 %i.fs, ptr %i.fm, align 4, !tbaa !69, !noalias !12068
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !69, !noalias !12068
  %.not.i.i38 = icmp eq ptr %i.fl, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !7624

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.ef, %bb.x ], [ %i.fp, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.eo, %.lr.ph.i34 ], [ %i.fb, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1450
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !272
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !272
  store i64 %i.fx, ptr %i.fu, align 8, !tbaa !272
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fy = load ptr, ptr %2, align 8, !tbaa !3073  ; 2 uses
  %i.fz = icmp eq ptr %i.ft, %i.fy
  br i1 %i.fz, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = icmp eq ptr %i.fy, %i.c
  br i1 %i.ga, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.ft, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3073
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3073
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, %bb.ad, %.sink.split.i
  %i.gb = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit ], [ %i.c, %bb.ad ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1450
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8 ; 2 uses
  store ptr %i.gc, ptr %1, align 8, !tbaa !3073
  %i.gd = icmp ne i64 %.0148, 0
  %.neg = sext i1 %i.gd to i64
  %i.ge = add i64 %.0148, %.neg
  %i.gf = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.gf to i64
  %i.gg = add i64 %.sroa.speculated, %.neg24
  %i.gh = add i64 %.0102147, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12073

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12074)
  %i.gi = load ptr, ptr %6, align 8, !tbaa !1450, !noalias !12074
  store ptr %i.gi, ptr %0, align 8, !tbaa !1450, !alias.scope !12074
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1450   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 4 uses
  store i32 %i.q, ptr %4, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %5, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %5, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !12077

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge10.i
  store i32 %i.q, ptr %i.x, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !12078

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.q, ptr %i.p, align 8, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !1450
  store ptr %i.b, ptr %11, align 8, !tbaa !1450
  store ptr %i.d, ptr %12, align 8, !tbaa !1450
  %i.y = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  store ptr %i.y, ptr %13, align 8, !tbaa !2927
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1450
  store ptr %i.b, ptr %7, align 8, !tbaa !1450
  store ptr %i.d, ptr %8, align 8, !tbaa !1450
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ac
  %i.aj = ashr exact i64 %i.ai, 3
  store ptr %i.z, ptr %9, align 8, !tbaa !2927
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.af, i64 noundef %i.aj, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.073 = alloca ptr, align 8                ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %.not80 = icmp eq ptr %i.a, %i.b
  br i1 %.not80, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1450   ; 2 uses
  %.not81 = icmp eq ptr %i.b, %i.c
  br i1 %.not81, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1354 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1352
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %.not82 = icmp slt i32 %i.i, %i.j
  br i1 %.not82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1354 ; 3 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1354, !noalias !12079
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1352, !noalias !12079
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !12079
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !12079
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1352, !noalias !12079
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !12082

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1354 ; 2 uses
  %.pre112 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.m, %bb.e ]
  %i.af = phi ptr [ %.pre, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.e ] ; 5 uses
  %.sroa.073.0..sroa.073.promoted = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 8 uses
  store ptr %.sroa.073.0..sroa.073.promoted, ptr %0, align 8, !tbaa !1450
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1450  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1354 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi113             ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2566 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.ak, %i.am
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i.i, label %._ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit_crit_edge, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i

._ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit_crit_edge: ; preds = %bb.i
  %.pre106 = load ptr, ptr %4, align 8, !tbaa !2564
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i: ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %i.aj
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1352, !noalias !12083 ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.073.0..sroa.073.promoted, %i.ao
  %.pre107 = load ptr, ptr %4, align 8, !tbaa !2564 ; 3 uses
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i ] ; 2 uses
  %.04.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.pre107, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !69
  store i32 %i.ar, ptr %.04.i.i, align 4, !tbaa !69
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1354
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1352 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %.not.i.i8 = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i8, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !7172

bb.j:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not.i.i10.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i10.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i: ; preds = %bb.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1352, !noalias !12086 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !2564  ; 4 uses
  %.not3.i12.i = icmp eq ptr %.sroa.073.0..sroa.073.promoted, %i.ax
  br i1 %.not3.i12.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i, %.lr.ph.i13.i
  %i.az = phi ptr [ %i.be, %.lr.ph.i13.i ], [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ] ; 2 uses
  %.04.i14.i = phi ptr [ %i.bf, %.lr.ph.i13.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !69
  store i32 %i.bb, ptr %.04.i14.i, align 4, !tbaa !69
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !1354
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1352 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i14.i, i64 4 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i15.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i, label %.lr.ph.i13.i, !llvm.loop !7172

_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i: ; preds = %bb.j
  %i.bg = load ptr, ptr %4, align 8, !tbaa !2564  ; 2 uses
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i: ; preds = %.lr.ph.i13.i, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i
  %i.bh = phi ptr [ %i.bg, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.ay, %.lr.ph.i13.i ] ; 2 uses
  %.0.lcssa.i1639.i = phi ptr [ %i.bg, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.bf, %.lr.ph.i13.i ]
  %.sroa.026.0.i = phi ptr [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ax, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.ax, %.lr.ph.i13.i ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_:bb.a
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1889   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13052 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13052 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2567 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13052
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13052
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13052
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !1889
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !13052
  store ptr %i.a, ptr %5, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !13052
  store ptr %i.x, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !13052
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread
  store i64 0, ptr %i.bf, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !1889
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13052
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !13052
  store ptr %i.a, ptr %8, align 8, !tbaa !1889
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13052
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !13052
  store ptr %i.x, ptr %9, align 8, !tbaa !1889
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !13052
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !13052
  %i.bq = load ptr, ptr %3, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bq, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1889   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13052 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13052 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13052 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !69  ; 4 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %4, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.am = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !15478

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader22

.lr.ph.i.preheader22:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader22, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader22 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge10.i
  store i32 %i.al, ptr %i.as, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !15479

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.al, ptr %i.a, align 4, !tbaa !69
  store ptr %i.a, ptr %8, align 8, !tbaa !1889
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.at, align 8, !tbaa !13052
  store ptr %i.b, ptr %9, align 8, !tbaa !1889
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.au, align 8, !tbaa !13052
  store ptr %i.d, ptr %10, align 8, !tbaa !1889
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !13052
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit: ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13052 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13052 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13052 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1889
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !13052
  store ptr %i.b, ptr %6, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !13052
  store ptr %i.d, ptr %7, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !13052
  %i.bf = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 5
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bk = ptrtoint ptr %i.b to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = add nsw i64 %i.bn, %i.bi
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.bq = ptrtoint ptr %i.a to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %i.bu = sub i64 %i.bo, %i.bt
  %i.bv = ptrtoint ptr %i.bb to i64
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = shl nsw i64 %i.bw, 5
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bz = ptrtoint ptr %i.d to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %i.cd = add nsw i64 %i.cc, %i.bx
  %i.ce = sub i64 %i.cd, %i.bn
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bu, i64 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !3316
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !3318
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !3319
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !1854
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !1854
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !1854
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !1854
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !1854
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !1854
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS4_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !1889   ; 11 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !1889   ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !69   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !69
  store i32 %i.n, ptr %i.l, align 4, !tbaa !69
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.i, 16
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !1889
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13052
  store ptr %i.s, ptr %i.q, align 8, !tbaa !13052
  %i.t = load <2 x ptr>, ptr %1, align 8, !tbaa !1854
  store <2 x ptr> %i.t, ptr %12, align 16, !tbaa !1854
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !1854
  store <2 x ptr> %i.u, ptr %13, align 16, !tbaa !1854
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13052 ; 8 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !1889   ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13052 ; 12 uses
  %i.aa = icmp ugt i64 %3, %4
  br i1 %i.aa, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ab = lshr i64 %3, 1                          ; 6 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.ad = ptrtoint ptr %i.k to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = add nsw i64 %i.ag, %i.ab                ; 4 uses
  %or.cond.i = icmp ult i64 %i.ah, 256
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp sgt i64 %i.ah, 0
  %i.ak = lshr i64 %i.ah, 8                       ; 2 uses
  %i.al = or disjoint i64 %i.ak, -72057594037927936
  %i.am = select i1 %i.aj, i64 %i.ak, i64 %i.al   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = shl nsw i64 %i.am, 8
  %i.aq = sub nsw i64 %i.ah, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.k, %bb.l
  %.sroa.089.1 = phi ptr [ %i.ai, %bb.k ], [ %i.ar, %bb.l ] ; 5 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SJ_SJ_T0_RT1_:bb.a
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1889   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13052 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13052 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2567 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13052
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13052
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13052
  %i.bc = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !13052
  store ptr %i.a, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !13052
  store ptr %i.x, ptr %7, align 8, !tbaa !1889
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !13052
  store ptr %i.bc, ptr %8, align 8, !tbaa !2927
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread
  store i64 0, ptr %i.bg, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !1889
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13052
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !13052
  store ptr %i.a, ptr %10, align 8, !tbaa !1889
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13052
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !13052
  store ptr %i.x, ptr %11, align 8, !tbaa !1889
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13052
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !13052
  %i.br = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  store ptr %i.br, ptr %12, align 8, !tbaa !2927
  %i.bs = load ptr, ptr %4, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bs, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1889   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13052 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13052 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13052 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !69  ; 4 uses
  store i32 %i.al, ptr %4, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %5, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.am = add i64 %5, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !19954

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader23

.lr.ph.i.preheader23:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader23, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader23 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge10.i
  store i32 %i.al, ptr %i.as, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !19955

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.al, ptr %i.a, align 4, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !1889
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.i, ptr %i.at, align 8, !tbaa !13052
  store ptr %i.b, ptr %11, align 8, !tbaa !1889
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.g, ptr %i.au, align 8, !tbaa !13052
  store ptr %i.d, ptr %12, align 8, !tbaa !1889
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !13052
  %i.aw = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  store ptr %i.aw, ptr %13, align 8, !tbaa !2927
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit: ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13052 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13052 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13052 ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !4785, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !13052
  store ptr %i.b, ptr %7, align 8, !tbaa !1889
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !13052
  store ptr %i.d, ptr %8, align 8, !tbaa !1889
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !13052
  %i.bh = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ay to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = shl nsw i64 %i.bj, 5
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bm = ptrtoint ptr %i.b to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = add nsw i64 %i.bp, %i.bk
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !75
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = sub i64 %i.bq, %i.bv
  %i.bx = ptrtoint ptr %i.bc to i64
  %i.by = sub i64 %i.bx, %i.bh
  %i.bz = shl nsw i64 %i.by, 5
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !75
  %i.cb = ptrtoint ptr %i.d to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, %i.bz
  %i.cg = sub i64 %i.cf, %i.bp
  store ptr %i.bd, ptr %9, align 8, !tbaa !2927
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.bw, i64 noundef %i.cg, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1889   ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13052 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 256             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 8                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -72057594037927936
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = shl nsw i64 %i.p, 8
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !69
  %i.w = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13052 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 5
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13052 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 5
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = sub i64 %i.ao, %i.j
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.s, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %.not13.i = icmp eq i64 %i.aj, 0
  br i1 %.not13.i, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i, %bb.k
  %i.ax = phi ptr [ %i.bx, %bb.k ], [ %i.ae, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 2 uses
  %.sroa.11.219.i = phi ptr [ %.sroa.11.218.i, %bb.k ], [ %i.y, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 4 uses
  %.sroa.0.116.i = phi ptr [ %.sroa.0.115.i, %bb.k ], [ %i.a, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 4 uses
  %.014.i = phi i64 [ %.1.i, %bb.k ], [ %i.aj, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 2 uses
  %i.ay = lshr i64 %.014.i, 1                     ; 5 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %.sroa.0.116.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.bd, 256
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.116.i, i64 %i.ay
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = icmp sgt i64 %i.bd, 0
  %i.bg = lshr i64 %i.bd, 8                       ; 2 uses
  %i.bh = or disjoint i64 %i.bg, -72057594037927936
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.11.219.i, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75, !noalias !19956
  %i.bl = shl nsw i64 %i.bi, 8
  %i.bm = sub nsw i64 %i.bd, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.116.i, %.lr.ph.i ], [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 2 uses
  %.sroa.11.1.i = phi ptr [ %.sroa.11.219.i, %.lr.ph.i ], [ %i.bj, %bb.h ], [ %.sroa.11.219.i, %bb.g ] ; 3 uses
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !69, !noalias !19956
  %.not11.i = icmp slt i32 %i.bo, %i.w
end_hunk_5
