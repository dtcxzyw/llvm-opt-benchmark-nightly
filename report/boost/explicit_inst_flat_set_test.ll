Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_set_test?download=true
inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_:bb.a
  %i.w = add nsw i64 %i.f, -1
  %i.x = and i64 %i.w, %i.f
  %i.y = or i64 %i.v, %i.x
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.e, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.d
  %i.aa = or i64 %i.t, %i.f
  %i.ab = and i64 %i.aa, 1
  %.not.not37.i = icmp eq i64 %i.ab, 0
  br i1 %.not.not37.i, label %.lr.ph.i56, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.f)
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

.preheader.i:                                     ; preds = %.lr.ph.i56, %.preheader36.i
  %.030.lcssa.i = phi i64 [ %i.t, %.preheader36.i ], [ %i.ah, %.lr.ph.i56 ] ; 3 uses
  %.029.lcssa.i = phi i64 [ %i.f, %.preheader36.i ], [ %i.ai, %.lr.ph.i56 ] ; 3 uses
  %.0.lcssa.i54 = phi i64 [ 1, %.preheader36.i ], [ %i.ag, %.lr.ph.i56 ]
  %i.ad = icmp ne i64 %.030.lcssa.i, 0
  %i.ae = icmp ne i64 %.029.lcssa.i, 0
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i56:                                       ; preds = %.preheader36.i, %.lr.ph.i56
  %.040.i = phi i64 [ %i.ag, %.lr.ph.i56 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ai, %.lr.ph.i56 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ah, %.lr.ph.i56 ], [ %i.t, %.preheader36.i ]
  %i.ag = shl i64 %.040.i, 1                      ; 2 uses
  %i.ah = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ai = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.aj = or i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 1
  %.not.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not.i, label %.lr.ph.i56, label %.preheader.i, !llvm.loop !47

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.al = and i64 %.13143.i, 1
  %.not.i55 = icmp eq i64 %i.al, 0
  br i1 %.not.i55, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.am = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.an = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.an, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw i64 %.13143.i, %.144.i
  %i.aq = lshr exact i64 %i.ap, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = sub nuw i64 %.144.i, %.13143.i
  %i.as = lshr exact i64 %i.ar, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.aq, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.am, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.as, %bb.k ], [ %i.ao, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.at = icmp ne i64 %.232.i, 0
  %i.au = icmp ne i64 %.2.i, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.aw = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.ax = mul i64 %i.aw, %.0.lcssa.i54
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.ac, %bb.e ], [ %i.ax, %._crit_edge.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.033.i, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not60 = icmp eq i64 %.033.i, 0
  br i1 %.not60, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.04561 = phi ptr [ %0, %.lr.ph ], [ %i.bp, %bb.o ] ; 6 uses
  %i.ba = load i32, ptr %.04561, align 4, !tbaa !247
  store i32 0, ptr %.04561, align 4, !tbaa !247
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bd = getelementptr inbounds nuw i8, ptr %.04561, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.044 = phi ptr [ %.04561, %bb.m ], [ %.0, %bb.n ]
  %.0 = phi ptr [ %i.bd, %bb.m ], [ %i.bm, %bb.n ] ; 6 uses
  %i.be = load i32, ptr %.0, align 4, !tbaa !247
  store i32 %i.be, ptr %.044, align 4, !tbaa !247
  store i32 0, ptr %.0, align 4, !tbaa !247
  %i.bf = ptrtoint ptr %.0 to i64
  %i.bg = sub i64 %i.r, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %i.bi = icmp ugt i64 %i.bh, %i.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 %i.e
  %i.bk = sub nsw i64 0, %i.bh
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bk
  %i.bm = select i1 %i.bi, ptr %i.bj, ptr %i.bl   ; 2 uses
  %.not53 = icmp eq ptr %i.bm, %.04561
  br i1 %.not53, label %bb.o, label %bb.n, !llvm.loop !1758

bb.o:                                             ; preds = %bb.n
  store i32 %i.ba, ptr %.0, align 4, !tbaa !247
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bo = add i32 %i.bn, -1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.bp = getelementptr inbounds nuw i8, ptr %.04561, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bp, %i.ay
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.m, !llvm.loop !1759

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.o, %.lr.ph.i, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.046 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ]
  ret ptr %.046
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit
  %.04460 = phi i64 [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.04460 ; 6 uses
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph, %bb.d
  %.037.i.idx = phi i64 [ %.037.i.add, %bb.d ], [ 4, %.lr.ph ] ; 2 uses
  %.pn36.i = phi ptr [ %.037.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 5 uses
  %.037.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.037.i.idx ; 4 uses
  %i.g = load i32, ptr %.037.i.ptr, align 4, !tbaa !247 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !247
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i.ptr, align 4, !tbaa !247
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !247
  store i32 %i.l, ptr %.037.i.ptr, align 4, !tbaa !247
  store i32 0, ptr %.pn36.i, align 4, !tbaa !247
  %.not2729.i = icmp eq ptr %.pn36.i, %i.f
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.02231.i = phi ptr [ %i.m, %bb.c ], [ %.pn36.i, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !247  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.022.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.02231.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !247
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !247
  store i32 0, ptr %i.m, align 4, !tbaa !247
  %.not27.i = icmp eq ptr %i.m, %i.f
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !34

bb.d:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.037.i.add = add nuw nsw i64 %.037.i.idx, 4    ; 2 uses
  %.not26.i = icmp eq i64 %.037.i.add, 64
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !35

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.d
  %i.r = add nuw i64 %.04460, 16                  ; 3 uses
  %i.s = sub i64 %i.d, %i.r
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !1760

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.u, %1
  %.034.i46 = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, label %.lr.ph38.i47

.lr.ph38.i47:                                     ; preds = %._crit_edge, %bb.g
  %.037.i48 = phi ptr [ %.0.i50, %bb.g ], [ %.034.i46, %._crit_edge ] ; 5 uses
  %.pn36.i49 = phi ptr [ %.037.i48, %bb.g ], [ %i.u, %._crit_edge ] ; 5 uses
  %i.v = load i32, ptr %.037.i48, align 4, !tbaa !247 ; 3 uses
  %i.w = load i32, ptr %.pn36.i49, align 4, !tbaa !247
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph38.i47
  store i32 0, ptr %.037.i48, align 4, !tbaa !247
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aa = load i32, ptr %.pn36.i49, align 4, !tbaa !247
  store i32 %i.aa, ptr %.037.i48, align 4, !tbaa !247
  store i32 0, ptr %.pn36.i49, align 4, !tbaa !247
  %.not2729.i52 = icmp eq ptr %.pn36.i49, %i.u
  br i1 %.not2729.i52, label %.critedge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %bb.f
  %.02231.i54 = phi ptr [ %i.ab, %bb.f ], [ %.pn36.i49, %bb.e ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.02231.i54, i64 -4 ; 4 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !247 ; 2 uses
  %i.ad = icmp slt i32 %i.v, %i.ac
  br i1 %i.ad, label %bb.f, label %.critedge.i55

.critedge.i55:                                    ; preds = %bb.f, %.lr.ph.i53, %bb.e
  %.022.lcssa.i56 = phi ptr [ %i.u, %bb.e ], [ %.02231.i54, %.lr.ph.i53 ], [ %i.u, %bb.f ]
  store i32 %i.v, ptr %.022.lcssa.i56, align 4, !tbaa !247
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.af = add i32 %i.ae, -1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i53
  store i32 %i.ac, ptr %.02231.i54, align 4, !tbaa !247
  store i32 0, ptr %i.ab, align 4, !tbaa !247
  %.not27.i57 = icmp eq ptr %i.ab, %i.u
  br i1 %.not27.i57, label %.critedge.i55, label %.lr.ph.i53, !llvm.loop !34

bb.g:                                             ; preds = %.critedge.i55, %.lr.ph38.i47
  %.0.i50 = getelementptr inbounds nuw i8, ptr %.037.i48, i64 4 ; 2 uses
  %.not26.i51 = icmp eq ptr %.0.i50, %1
  br i1 %.not26.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, label %.lr.ph38.i47, !llvm.loop !35

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58, %bb.k
  %.04365 = phi i64 [ %i.ay, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit58 ] ; 10 uses
  %i.ag = sub i64 %i.d, %.04365
  %i.ah = icmp ugt i64 %i.ag, %.04365             ; 2 uses
  br i1 %i.ah, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph67
  %i.ai = shl i64 %.04365, 1                      ; 3 uses
  %i.aj = icmp ugt i64 %i.d, %i.ai
  br i1 %i.aj, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.h
  %.idx59 = shl i64 %.04365, 2                    ; 2 uses
  %.idx = shl i64 %.04365, 3
  %i.ak = ashr exact i64 %.idx59, 2
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph63, %bb.i
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.ao, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx59
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.al, ptr noundef %i.am, ptr noundef %i.an, i64 noundef %.04365, i64 noundef %i.ak)
  %i.ao = add i64 %.061, %i.ai                    ; 3 uses
  %i.ap = sub i64 %i.d, %i.ao
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.i, label %.loopexit, !llvm.loop !1761

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.h ], [ %i.ao, %bb.i ] ; 2 uses
  %i.ar = sub i64 %i.d, %.1
  %i.as = icmp ugt i64 %i.ar, %.04365
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.04365 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.a, %i.av
  %i.ax = ashr exact i64 %i.aw, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %i.at, ptr noundef %i.au, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.ax)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.ay = shl i64 %.04365, 1
  br i1 %i.ah, label %.lr.ph67, label %._crit_edge68, !llvm.loop !1762
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond92 = and i1 %i.a, %i.b
  br i1 %or.cond92, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.06799 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.06898 = phi i64 [ %.169, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07096 = phi ptr [ %.171, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07294 = phi ptr [ %.173, %bb.n ], [ %1, %bb.a ] ; 12 uses
  %.07493 = phi ptr [ %.175, %bb.n ], [ %0, %bb.a ] ; 11 uses
  %i.c = or i64 %.06799, %.06898
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.07294, align 4, !tbaa !247
  %i.f = load i32, ptr %.07493, align 4, !tbaa !247 ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.07493, align 4, !tbaa !247
  %i.h = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.j = load i32, ptr %.07294, align 4, !tbaa !247
  store i32 %i.j, ptr %.07493, align 4, !tbaa !247
  store i32 %i.f, ptr %.07294, align 4, !tbaa !247
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.l = add i32 %i.k, -1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %.06799, %.06898                 ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_(ptr noundef %.07493, ptr noundef %.07294, ptr noundef %.07096)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.06898, %.06799
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.06898, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.07493, i64 %i.p ; 2 uses
  %.not15.i = icmp eq ptr %.07096, %.07294
  %.pre = ptrtoint ptr %.07294 to i64             ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07096 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 2
  %i.u = load i32, ptr %i.q, align 4, !tbaa !247
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01316.i = phi ptr [ %.07294, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.v = lshr i64 %.017.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !247
  %i.y = icmp slt i32 %i.x, %i.u                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.neg.i = xor i64 %i.v, -1
  %i.aa = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.y, ptr %i.z, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.y, i64 %i.aa, i64 %i.v     ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.h, !llvm.loop !45

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre108 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.g, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi109 = phi i64 [ %.pre108, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.g ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.07294, %bb.g ]
  %i.ab = sub i64 %.pre-phi109, %.pre
  %i.ac = ashr exact i64 %i.ab, 2
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_T0_T1_:bb.a
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink29.i.i = phi ptr [ %.sroa.01.i.0..sroa.01.i.0..sroa.01.i.0..sroa.01.0..sroa.01.0..sroa.01.0..i, %bb.i ], [ %i.bo, %bb.j ]
  %.sink27.i.i = phi ptr [ %.sroa.01.i, %bb.i ], [ %.sroa.06.i, %bb.j ]
  %i.cf = load ptr, ptr %.sink29.i.i, align 8, !tbaa !275
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !271
  store ptr %i.ch, ptr %.sink27.i.i, align 8, !tbaa !277
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !275
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !271 ; 2 uses
  store ptr %i.ck, ptr %.sroa.02.i, align 8, !tbaa !277
  %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.i = load ptr, ptr %.sroa.06.i, align 8, !tbaa !277 ; 2 uses
  %.not.i.i29 = icmp eq ptr %.sroa.06.i.0..sroa.06.i.0..sroa.06.i.0..sroa.06.0..sroa.06.0..sroa.06.0.7.i, %i.bg
  br i1 %.not.i.i29, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit, label %.lr.ph.i.i28, !llvm.loop !4982

_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit: ; preds = %bb.k, %.lr.ph.i.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit27.thread, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  br label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_T_.exit

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_T_.exit: ; preds = %.critedge.i.i, %bb.c, %bb.b, %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESF_EEvT0_SG_T1_SH_SH_T_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEESE_EEvT0_SG_T1_SH_SH_T_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !277    ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !277    ; 3 uses
  %i.c = icmp ne ptr %i.a, %i.b
  %i.d = icmp ne ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.aj, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.promoted = phi ptr [ %i.ak, %bb.e ], [ %i.a, %bb.a ] ; 5 uses
  %.051 = phi ptr [ %.1, %bb.e ], [ %3, %bb.a ]   ; 5 uses
  %.03850 = phi ptr [ %i.al, %bb.e ], [ %2, %bb.a ] ; 5 uses
  %i.g = icmp eq ptr %.051, %4
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not54 = icmp eq ptr %.03850, %3
  br i1 %.not54, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader, %.lr.ph56
  %i.h = phi ptr [ %i.p, %.lr.ph56 ], [ %.promoted, %.preheader ] ; 2 uses
  %.13955 = phi ptr [ %i.m, %.lr.ph56 ], [ %.03850, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !247
  store i32 %i.j, ptr %.13955, align 4, !tbaa !247
  store i32 0, ptr %i.i, align 4, !tbaa !247
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.m = getelementptr inbounds nuw i8, ptr %.13955, i64 4 ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !275
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !271  ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !277
  %.not = icmp eq ptr %i.m, %3
  br i1 %.not, label %._crit_edge57.loopexit, label %.lr.ph56, !llvm.loop !4994

._crit_edge57.loopexit:                           ; preds = %.lr.ph56
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !277
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %._crit_edge57.loopexit, %.preheader
  %i.q = phi ptr [ %.pre65, %._crit_edge57.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.r = phi ptr [ %i.p, %._crit_edge57.loopexit ], [ %.promoted, %.preheader ] ; 2 uses
  %.not3.i = icmp eq ptr %i.r, %i.q
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %._crit_edge57, %.lr.ph.i14
  %i.s = phi ptr [ %i.x, %.lr.ph.i14 ], [ %i.r, %._crit_edge57 ] ; 2 uses
  %.04.i = phi ptr [ %i.y, %.lr.ph.i14 ], [ %3, %._crit_edge57 ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !247
  store i32 %i.u, ptr %.04.i, align 4, !tbaa !247
  store i32 0, ptr %i.t, align 4, !tbaa !247
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !275
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !271  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %.not.i15 = icmp eq ptr %i.x, %i.q
  br i1 %.not.i15, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i14, !llvm.loop !94

bb.b:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.aa = load i32, ptr %.051, align 4, !tbaa !247 ; 2 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !247 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.aa, ptr %.03850, align 4, !tbaa !247
  store i32 0, ptr %.051, align 4, !tbaa !247
  %i.ad = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ae = getelementptr inbounds nuw i8, ptr %.051, i64 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ab, ptr %.03850, align 4, !tbaa !247
  store i32 0, ptr %i.z, align 4, !tbaa !247
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ag = load ptr, ptr %.promoted, align 8, !tbaa !275
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !271 ; 2 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !277
  %.pre = load ptr, ptr %1, align 8, !tbaa !277
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aj = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.ak = phi ptr [ %.promoted, %bb.c ], [ %i.ai, %bb.d ] ; 3 uses
  %.sink.in = phi i32 [ %i.ad, %bb.c ], [ %i.af, %bb.d ]
  %.1 = phi ptr [ %i.ae, %bb.c ], [ %.051, %bb.d ] ; 2 uses
  %.sink = add i32 %.sink.in, 1
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %.03850, i64 4 ; 2 uses
  %i.am = icmp ne ptr %i.ak, %i.aj
  %i.an = icmp ne ptr %i.al, %3
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !4995

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.e ]
  %.lcssa46 = phi ptr [ %i.a, %bb.a ], [ %i.ak, %bb.e ] ; 2 uses
  %.lcssa44 = phi ptr [ %i.b, %bb.a ], [ %i.aj, %bb.e ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa46, %.lcssa44
  br i1 %.not17.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %i.ap = phi ptr [ %i.bg, %bb.i ], [ %.lcssa46, %._crit_edge ] ; 4 uses
  %.019.i.i = phi ptr [ %i.bh, %bb.i ], [ %3, %._crit_edge ] ; 4 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.aq = icmp eq ptr %.0918.i.i, %4
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.ar = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.04.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !247
  store i32 %i.at, ptr %.04.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %i.as, align 4, !tbaa !247
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !275
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !271 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.aw, %.lcssa44
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i.i.i, !llvm.loop !94

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.az = load i32, ptr %.0918.i.i, align 4, !tbaa !247 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !247 ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.az, ptr %.019.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0918.i.i, align 4, !tbaa !247
  %i.bc = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.ba, ptr %.019.i.i, align 4, !tbaa !247
  store i32 0, ptr %i.ay, align 4, !tbaa !247
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !275
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !271
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bg = phi ptr [ %i.ap, %bb.g ], [ %i.bf, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bc, %bb.g ], [ %.0918.i.i, %bb.h ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bg, %.lcssa44
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21, label %.lr.ph.i.i, !llvm.loop !4996

_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit21: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i14, %._crit_edge57, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPNS3_4test24movable_and_copyable_intELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SH_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !277    ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !275
  %i.c = load ptr, ptr %0, align 8, !tbaa !277    ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !275  ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %.033100 = phi i64 [ %i.ai, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !271, !noalias !5019
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !275, !noalias !5020 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !271, !noalias !5020 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36
  %.sroa.013.0.in27.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.013.028.i = load ptr, ptr %.sroa.013.0.in27.i, align 8, !tbaa !271 ; 2 uses
  %.not2029.i = icmp eq ptr %.sroa.013.028.i, %i.n
  br i1 %.not2029.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.f ], [ %.sroa.013.028.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !275 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !271  ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !247  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !247
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph31.i
  store i32 0, ptr %i.o, align 8, !tbaa !247
  %i.w = load i32, ptr %i.s, align 4, !tbaa !247
  store i32 %i.w, ptr %i.o, align 8, !tbaa !247
  store i32 0, ptr %i.s, align 4, !tbaa !247
  %.not2122.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.024.i = phi ptr [ %i.z, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.06.023.i = phi ptr [ %i.ah, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.024.i, align 8, !tbaa !275
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !271  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !247 ; 2 uses
  %i.ac = icmp slt i32 %i.t, %i.ab
  br i1 %i.ac, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.06.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.06.023.i, %.lr.ph.i ], [ %i.ah, %bb.e ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ad, align 4, !tbaa !247
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !247
  store i32 0, ptr %i.aa, align 4, !tbaa !247
  %i.af = load ptr, ptr %.sroa.06.023.i, align 8, !tbaa !275
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !271 ; 2 uses
  %.not21.i = icmp eq ptr %i.z, %.sroa.082.0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !122

bb.f:                                             ; preds = %.critedge.i, %.lr.ph31.i
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !tbaa !271 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.0.i, %i.n
  br i1 %.not20.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit, label %.lr.ph31.i, !llvm.loop !123

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit36, %bb.c
  %i.ai = add nuw i64 %.033100, 16                ; 3 uses
  %i.aj = sub i64 %i.h, %i.ai
  %i.ak = icmp ugt i64 %i.aj, 16
  br i1 %i.ak, label %.lr.ph, label %bb.g, !llvm.loop !5001

bb.g:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit
  %i.al = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !271, !noalias !5021
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38: ; preds = %bb.a, %bb.g
  %.sroa.081.0 = phi ptr [ %i.am, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38
  %i.an = load ptr, ptr %.sroa.081.0, align 8, !tbaa !275
  %.sroa.013.0.in27.i40 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.013.028.i41 = load ptr, ptr %.sroa.013.0.in27.i40, align 8, !tbaa !271 ; 2 uses
  %.not2029.i42 = icmp eq ptr %.sroa.013.028.i41, %i.a
  br i1 %.not2029.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %.lr.ph31.i43

.lr.ph31.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.013.030.i44 = phi ptr [ %.sroa.013.0.i46, %bb.k ], [ %.sroa.013.028.i41, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %.sroa.013.030.i44, align 8, !tbaa !275 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !271 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i32, ptr %i.ao, align 8, !tbaa !247 ; 3 uses
  %i.au = load i32, ptr %i.as, align 4, !tbaa !247
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph31.i43
  store i32 0, ptr %i.ao, align 8, !tbaa !247
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !247
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !247
  store i32 0, ptr %i.as, align 4, !tbaa !247
  %.not2122.i48 = icmp eq ptr %i.ar, %.sroa.081.0
  br i1 %.not2122.i48, label %.critedge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.024.i50 = phi ptr [ %i.az, %bb.j ], [ %i.ar, %bb.i ]
  %.sroa.06.023.i51 = phi ptr [ %i.bh, %bb.j ], [ %i.ar, %bb.i ] ; 3 uses
  %i.ax = load ptr, ptr %.sroa.0.024.i50, align 8, !tbaa !275
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !271 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !247 ; 2 uses
  %i.bc = icmp slt i32 %i.at, %i.bb
  br i1 %i.bc, label %bb.j, label %.critedge.i52

.critedge.i52:                                    ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.06.0.lcssa.i53 = phi ptr [ %i.ar, %bb.i ], [ %.sroa.06.023.i51, %.lr.ph.i49 ], [ %i.bh, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i53, i64 8
  store i32 %i.at, ptr %i.bd, align 4, !tbaa !247
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i51, i64 8
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !247
  store i32 0, ptr %i.ba, align 4, !tbaa !247
  %i.bf = load ptr, ptr %.sroa.06.023.i51, align 8, !tbaa !275
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !271 ; 2 uses
  %.not21.i54 = icmp eq ptr %i.az, %.sroa.081.0
  br i1 %.not21.i54, label %.critedge.i52, label %.lr.ph.i49, !llvm.loop !122

bb.k:                                             ; preds = %.critedge.i52, %.lr.ph31.i43
  %.sroa.013.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.013.0.i46 = load ptr, ptr %.sroa.013.0.in.i45, align 8, !tbaa !271 ; 2 uses
  %.not20.i47 = icmp eq ptr %.sroa.013.0.i46, %i.a
  br i1 %.not20.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, label %.lr.ph31.i43, !llvm.loop !123

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.dt, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_22stable_vector_iteratorIPS7_Lb0EEEEEvT0_SG_T_.exit55 ] ; 11 uses
  %i.bi = sub i64 %i.h, %.032106
  %i.bj = icmp ugt i64 %i.bi, %.032106            ; 2 uses
  br i1 %i.bj, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.bk = shl i64 %.032106, 1                     ; 6 uses
  %i.bl = icmp ugt i64 %i.h, %i.bk
  br i1 %i.bl, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.bk, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us
  %i.bm = load ptr, ptr %0, align 8, !tbaa !277, !noalias !5022 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !275, !noalias !5023
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !271, !noalias !5023
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.bm, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us ], [ %i.bp, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bm, ptr %5, align 8, !tbaa !277
  store ptr %i.bm, ptr %6, align 8, !tbaa !277
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !277
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !275
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !275
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.br
  %i.bv = ashr exact i64 %i.bu, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65
  %.0101 = phi i64 [ %i.cs, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.bw = load ptr, ptr %0, align 8, !tbaa !277, !noalias !5022 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !275, !noalias !322 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.0101
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !271, !noalias !5022 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !275, !noalias !5024
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !275, !noalias !5025
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.0101
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !271, !noalias !5025
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.ca, %bb.n ], [ %i.bx, %.lr.ph103.split ]
  %.sroa.077.0128 = phi ptr [ %i.bz, %bb.n ], [ %i.bw, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.cd, %bb.n ], [ %i.bw, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.ce = load ptr, ptr %.in, align 8, !tbaa !271, !noalias !5024 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63
  %i.cf = load ptr, ptr %.sroa.075.0, align 8, !tbaa !275, !noalias !5023
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.bk
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !271, !noalias !5023
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit63 ], [ %i.ch, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0128, ptr %5, align 8, !tbaa !277
  store ptr %i.ce, ptr %6, align 8, !tbaa !277
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !277
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !275
  %i.cj = load ptr, ptr %.sroa.077.0128, align 8, !tbaa !275
  %i.ck = ptrtoint ptr %i.ci to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = load ptr, ptr %.sroa.076.0, align 8, !tbaa !275
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ck
  %i.cr = ashr exact i64 %i.cq, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cn, i64 noundef %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cs = add i64 %.0101, %i.bk                   ; 5 uses
  %i.ct = sub i64 %i.h, %i.cs
  %i.cu = icmp ugt i64 %i.ct, %i.bk
  br i1 %i.cu, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !5012

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit65
  %i.cv = sub i64 %i.h, %i.cs
  %i.cw = icmp ugt i64 %i.cv, %.032106
  br i1 %i.cw, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.cx = icmp ugt i64 %i.h, %.032106
  br i1 %i.cx, label %.thread131, label %bb.s

.thread131:                                       ; preds = %._crit_edge104.thread
  %i.cy = load ptr, ptr %0, align 8, !tbaa !277, !noalias !5026
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
  %i.cz = icmp ugt i64 %i.h, %.032106
  br i1 %i.cz, label %.thread91, label %._crit_edge109

.thread91:                                        ; preds = %.thread
  %i.da = load ptr, ptr %0, align 8, !tbaa !277, !noalias !5027
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69

bb.p:                                             ; preds = %._crit_edge104
  %i.db = load ptr, ptr %0, align 8, !tbaa !277, !noalias !5026 ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPNS0_4test24movable_and_copyable_intELb0EEEl.exit69, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !275, !noalias !5026
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEESE_EEvT0_SG_T1_SH_SH_T_:bb.a
  store ptr %i.o, ptr %0, align 8, !tbaa !289
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !250
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1024
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit, !prof !222

bb.c:                                             ; preds = %.lr.ph59
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !250  ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !289
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit: ; preds = %.lr.ph59, %bb.c
  %i.u = phi ptr [ %i.i, %.lr.ph59 ], [ %i.s, %bb.c ] ; 3 uses
  %i.v = phi ptr [ %i.o, %.lr.ph59 ], [ %i.t, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %i.n, %3
  br i1 %.not, label %._crit_edge60.loopexit, label %.lr.ph59, !llvm.loop !10495

._crit_edge60.loopexit:                           ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !289   ; 2 uses
  %.not3.i = icmp eq ptr %i.v, %.pre
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %._crit_edge60.loopexit
  %.pre70 = load ptr, ptr %i.u, align 8, !tbaa !250
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i
  %i.w = phi ptr [ %i.af, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ], [ %.pre70, %.lr.ph.i14.preheader ] ; 2 uses
  %i.x = phi ptr [ %i.ah, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ], [ %i.u, %.lr.ph.i14.preheader ] ; 2 uses
  %i.y = phi ptr [ %i.ag, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ], [ %i.v, %.lr.ph.i14.preheader ] ; 3 uses
  %.04.i = phi ptr [ %i.ai, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ], [ %3, %.lr.ph.i14.preheader ] ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !247
  store i32 %i.z, ptr %.04.i, align 4, !tbaa !247
  store i32 0, ptr %i.y, align 4, !tbaa !247
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1024
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i, !prof !222

bb.d:                                             ; preds = %.lr.ph.i14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i14
  %i.af = phi ptr [ %i.w, %.lr.ph.i14 ], [ %i.ae, %bb.d ]
  %i.ag = phi ptr [ %i.aa, %.lr.ph.i14 ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ah = phi ptr [ %i.x, %.lr.ph.i14 ], [ %i.ad, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %.not.i15 = icmp eq ptr %i.ag, %.pre
  br i1 %.not.i15, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22, label %.lr.ph.i14, !llvm.loop !160

.lr.ph121:                                        ; preds = %.lr.ph, %bb.b
  %.04053120 = phi ptr [ %i.az, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.054119 = phi ptr [ %.1, %bb.b ], [ %3, %.lr.ph ] ; 5 uses
  %.promoted118 = phi ptr [ %i.ay, %bb.b ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.aj = load i32, ptr %.054119, align 4, !tbaa !247 ; 2 uses
  %i.ak = load i32, ptr %.promoted118, align 4, !tbaa !247 ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph121
  store i32 %i.aj, ptr %.04053120, align 4, !tbaa !247
  store i32 0, ptr %.054119, align 4, !tbaa !247
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ao = getelementptr inbounds nuw i8, ptr %.054119, i64 4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16

bb.f:                                             ; preds = %.lr.ph121
  store i32 %i.ak, ptr %.04053120, align 4, !tbaa !247
  store i32 0, ptr %.promoted118, align 4, !tbaa !247
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ar = getelementptr inbounds nuw i8, ptr %.promoted118, i64 4 ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !289
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !290 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !250
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1024
  %i.av = icmp eq ptr %i.ar, %i.au
  br i1 %i.av, label %bb.g, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16, !prof !222

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.f, align 8, !tbaa !290
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !250 ; 2 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !289
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16: ; preds = %bb.g, %bb.f, %bb.e
  %i.ay = phi ptr [ %.promoted118, %bb.e ], [ %i.ar, %bb.f ], [ %i.ax, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.ao, %bb.e ], [ %.054119, %bb.f ], [ %.054119, %bb.g ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04053120, i64 4 ; 3 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !289   ; 2 uses
  %i.bb = icmp ne ptr %i.ay, %i.ba
  %i.bc = icmp ne ptr %i.az, %3
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !10494

._crit_edge:                                      ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16 ]
  %.lcssa49 = phi ptr [ %i.a, %bb.a ], [ %i.ay, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16 ] ; 2 uses
  %.lcssa47 = phi ptr [ %i.b, %bb.a ], [ %i.ba, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit16 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.lcssa49, %.lcssa47
  br i1 %.not19.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !290
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bf, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bg = phi ptr [ %i.cf, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.lcssa49, %.lr.ph.i.i.preheader ] ; 5 uses
  %.021.i.i = phi ptr [ %i.cg, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.i.i = phi ptr [ %.1.i.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bh = icmp eq ptr %.0920.i.i, %4
  br i1 %i.bh, label %.lr.ph.i.preheader.i.i.i, label %bb.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !250
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bi = phi ptr [ %i.br, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bj = phi ptr [ %i.bt, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.sroa.4.0.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bs, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %i.bg, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bu, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !247
  store i32 %i.bl, ptr %.04.i.i.i.i, align 4, !tbaa !247
  store i32 0, ptr %i.bk, align 4, !tbaa !247
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1024
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i, !prof !222

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.br = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.h ]
  %i.bs = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.h ] ; 2 uses
  %i.bt = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.bp, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bs, %.lcssa47
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22, label %.lr.ph.i.i.i.i, !llvm.loop !160

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bv = load i32, ptr %.0920.i.i, align 4, !tbaa !247 ; 2 uses
  %i.bw = load i32, ptr %i.bg, align 4, !tbaa !247 ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bv, ptr %.021.i.i, align 4, !tbaa !247
  store i32 0, ptr %.0920.i.i, align 4, !tbaa !247
  %i.by = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  store i32 %i.bw, ptr %.021.i.i, align 4, !tbaa !247
  store i32 0, ptr %i.bg, align 4, !tbaa !247
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.ca = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !250
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1024
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.l, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i, !prof !222

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !250
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i = phi ptr [ %.sroa.4.0.i, %bb.j ], [ %i.cd, %bb.l ], [ %.sroa.4.0.i, %bb.k ]
  %i.cf = phi ptr [ %i.bg, %bb.j ], [ %i.ce, %bb.l ], [ %i.bz, %bb.k ] ; 2 uses
  %.1.i.i = phi ptr [ %i.by, %bb.j ], [ %.0920.i.i, %bb.l ], [ %.0920.i.i, %bb.k ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %.lcssa47
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22, label %.lr.ph.i.i, !llvm.loop !10496

_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit22: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i, %._crit_edge60.loopexit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPNS3_4test24movable_and_copyable_intELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEvT_SH_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !289    ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !289    ; 10 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !290  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !290  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !250
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !250
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v                       ; 5 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmiERKS5_.exit, %bb.a
  %.0.i220 = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmiERKS5_.exit ], [ 0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre191 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !290, !noalias !10525
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmiERKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !290, !noalias !10526 ; 10 uses
  %i.aa = ptrtoint ptr %i.b to i64
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !250, !noalias !322 ; 5 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit
  %.033180 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit ] ; 5 uses
  %.not.i.i = icmp eq i64 %.033180, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ad, %.033180             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033180
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033180
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ae, 0
  %i.ai = lshr i64 %i.ae, 8                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -72057594037927936
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !250, !noalias !10526 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 8
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp sgt i64 %i.ae, 0
  %i.ar = lshr i64 %i.ae, 8                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -72057594037927936
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !250, !noalias !10527 ; 2 uses
  %i.aw = shl nsw i64 %i.at, 8
  %i.ax = sub nsw i64 %i.ae, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.az = phi ptr [ %i.am, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i155 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.6.1.i153 = phi ptr [ %i.al, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.au, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.ay, %bb.e ], [ %i.ag, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = add nsw i64 %i.be, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bf, 256
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 64
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit39
  %i.bh = icmp sgt i64 %i.be, -16
  %i.bi = lshr i64 %i.bf, 8                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -72057594037927936
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !250, !noalias !10528
  %i.bn = shl nsw i64 %i.bk, 8
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bp, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i155, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i, !prof !222

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i153, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.i ], [ %i.az, %bb.h ]
  %.sroa.15.1.i = phi ptr [ %i.bt, %bb.i ], [ %.sroa.6.1.i153, %bb.h ]
  %.sroa.020.1.i = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %.not2938.i = icmp eq ptr %.sroa.020.1.i, %.sroa.0.0.i42
  br i1 %.not2938.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i
  %i.bw = phi ptr [ %i.df, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i ], [ %i.bv, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %.sroa.020.040.i = phi ptr [ %.sroa.020.2.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.020.1.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ] ; 6 uses
  %.sroa.15.039.i = phi ptr [ %.sroa.15.2.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.15.1.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.bx = icmp eq ptr %.sroa.020.040.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !222

bb.j:                                             ; preds = %.lr.ph41.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.15.039.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !250
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph41.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.020.040.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.13.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.15.039.i, %bb.k ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 7 uses
  %i.cc = load i32, ptr %.sroa.020.040.i, align 4, !tbaa !247 ; 3 uses
  %i.cd = load i32, ptr %storemerge.i.i, align 4, !tbaa !247
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i
  store i32 0, ptr %.sroa.020.040.i, align 4, !tbaa !247
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ch = load i32, ptr %storemerge.i.i, align 4, !tbaa !247
  store i32 %i.ch, ptr %.sroa.020.040.i, align 4, !tbaa !247
  store i32 0, ptr %storemerge.i.i, align 4, !tbaa !247
  %.not3031.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i155
  br i1 %.not3031.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.13.1.i, align 8, !tbaa !250 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i, %.lr.ph.preheader.i
  %i.ci = phi ptr [ %i.cz, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cj = phi ptr [ %i.cp, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.035.i = phi ptr [ %storemerge.i1.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.034.i = phi ptr [ %.sroa.9.1.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.011.033.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.13.032.i = phi ptr [ %.sroa.13.2.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ck = icmp eq ptr %.sroa.0.035.i, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.n, !prof !222

bb.m:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds i8, ptr %.sroa.9.034.i, i64 -8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !250 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1020
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.035.i, i64 -4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cp = phi ptr [ %i.cm, %bb.m ], [ %i.cj, %bb.n ]
  %.sroa.9.1.i = phi ptr [ %i.cl, %bb.m ], [ %.sroa.9.034.i, %bb.n ]
  %storemerge.i1.i = phi ptr [ %i.cn, %bb.m ], [ %i.co, %bb.n ] ; 4 uses
  %i.cq = load i32, ptr %storemerge.i1.i, align 4, !tbaa !247 ; 2 uses
  %i.cr = icmp slt i32 %i.cc, %i.cq
  br i1 %i.cr, label %bb.p, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i, %bb.o, %bb.l
  %.sroa.011.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %.sroa.011.033.i, %bb.o ], [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i ]
  store i32 %i.cc, ptr %.sroa.011.0.lcssa.i, align 4, !tbaa !247
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.s

bb.p:                                             ; preds = %bb.o
  store i32 %i.cq, ptr %.sroa.011.033.i, align 4, !tbaa !247
  store i32 0, ptr %storemerge.i1.i, align 4, !tbaa !247
  %i.cu = icmp eq ptr %.sroa.011.033.i, %i.ci
  br i1 %i.cu, label %bb.q, label %bb.r, !prof !222

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.032.i, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !250 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i

bb.r:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds i8, ptr %.sroa.011.033.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i: ; preds = %bb.r, %bb.q
  %i.cz = phi ptr [ %i.cw, %bb.q ], [ %i.ci, %bb.r ]
  %.sroa.13.2.i = phi ptr [ %i.cv, %bb.q ], [ %.sroa.13.032.i, %bb.r ]
  %storemerge.i3.i = phi ptr [ %i.cx, %bb.q ], [ %i.cy, %bb.r ] ; 2 uses
  %.not30.i = icmp eq ptr %storemerge.i1.i, %.sroa.0.0.i155
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !182

bb.s:                                             ; preds = %.critedge.i, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.020.040.i, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %bb.t, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i, !prof !222

bb.t:                                             ; preds = %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.15.039.i, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i: ; preds = %bb.t, %bb.s
  %i.df = phi ptr [ %i.de, %bb.t ], [ %i.bw, %bb.s ]
  %.sroa.15.2.i = phi ptr [ %i.dd, %bb.t ], [ %.sroa.15.039.i, %bb.s ]
  %.sroa.020.2.i = phi ptr [ %i.de, %bb.t ], [ %i.da, %bb.s ] ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.020.2.i, %.sroa.0.0.i42
  br i1 %.not29.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit, label %.lr.ph41.i, !llvm.loop !183

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i, %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i
  %i.dg = add nuw i64 %.033180, 16                ; 4 uses
  %i.dh = sub i64 %i.w, %i.dg
  %i.di = icmp ugt i64 %i.dh, 16
  br i1 %i.di, label %bb.b, label %bb.u, !llvm.loop !10505

bb.u:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !250, !noalias !10525
  %i.dk = ptrtoint ptr %i.b to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 2
  %i.do = add nsw i64 %i.dn, %i.dg                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.do, 256
  br i1 %or.cond.i.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dg
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48

bb.w:                                             ; preds = %bb.u
  %i.dq = icmp sgt i64 %i.do, 0
  %i.dr = lshr i64 %i.do, 8                       ; 2 uses
  %i.ds = or disjoint i64 %i.dr, -72057594037927936
  %i.dt = select i1 %i.dq, i64 %i.dr, i64 %i.ds   ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !250, !noalias !10525
  %i.dw = shl nsw i64 %i.dt, 8
  %i.dx = sub nsw i64 %i.do, %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %i.dx
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %bb.v, %bb.w
  %.0.i219229 = phi i64 [ %.0.i220, %._crit_edge.thread ], [ %i.w, %bb.v ], [ %i.w, %bb.w ] ; 6 uses
  %8 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.v ], [ true, %bb.w ]
  %.sroa.6.1.i46 = phi ptr [ %.pre191, %._crit_edge.thread ], [ %i.z, %bb.v ], [ %i.du, %bb.w ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.dp, %bb.v ], [ %i.dy, %bb.w ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.a
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80, label %bb.x

bb.x:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 4 ; 2 uses
  %i.ec = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !250 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1024
  %i.ee = icmp eq ptr %i.eb, %i.ed
  br i1 %i.ee, label %bb.y, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50, !prof !222

bb.y:                                             ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.y, %bb.x
  %i.eh = phi ptr [ %i.eg, %bb.y ], [ %i.ec, %bb.x ]
  %.sroa.15.1.i51 = phi ptr [ %i.ef, %bb.y ], [ %.sroa.6.1.i46, %bb.x ]
  %.sroa.020.1.i52 = phi ptr [ %i.eg, %bb.y ], [ %i.eb, %bb.x ] ; 2 uses
  %.not2938.i53 = icmp eq ptr %.sroa.020.1.i52, %i.a
  br i1 %.not2938.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80, label %.lr.ph41.i54

.lr.ph41.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60
  %i.ei = phi ptr [ %i.fr, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %i.eh, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50 ] ; 3 uses
  %.sroa.020.040.i55 = phi ptr [ %.sroa.020.2.i62, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.020.1.i52, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50 ] ; 6 uses
  %.sroa.15.039.i56 = phi ptr [ %.sroa.15.2.i61, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.15.1.i51, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50 ] ; 4 uses
  %i.ej = icmp eq ptr %.sroa.020.040.i55, %i.ei
  br i1 %i.ej, label %bb.z, label %bb.aa, !prof !222

bb.z:                                             ; preds = %.lr.ph41.i54
  %i.ek = getelementptr inbounds i8, ptr %.sroa.15.039.i56, i64 -8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !250
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i57

bb.aa:                                            ; preds = %.lr.ph41.i54
  %i.en = getelementptr inbounds i8, ptr %.sroa.020.040.i55, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.aa, %bb.z
  %.sroa.13.1.i58 = phi ptr [ %i.ek, %bb.z ], [ %.sroa.15.039.i56, %bb.aa ] ; 3 uses
  %storemerge.i.i59 = phi ptr [ %i.em, %bb.z ], [ %i.en, %bb.aa ] ; 7 uses
  %i.eo = load i32, ptr %.sroa.020.040.i55, align 4, !tbaa !247 ; 3 uses
  %i.ep = load i32, ptr %storemerge.i.i59, align 4, !tbaa !247
  %i.eq = icmp slt i32 %i.eo, %i.ep
  br i1 %i.eq, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i57
  store i32 0, ptr %.sroa.020.040.i55, align 4, !tbaa !247
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.et = load i32, ptr %storemerge.i.i59, align 4, !tbaa !247
  store i32 %i.et, ptr %.sroa.020.040.i55, align 4, !tbaa !247
  store i32 0, ptr %storemerge.i.i59, align 4, !tbaa !247
  %.not3031.i64 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not3031.i64, label %.critedge.i74, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.ab
  %.pre.i66 = load ptr, ptr %.sroa.13.1.i58, align 8, !tbaa !250 ; 2 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76, %.lr.ph.preheader.i65
  %i.eu = phi ptr [ %i.fl, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.ev = phi ptr [ %i.fb, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.0.035.i68 = phi ptr [ %storemerge.i1.i73, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.9.034.i69 = phi ptr [ %.sroa.9.1.i72, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.011.033.i70 = phi ptr [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 4 uses
  %.sroa.13.032.i71 = phi ptr [ %.sroa.13.2.i77, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.ew = icmp eq ptr %.sroa.0.035.i68, %i.ev
  br i1 %i.ew, label %bb.ac, label %bb.ad, !prof !222

bb.ac:                                            ; preds = %.lr.ph.i67
  %i.ex = getelementptr inbounds i8, ptr %.sroa.9.034.i69, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !250 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1020
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i67
  %i.fa = getelementptr inbounds i8, ptr %.sroa.0.035.i68, i64 -4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fb = phi ptr [ %i.ey, %bb.ac ], [ %i.ev, %bb.ad ]
  %.sroa.9.1.i72 = phi ptr [ %i.ex, %bb.ac ], [ %.sroa.9.034.i69, %bb.ad ]
  %storemerge.i1.i73 = phi ptr [ %i.ez, %bb.ac ], [ %i.fa, %bb.ad ] ; 4 uses
  %i.fc = load i32, ptr %storemerge.i1.i73, align 4, !tbaa !247 ; 2 uses
  %i.fd = icmp slt i32 %i.eo, %i.fc
  br i1 %i.fd, label %bb.af, label %.critedge.i74

.critedge.i74:                                    ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76, %bb.ae, %bb.ab
  %.sroa.011.0.lcssa.i75 = phi ptr [ %storemerge.i.i59, %bb.ab ], [ %.sroa.011.033.i70, %bb.ae ], [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76 ]
  store i32 %i.eo, ptr %.sroa.011.0.lcssa.i75, align 4, !tbaa !247
  %i.fe = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  %i.ff = add i32 %i.fe, -1
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !248
  br label %bb.ai

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fc, ptr %.sroa.011.033.i70, align 4, !tbaa !247
  store i32 0, ptr %storemerge.i1.i73, align 4, !tbaa !247
  %i.fg = icmp eq ptr %.sroa.011.033.i70, %i.eu
  br i1 %i.fg, label %bb.ag, label %bb.ah, !prof !222

bb.ag:                                            ; preds = %bb.af
  %i.fh = getelementptr inbounds i8, ptr %.sroa.13.032.i71, i64 -8 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !250 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76

bb.ah:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds i8, ptr %.sroa.011.033.i70, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit4.i76: ; preds = %bb.ah, %bb.ag
  %i.fl = phi ptr [ %i.fi, %bb.ag ], [ %i.eu, %bb.ah ]
  %.sroa.13.2.i77 = phi ptr [ %i.fh, %bb.ag ], [ %.sroa.13.032.i71, %bb.ah ]
  %storemerge.i3.i78 = phi ptr [ %i.fj, %bb.ag ], [ %i.fk, %bb.ah ] ; 2 uses
  %.not30.i79 = icmp eq ptr %storemerge.i1.i73, %.sroa.0.0.i47
  br i1 %.not30.i79, label %.critedge.i74, label %.lr.ph.i67, !llvm.loop !182

bb.ai:                                            ; preds = %.critedge.i74, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEmmEv.exit.i57
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.020.040.i55, i64 4 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ei, i64 1024
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %bb.aj, label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60, !prof !222

bb.aj:                                            ; preds = %bb.ai
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.15.039.i56, i64 8 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !250 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60

_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60: ; preds = %bb.aj, %bb.ai
  %i.fr = phi ptr [ %i.fq, %bb.aj ], [ %i.ei, %bb.ai ]
  %.sroa.15.2.i61 = phi ptr [ %i.fp, %bb.aj ], [ %.sroa.15.039.i56, %bb.ai ]
  %.sroa.020.2.i62 = phi ptr [ %i.fq, %bb.aj ], [ %i.fm, %bb.ai ] ; 2 uses
  %.not29.i63 = icmp eq ptr %.sroa.020.2.i62, %i.a
  br i1 %.not29.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80, label %.lr.ph41.i54, !llvm.loop !183

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80: ; preds = %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit5.i60, %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEppEv.exit.i50
  br i1 %8, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ak

._crit_edge189:                                   ; preds = %.thread, %bb.bk, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS2_14deque_iteratorIPS7_Lb0ELj0ELj0EmEEEEvT0_SG_T_.exit80
  ret void

bb.ak:                                            ; preds = %.lr.ph188, %bb.bk
  %.032186 = phi i64 [ 16, %.lr.ph188 ], [ %i.nv, %bb.bk ] ; 13 uses
  %i.fy = sub i64 %.0.i219229, %.032186
  %i.fz = icmp ugt i64 %i.fy, %.032186            ; 2 uses
  br i1 %i.fz, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.ga = shl i64 %.032186, 1                     ; 6 uses
  %i.gb = icmp ugt i64 %.0.i219229, %i.ga
  br i1 %i.gb, label %.lr.ph183, label %._crit_edge184.thread

.lr.ph183:                                        ; preds = %bb.al
  %.not.i.i91 = icmp eq i64 %.032186, 0
  %.not.i.i101 = icmp eq i64 %i.ga, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph183, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPNS2_4test24movable_and_copyable_intELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_T0_.exit
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.ki, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPNS2_4test24movable_and_copyable_intELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SG_SG_T0_.exit ] ; 7 uses
  %i.gc = load ptr, ptr %0, align 8, !tbaa !289, !noalias !10529 ; 8 uses
  %i.gd = load ptr, ptr %i.dz, align 8, !tbaa !290, !noalias !10529 ; 11 uses
  %.not.i.i81 = icmp eq i64 %.0181, 0             ; 2 uses
  br i1 %.not.i.i81, label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit90, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !250, !noalias !10529
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = ashr exact i64 %i.gh, 2
  %i.gj = add nsw i64 %i.gi, %.0181               ; 7 uses
  %or.cond.i.i82 = icmp ult i64 %i.gj, 256
  br i1 %or.cond.i.i82, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %.0181
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %.0181
  br label %_ZNK5boost9container14deque_iteratorIPNS0_4test24movable_and_copyable_intELb0ELj0ELj0EmEplEl.exit90

bb.ap:                                            ; preds = %bb.an
  %i.gm = icmp sgt i64 %i.gj, 0
  %i.gn = lshr i64 %i.gj, 8                       ; 2 uses
  %i.go = or disjoint i64 %i.gn, -72057594037927936
  %i.gp = select i1 %i.gm, i64 %i.gn, i64 %i.go   ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.gp ; 2 uses
end_hunk_2
