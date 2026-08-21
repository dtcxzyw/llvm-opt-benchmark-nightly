inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_:bb.a
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ek
  store i32 -2147483648, ptr %i.el, align 4, !tbaa !287
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.not.i41.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i41.3, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit43, label %.lr.ph.i39, !llvm.loop !1413

_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit43: ; preds = %.lr.ph.i39.prol.loopexit, %.lr.ph.i39, %bb.r
  resume { ptr, i32 } %i.dq

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit: ; preds = %.lr.ph.i28.i, %bb.q, %.lr.ph.i.i.i.i.i, %bb.g, %middle.block, %middle.block122, %._crit_edge.i, %._crit_edge64.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !287
  store i32 %i.f, ptr %2, align 4, !tbaa !287
  store i32 0, ptr %0, align 4, !tbaa !287
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not3139.i.i = icmp eq ptr %i.g, %1
  br i1 %.not3139.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph42.i.i

.lr.ph42.i.i:                                     ; preds = %bb.c, %.critedge.i.i
  %i.h = phi ptr [ %i.q, %.critedge.i.i ], [ %i.g, %bb.c ] ; 5 uses
  %.pn40.i.i = phi ptr [ %.02641.i.i, %.critedge.i.i ], [ %2, %bb.c ] ; 5 uses
  %.02641.i.i = getelementptr inbounds nuw i8, ptr %.pn40.i.i, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !287
  %i.j = load i32, ptr %.pn40.i.i, align 4, !tbaa !287 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph42.i.i
  store i32 %i.j, ptr %.02641.i.i, align 4, !tbaa !287
  store i32 0, ptr %.pn40.i.i, align 4, !tbaa !287
  %.not3233.i.i = icmp eq ptr %.pn40.i.i, %2
  br i1 %.not3233.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.035.i.i = phi ptr [ %i.l, %bb.e ], [ %.pn40.i.i, %bb.d ] ; 3 uses
  %i.l = getelementptr i8, ptr %.035.i.i, i64 -4  ; 4 uses
  %i.m = load i32, ptr %i.h, align 4, !tbaa !287
  %i.n = load i32, ptr %i.l, align 4, !tbaa !287  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  store i32 %i.n, ptr %.035.i.i, align 4, !tbaa !287
  store i32 0, ptr %i.l, align 4, !tbaa !287
  %.not32.i.i = icmp eq ptr %i.l, %2
  br i1 %.not32.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !1533

.critedge.i.i:                                    ; preds = %bb.e, %.lr.ph.i.i, %bb.d, %.lr.ph42.i.i
  %.1.i.i = phi ptr [ %.02641.i.i, %.lr.ph42.i.i ], [ %2, %bb.d ], [ %2, %bb.e ], [ %.035.i.i, %.lr.ph.i.i ]
  %i.p = load i32, ptr %i.h, align 4, !tbaa !287
  store i32 %i.p, ptr %.1.i.i, align 4, !tbaa !287
  store i32 0, ptr %i.h, align 4, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.q, %1
  br i1 %.not31.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph42.i.i, !llvm.loop !1534

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.d, 1                         ; 6 uses
  %.idx = shl nuw nsw i64 %i.r, 2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.r ; 2 uses
  tail call void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.s, ptr noundef %1, ptr noundef %i.t)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.s)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not23.i.i = icmp eq i64 %i.r, 0
  br i1 %.not23.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i27, %bb.j ], [ %i.s, %bb.f ] ; 11 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.j ], [ %i.t, %bb.f ] ; 5 uses
  %.01824.i.i = phi ptr [ %i.az, %bb.j ], [ %2, %bb.f ] ; 8 uses
  %i.w = icmp eq ptr %.01625.i.i, %i.v
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i26
  %.026.i.i57.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.x = shl i64 %i.r, 3
  %i.y = add i64 %i.x, %i.b
  %i.z = add i64 %i.y, -4
  %i.aa = sub i64 %i.z, %.026.i.i57.le            ; 2 uses
  %i.ab = lshr i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ad = shl i64 %indvar, 2
  %i.ae = getelementptr i8, ptr %2, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 4
  %i.af = shl i64 %i.r, 3
  %i.ag = add i64 %i.af, %i.b
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %.026.i.i57.le
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep58 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep59 = getelementptr i8, ptr %.026.i.i, i64 4
  %scevgep60 = getelementptr i8, ptr %scevgep59, i64 %i.aj
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep60
  %bound1 = icmp ult ptr %.026.i.i, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01824.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.026.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.an ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.026.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep61, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !287, !alias.scope !1535
  %wide.load62 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !287, !alias.scope !1535
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1538, !noalias !1535
  store <4 x i32> %wide.load62, ptr %i.ap, align 4, !tbaa !287, !alias.scope !1538, !noalias !1535
  store <4 x i32> zeroinitializer, ptr %next.gep61, align 4, !tbaa !287, !alias.scope !1535
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !287, !alias.scope !1535
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !287
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !287
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.u
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1541

bb.g:                                             ; preds = %.lr.ph.i.i26
  %i.au = load i32, ptr %.01625.i.i, align 4, !tbaa !287 ; 2 uses
  %i.av = load i32, ptr %.026.i.i, align 4, !tbaa !287 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.au, ptr %.01824.i.i, align 4, !tbaa !287
  store i32 0, ptr %.01625.i.i, align 4, !tbaa !287
  %i.ax = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 4
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 %i.av, ptr %.01824.i.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i.i, align 4, !tbaa !287
  %i.ay = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.i.i = phi ptr [ %i.ax, %bb.h ], [ %.01625.i.i, %bb.i ]
  %.1.i.i27 = phi ptr [ %.026.i.i, %bb.h ], [ %i.ay, %bb.i ] ; 2 uses
  %i.az = getelementptr i8, ptr %.01824.i.i, i64 4
  %.not.i.i28 = icmp eq ptr %.1.i.i27, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i28, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i26, !llvm.loop !1531

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %.critedge.i.i, %middle.block, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit95, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1403
  %.not80 = icmp ult i64 %i.d, %2
  br i1 %.not80, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ne ptr %i.b, %1
  %i.f = icmp ne i64 %2, 1
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph118, label %._crit_edge119

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !328    ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !326  ; 3 uses
  %.idx107 = shl nuw nsw i64 %i.j, 2              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx107 ; 3 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !287
  store i32 %i.l, ptr %i.k, align 4, !tbaa !287
  store i32 0, ptr %0, align 4, !tbaa !287
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.o = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !326
  %i.p = icmp ne ptr %i.b, %1
  %i.q = icmp ne i64 %2, 1
  %i.r = and i1 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit

.lr.ph:                                           ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit
  %indvar = phi i64 [ %indvar.next, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ 0, %bb.c ] ; 3 uses
  %.0111 = phi i64 [ %.1, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ 1, %bb.c ] ; 2 uses
  %.067110 = phi ptr [ %.168, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ %0, %bb.c ] ; 8 uses
  %.071109 = phi ptr [ %.172, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ %i.b, %bb.c ] ; 9 uses
  %.075108 = phi ptr [ %i.cu, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ %i.b, %bb.c ] ; 10 uses
  %i.s = phi i64 [ %i.ct, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit ], [ %i.o, %bb.c ] ; 5 uses
  %i.t = shl i64 %indvar, 2
  %i.u = add i64 %i.t, %i.a                       ; 2 uses
  %i.v = shl i64 %indvar, 2
  %i.w = add i64 %i.v, %i.a
  %.071109144 = ptrtoaddr ptr %.071109 to i64     ; 2 uses
  %.idx106 = shl nuw nsw i64 %i.s, 2              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx106 ; 4 uses
  %.not15.i = icmp samesign eq i64 %i.s, %i.j
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %gepdiff = sub nsw i64 %.idx106, %.idx107
  %i.y = ashr exact i64 %gepdiff, 2
  %i.z = load i32, ptr %.075108, align 4, !tbaa !287
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.y, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %i.k, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.aa = lshr i64 %.017.i, 1                     ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !287
  %i.ad = icmp slt i32 %i.ac, %i.z                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %.neg.i = xor i64 %i.aa, -1
  %i.af = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.ad, ptr %i.ae, ptr %.01316.i ; 2 uses
  %.1.i = select i1 %i.ad, i64 %i.af, i64 %i.aa   ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !1542

_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d, %.lr.ph
  %.013.lcssa.i = phi ptr [ %i.k, %.lr.ph ], [ %.114.i, %bb.d ] ; 5 uses
  %i.ag = icmp eq ptr %.013.lcssa.i, %i.x         ; 2 uses
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.ah = load i32, ptr %.075108, align 4, !tbaa !287
  %i.ai = load i32, ptr %.013.lcssa.i, align 4, !tbaa !287
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i = icmp eq ptr %.071109, %.075108
  br i1 %.not8.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81.preheader

.lr.ph.i81.preheader:                             ; preds = %bb.f
  %i.ak = sub i64 %i.u, %.071109144               ; 2 uses
  %i.al = lshr i64 %i.ak, 2
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 28
  br i1 %min.iters.check, label %.lr.ph.i81.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i81.preheader
  %scevgep = getelementptr i8, ptr %.067110, i64 4
  %i.an = sub i64 %i.w, %.071109144
  %i.ao = and i64 %i.an, -4                       ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep146 = getelementptr i8, ptr %.071109, i64 4
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.ao
  %bound0 = icmp ult ptr %.067110, %scevgep147
  %bound1 = icmp ult ptr %.071109, %scevgep145
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i81.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.067110, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %.071109, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.067110, i64 %i.as ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.071109, i64 %i.as ; 3 uses
  %i.at = getelementptr i8, ptr %next.gep148, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !287, !alias.scope !1543
  %wide.load149 = load <4 x i32>, ptr %i.at, align 4, !tbaa !287, !alias.scope !1543
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1546, !noalias !1543
  store <4 x i32> %wide.load149, ptr %i.au, align 4, !tbaa !287, !alias.scope !1546, !noalias !1543
  store <4 x i32> zeroinitializer, ptr %next.gep148, align 4, !tbaa !287, !alias.scope !1543
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !287, !alias.scope !1543
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1548

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81.preheader197

.lr.ph.i81.preheader197:                          ; preds = %vector.memcheck, %.lr.ph.i81.preheader, %middle.block
  %.010.i.ph = phi ptr [ %.067110, %vector.memcheck ], [ %.067110, %.lr.ph.i81.preheader ], [ %i.aq, %middle.block ] ; 2 uses
  %.079.i.ph = phi ptr [ %.071109, %vector.memcheck ], [ %.071109, %.lr.ph.i81.preheader ], [ %i.ar, %middle.block ] ; 3 uses
  %.079.i.ph199 = ptrtoaddr ptr %.079.i.ph to i64
  %i.aw = sub i64 %i.u, %.079.i.ph199             ; 2 uses
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = add nuw nsw i64 %i.ax, 1
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol

.lr.ph.i81.prol:                                  ; preds = %.lr.ph.i81.preheader197, %.lr.ph.i81.prol
  %.010.i.prol = phi ptr [ %i.bb, %.lr.ph.i81.prol ], [ %.010.i.ph, %.lr.ph.i81.preheader197 ] ; 2 uses
  %.079.i.prol = phi ptr [ %i.ba, %.lr.ph.i81.prol ], [ %.079.i.ph, %.lr.ph.i81.preheader197 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i81.prol ], [ 0, %.lr.ph.i81.preheader197 ]
  %i.az = load i32, ptr %.079.i.prol, align 4, !tbaa !287
  store i32 %i.az, ptr %.010.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.prol, align 4, !tbaa !287
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i.prol, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i81.prol.loopexit, label %.lr.ph.i81.prol, !llvm.loop !1549

.lr.ph.i81.prol.loopexit:                         ; preds = %.lr.ph.i81.prol, %.lr.ph.i81.preheader197
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i81.preheader197 ], [ %i.bb, %.lr.ph.i81.prol ]
  %.010.i.unr = phi ptr [ %.010.i.ph, %.lr.ph.i81.preheader197 ], [ %i.bb, %.lr.ph.i81.prol ]
  %.079.i.unr = phi ptr [ %.079.i.ph, %.lr.ph.i81.preheader197 ], [ %i.ba, %.lr.ph.i81.prol ]
  %i.bc = icmp ult i64 %i.aw, 28
  br i1 %i.bc, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81
  %.010.i = phi ptr [ %i.ca, %.lr.ph.i81 ], [ %.010.i.unr, %.lr.ph.i81.prol.loopexit ] ; 9 uses
  %.079.i = phi ptr [ %i.bz, %.lr.ph.i81 ], [ %.079.i.unr, %.lr.ph.i81.prol.loopexit ] ; 10 uses
  %i.bd = load i32, ptr %.079.i, align 4, !tbaa !287
  store i32 %i.bd, ptr %.010.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i, align 4, !tbaa !287
  %i.be = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !287
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !287
  store i32 0, ptr %i.be, align 4, !tbaa !287
  %i.bh = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !287
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !287
  store i32 0, ptr %i.bh, align 4, !tbaa !287
  %i.bk = getelementptr inbounds nuw i8, ptr %.079.i, i64 12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.010.i, i64 12
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !287
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !287
  store i32 0, ptr %i.bk, align 4, !tbaa !287
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !287
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !287
  store i32 0, ptr %i.bn, align 4, !tbaa !287
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i, i64 20 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i, i64 20
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !287
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !287
  store i32 0, ptr %i.bq, align 4, !tbaa !287
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !287
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !287
  store i32 0, ptr %i.bt, align 4, !tbaa !287
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i, i64 28 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i, i64 28
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !287
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !287
  store i32 0, ptr %i.bw, align 4, !tbaa !287
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.010.i, i64 32 ; 2 uses
  %.not.i82.7 = icmp eq ptr %i.bz, %.075108
  br i1 %.not.i82.7, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i81, !llvm.loop !1550

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i81.prol.loopexit, %.lr.ph.i81, %middle.block, %bb.f
  %.0.lcssa.i = phi ptr [ %.067110, %bb.f ], [ %i.aq, %middle.block ], [ %.lcssa.unr, %.lr.ph.i81.prol.loopexit ], [ %i.ca, %.lr.ph.i81 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.075108, i64 4 ; 2 uses
  %i.cc = add nuw i64 %.0111, 1                   ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.cd = load i32, ptr %.075108, align 4, !tbaa !287
  store i32 %i.cd, ptr %i.x, align 4, !tbaa !287
  store i32 0, ptr %.075108, align 4, !tbaa !287
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cg = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !326
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

bb.h:                                             ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.ch = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !287
  store i32 %i.ci, ptr %i.x, align 4, !tbaa !287
  store i32 0, ptr %i.ch, align 4, !tbaa !287
  %i.cj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.cl = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.cl, ptr %i.i, align 8, !tbaa !326
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8 ; 2 uses
  %.not8.i.i = icmp eq ptr %.013.lcssa.i, %i.cn
  br i1 %.not8.i.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.h
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.010.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.co, %.lr.ph.i.preheader.i ]
  %.079.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cn, %.lr.ph.i.preheader.i ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !287
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !287
  store i32 0, ptr %i.cp, align 4, !tbaa !287
  %.not.i.i = icmp eq ptr %.013.lcssa.i, %i.cp
  br i1 %.not.i.i, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !1551

_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %i.cs = load i32, ptr %.075108, align 4, !tbaa !287
  store i32 %i.cs, ptr %.013.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %.075108, align 4, !tbaa !287
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit: ; preds = %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, %bb.g, %bb.e
  %i.ct = phi i64 [ %i.s, %bb.e ], [ %i.cg, %bb.g ], [ %i.cl, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 4 uses
  %.172 = phi ptr [ %.071109, %bb.e ], [ %i.cb, %bb.g ], [ %i.cb, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ]
  %.168 = phi ptr [ %.067110, %bb.e ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 11 uses
  %.1 = phi i64 [ %.0111, %bb.e ], [ %i.cc, %bb.g ], [ %i.cc, %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.075108, i64 4 ; 2 uses
  %i.cv = icmp ne ptr %i.cu, %1
  %i.cw = icmp ult i64 %.1, %2
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cx, label %.lr.ph, label %._crit_edge, !llvm.loop !1552

._crit_edge:                                      ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE6insertIS5_EEvS5_T_.exit
  %.168153.le = ptrtoaddr ptr %.168 to i64        ; 2 uses
  %.not8.i83 = icmp eq ptr %0, %.168
  br i1 %.not8.i83, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i84.preheader

.lr.ph.i84.preheader:                             ; preds = %._crit_edge
  %i.cy = getelementptr [4 x i8], ptr %.168, i64 %.1 ; 5 uses
  %i.cz = add i64 %.168153.le, -4
  %i.da = sub i64 %i.cz, %i.a                     ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.da, 108
  br i1 %min.iters.check161, label %.lr.ph.i84.preheader196, label %vector.memcheck151

vector.memcheck151:                               ; preds = %.lr.ph.i84.preheader
  %scevgep152 = getelementptr i8, ptr %.168, i64 -4
  %i.dd = shl i64 %.1, 2
  %reass.sub = sub i64 %.168153.le, %i.a
  %i.de = add i64 %reass.sub, -4                  ; 2 uses
  %i.df = and i64 %i.de, -4
  %i.dg = sub i64 %i.dd, %i.df
  %scevgep154 = getelementptr i8, ptr %scevgep152, i64 %i.dg
  %scevgep155 = getelementptr i8, ptr %.168, i64 -4
  %i.dh = lshr i64 %i.de, 2
  %i.di = mul i64 %i.dh, -4
  %scevgep156 = getelementptr i8, ptr %scevgep155, i64 %i.di
  %bound0157 = icmp ult ptr %scevgep154, %.168
  %bound1158 = icmp ult ptr %scevgep156, %i.cy
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i84.preheader196, label %vector.ph162

vector.ph162:                                     ; preds = %vector.memcheck151
  %n.vec163 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.dj = mul i64 %n.vec163, -4                   ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cy, i64 %i.dj
  %i.dl = getelementptr i8, ptr %.168, i64 %i.dj
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %i.dm = mul i64 %index165, -4                   ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.cy, i64 %i.dm ; 2 uses
  %next.gep167 = getelementptr i8, ptr %.168, i64 %i.dm ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %next.gep167, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %next.gep167, i64 -32 ; 2 uses
  %wide.load168 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !287, !alias.scope !1553
  %wide.load169 = load <4 x i32>, ptr %i.do, align 4, !tbaa !287, !alias.scope !1553
  %i.dp = getelementptr inbounds i8, ptr %next.gep166, i64 -16
  %i.dq = getelementptr inbounds i8, ptr %next.gep166, i64 -32
  store <4 x i32> %wide.load168, ptr %i.dp, align 4, !tbaa !287, !alias.scope !1556, !noalias !1553
  store <4 x i32> %wide.load169, ptr %i.dq, align 4, !tbaa !287, !alias.scope !1556, !noalias !1553
  store <4 x i32> zeroinitializer, ptr %i.dn, align 4, !tbaa !287, !alias.scope !1553
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !287, !alias.scope !1553
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.dr, label %middle.block171, label %vector.body164, !llvm.loop !1558

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.dc, %n.vec163
  br i1 %cmp.n172, label %_ZN5boost13move_backwardIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i84.preheader196

.lr.ph.i84.preheader196:                          ; preds = %vector.memcheck151, %.lr.ph.i84.preheader, %middle.block171
  %.010.i85.ph = phi ptr [ %i.cy, %vector.memcheck151 ], [ %i.cy, %.lr.ph.i84.preheader ], [ %i.dk, %middle.block171 ]
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib20merge_bufferless_ON2IPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_:bb.a
  br i1 %i.aj, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.ak = getelementptr inbounds i8, ptr %.114.i59, i64 -4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.141 = phi ptr [ %i.ai, %bb.e ], [ %i.al, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.141, i64 -4 ; 3 uses
  %.not51 = icmp eq ptr %.114.i59, %i.al
  br i1 %.not51, label %.critedge.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds i8, ptr %.141, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !287
  %i.ao = load i32, ptr %i.ak, align 4, !tbaa !287
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph.loopexit, label %bb.f, !llvm.loop !1578

.critedge.thread:                                 ; preds = %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, %bb.f, %_ZN5boost7movelib11lower_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit, %.preheader, %.preheader71, %.preheader70, %_ZN5boost7movelib11upper_boundIPNS_9container4test24movable_and_copyable_intES4_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEET_SE_SE_RKT0_T1_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx36 = shl nuw nsw i64 %.sroa.speculated, 2
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph42.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us
  %.037.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.037.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !1579

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39
  %.037.us38 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.us38 ; 3 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !287
  store i32 %i.h, ptr %i.g, align 4, !tbaa !287
  store i32 0, ptr %i.f, align 4, !tbaa !287
  %i.i = add i64 %.037.us38, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39, label %._crit_edge, !llvm.loop !1579

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit
  %.037 = phi i64 [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx36
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !287
  store i32 %i.o, ptr %i.n, align 4, !tbaa !287
  store i32 0, ptr %i.l, align 4, !tbaa !287
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.z, %.critedge.i ], [ %i.p, %.lr.ph42.i.preheader ] ; 5 uses
  %.pn40.i = phi ptr [ %.02641.i, %.critedge.i ], [ %i.n, %.lr.ph42.i.preheader ] ; 5 uses
  %.02641.i = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !287
  %i.s = load i32, ptr %.pn40.i, align 4, !tbaa !287 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 %i.s, ptr %.02641.i, align 4, !tbaa !287
  store i32 0, ptr %.pn40.i, align 4, !tbaa !287
  %.not3233.i = icmp eq ptr %.pn40.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.u, %bb.c ], [ %.pn40.i, %bb.b ] ; 3 uses
  %i.u = getelementptr i8, ptr %.035.i, i64 -4    ; 4 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !287
  %i.w = load i32, ptr %i.u, align 4, !tbaa !287  ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.w, ptr %.035.i, align 4, !tbaa !287
  store i32 0, ptr %i.u, align 4, !tbaa !287
  %.not32.i = icmp eq ptr %i.u, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1533

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph42.i
  %.1.i = phi ptr [ %.02641.i, %.lr.ph42.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.y = load i32, ptr %i.q, align 4, !tbaa !287
  store i32 %i.y, ptr %.1.i, align 4, !tbaa !287
  store i32 0, ptr %i.q, align 4, !tbaa !287
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not31.i = icmp eq ptr %i.z, %i.m
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !1534

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.aa = add i64 %.037, %.sroa.speculated        ; 3 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !1579

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us ], [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.loopexit ], [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit.us39 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %.idx35 = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ag = load i32, ptr %i.ad, align 4, !tbaa !287
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !287
  store i32 0, ptr %i.ad, align 4, !tbaa !287
  %i.ah = add nuw nsw i64 %.idx, 4
  %.not3139.i22 = icmp samesign eq i64 %i.ah, %.idx35
  br i1 %.not3139.i22, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %.lr.ph42.i23.preheader

.lr.ph42.i23.preheader:                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  br label %.lr.ph42.i23

.lr.ph42.i23:                                     ; preds = %.lr.ph42.i23.preheader, %.critedge.i26
  %i.aj = phi ptr [ %i.as, %.critedge.i26 ], [ %i.ai, %.lr.ph42.i23.preheader ] ; 5 uses
  %.pn40.i24 = phi ptr [ %.02641.i25, %.critedge.i26 ], [ %i.af, %.lr.ph42.i23.preheader ] ; 5 uses
  %.02641.i25 = getelementptr inbounds nuw i8, ptr %.pn40.i24, i64 4 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !287
  %i.al = load i32, ptr %.pn40.i24, align 4, !tbaa !287 ; 2 uses
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.e, label %.critedge.i26

bb.e:                                             ; preds = %.lr.ph42.i23
  store i32 %i.al, ptr %.02641.i25, align 4, !tbaa !287
  store i32 0, ptr %.pn40.i24, align 4, !tbaa !287
  %.not3233.i29 = icmp eq ptr %.pn40.i24, %i.af
  br i1 %.not3233.i29, label %.critedge.i26, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.e, %bb.f
  %.035.i31 = phi ptr [ %i.an, %bb.f ], [ %.pn40.i24, %bb.e ] ; 3 uses
  %i.an = getelementptr i8, ptr %.035.i31, i64 -4 ; 4 uses
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !287
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !287 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %.critedge.i26

bb.f:                                             ; preds = %.lr.ph.i30
  store i32 %i.ap, ptr %.035.i31, align 4, !tbaa !287
  store i32 0, ptr %i.an, align 4, !tbaa !287
  %.not32.i32 = icmp eq ptr %i.an, %i.af
  br i1 %.not32.i32, label %.critedge.i26, label %.lr.ph.i30, !llvm.loop !1533

.critedge.i26:                                    ; preds = %bb.f, %.lr.ph.i30, %bb.e, %.lr.ph42.i23
  %.1.i27 = phi ptr [ %.02641.i25, %.lr.ph42.i23 ], [ %i.af, %bb.e ], [ %.035.i31, %.lr.ph.i30 ], [ %i.af, %bb.f ]
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !287
  store i32 %i.ar, ptr %.1.i27, align 4, !tbaa !287
  store i32 0, ptr %i.aj, align 4, !tbaa !287
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %.not31.i28 = icmp eq ptr %i.as, %i.ae
  br i1 %.not31.i28, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33, label %.lr.ph42.i23, !llvm.loop !1534

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_NS0_7move_opEEEvT0_SF_T1_T_T2_.exit33: ; preds = %.critedge.i26, %._crit_edge, %bb.d
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = icmp uge i64 %4, %2
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88

.preheader.lr.ph:                                 ; preds = %bb.a
  %.idx68 = shl i64 %1, 2                         ; 6 uses
  %i.d = add i64 %.idx68, -4
  %i.e = add i64 %.idx68, -4
  %invariant.op = add i64 %.idx68, -4
  %invariant.op311 = add i64 %.idx68, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67
  %.04087 = phi i64 [ %4, %.preheader.lr.ph ], [ %i.gr, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ]
  %.04186 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.gq, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ] ; 8 uses
  %.04285 = phi i64 [ %2, %.preheader.lr.ph ], [ %i.f, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ] ; 16 uses
  %.04186157 = ptrtoaddr ptr %.04186 to i64       ; 6 uses
  %i.f = shl i64 %.04285, 1                       ; 8 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = sub i64 0, %.04285
  %.not43.i = icmp eq i64 %.04285, 0
  %i.i = add i64 %.04186157, -4
  %i.j = shl i64 %.04285, 2                       ; 2 uses
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = shl i64 %.04285, 3
  %i.m = shl i64 %.04285, 3
  %i.n = shl i64 %.04285, 3                       ; 2 uses
  %i.o = add i64 %.04186157, -4
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = shl i64 %.04285, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit
  %indvar209 = phi i64 [ 0, %.lr.ph ], [ %indvar.next210, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 5 uses
  %.080 = phi ptr [ %.04186, %.lr.ph ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 5 uses
  %.03979 = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.r = mul i64 %i.q, %indvar209
  %i.s = add i64 %i.p, %i.r                       ; 2 uses
  %i.t = mul i64 %i.n, %indvar209                 ; 2 uses
  %reass.sub = sub i64 %i.t, %i.j
  %i.u = add i64 %i.p, %i.t
  %i.v = mul i64 %i.m, %indvar209
  %i.w = add i64 %i.k, %i.v                       ; 2 uses
  %i.x = mul i64 %i.l, %indvar209
  %i.y = add i64 %i.k, %i.x
  %i.z = getelementptr [4 x i8], ptr %.080, i64 %i.h ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %.04285 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.080, i64 %i.f ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
  %indvar234 = phi i64 [ %indvar.next235, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.02246.i = phi ptr [ %.1.i, %bb.f ], [ %i.aa, %bb.b ] ; 11 uses
  %.02345.i = phi ptr [ %i.cc, %bb.f ], [ %i.z, %bb.b ] ; 8 uses
  %.02444.i = phi ptr [ %.125.i, %bb.f ], [ %.080, %bb.b ] ; 5 uses
  %i.ac = icmp eq ptr %.02444.i, %i.aa
  br i1 %i.ac, label %.lr.ph.i.i.i.preheader, label %bb.c

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02246.i237.le = ptrtoaddr ptr %.02246.i to i64 ; 2 uses
  %i.ad = sub i64 %i.s, %.02246.i237.le           ; 2 uses
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check245 = icmp ult i64 %i.ad, 28
  br i1 %min.iters.check245, label %.lr.ph.i.i.i.preheader265, label %vector.memcheck233

vector.memcheck233:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ag = shl i64 %indvar234, 2
  %i.ah = getelementptr i8, ptr %.04186, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 %reass.sub
  %scevgep236 = getelementptr i8, ptr %i.ai, i64 4
  %i.aj = sub i64 %i.u, %.02246.i237.le
  %i.ak = and i64 %i.aj, -4                       ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep236, i64 %i.ak
  %scevgep239 = getelementptr i8, ptr %.02246.i, i64 4
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.ak
  %bound0241 = icmp ult ptr %.02345.i, %scevgep240
  %bound1242 = icmp ult ptr %.02246.i, %scevgep238
  %found.conflict243 = and i1 %bound0241, %bound1242
  br i1 %found.conflict243, label %.lr.ph.i.i.i.preheader265, label %vector.ph246

vector.ph246:                                     ; preds = %vector.memcheck233
  %n.vec247 = and i64 %i.af, 9223372036854775800  ; 3 uses
  %i.al = shl i64 %n.vec247, 2                    ; 2 uses
  %i.am = getelementptr i8, ptr %.02345.i, i64 %i.al
  %i.an = getelementptr i8, ptr %.02246.i, i64 %i.al
  br label %vector.body248

vector.body248:                                   ; preds = %vector.body248, %vector.ph246
  %index249 = phi i64 [ 0, %vector.ph246 ], [ %index.next254, %vector.body248 ] ; 2 uses
  %i.ao = shl i64 %index249, 2                    ; 2 uses
  %next.gep250 = getelementptr i8, ptr %.02345.i, i64 %i.ao ; 2 uses
  %next.gep251 = getelementptr i8, ptr %.02246.i, i64 %i.ao ; 3 uses
  %i.ap = getelementptr i8, ptr %next.gep251, i64 16 ; 2 uses
  %wide.load252 = load <4 x i32>, ptr %next.gep251, align 4, !tbaa !287, !alias.scope !1580
  %wide.load253 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !287, !alias.scope !1580
  %i.aq = getelementptr i8, ptr %next.gep250, i64 16
  store <4 x i32> %wide.load252, ptr %next.gep250, align 4, !tbaa !287, !alias.scope !1583, !noalias !1580
  store <4 x i32> %wide.load253, ptr %i.aq, align 4, !tbaa !287, !alias.scope !1583, !noalias !1580
  store <4 x i32> zeroinitializer, ptr %next.gep251, align 4, !tbaa !287, !alias.scope !1580
  store <4 x i32> zeroinitializer, ptr %i.ap, align 4, !tbaa !287, !alias.scope !1580
  %index.next254 = add nuw i64 %index249, 8       ; 2 uses
  %i.ar = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.ar, label %middle.block255, label %vector.body248, !llvm.loop !1585

middle.block255:                                  ; preds = %vector.body248
  %cmp.n256 = icmp eq i64 %i.af, %n.vec247
  br i1 %cmp.n256, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i.preheader265

.lr.ph.i.i.i.preheader265:                        ; preds = %vector.memcheck233, %.lr.ph.i.i.i.preheader, %middle.block255
  %.010.i.i.i.ph = phi ptr [ %.02345.i, %vector.memcheck233 ], [ %.02345.i, %.lr.ph.i.i.i.preheader ], [ %i.am, %middle.block255 ] ; 2 uses
  %.079.i.i.i.ph = phi ptr [ %.02246.i, %vector.memcheck233 ], [ %.02246.i, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block255 ] ; 3 uses
  %.079.i.i.i.ph286 = ptrtoaddr ptr %.079.i.i.i.ph to i64
  %i.as = sub i64 %i.s, %.079.i.i.i.ph286         ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.au, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader265, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ] ; 2 uses
  %.079.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.prol ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader265 ]
  %i.av = load i32, ptr %.079.i.i.i.prol, align 4, !tbaa !287
  store i32 %i.av, ptr %.010.i.i.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i.prol, align 4, !tbaa !287
  %i.aw = getelementptr inbounds nuw i8, ptr %.079.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.010.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1586

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader265
  %.010.i.i.i.unr = phi ptr [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ], [ %i.ax, %.lr.ph.i.i.i.prol ]
  %.079.i.i.i.unr = phi ptr [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader265 ], [ %i.aw, %.lr.ph.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.as, 28
  br i1 %i.ay, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %.079.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %i.az = load i32, ptr %.079.i.i.i, align 4, !tbaa !287
  store i32 %i.az, ptr %.010.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !287
  %i.ba = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !287
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !287
  store i32 0, ptr %i.ba, align 4, !tbaa !287
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !287
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !287
  store i32 0, ptr %i.bd, align 4, !tbaa !287
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 12
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !287
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !287
  store i32 0, ptr %i.bg, align 4, !tbaa !287
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !287
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !287
  store i32 0, ptr %i.bj, align 4, !tbaa !287
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 20 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 20
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !287
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !287
  store i32 0, ptr %i.bm, align 4, !tbaa !287
  %i.bp = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 24 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 24
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !287
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !287
  store i32 0, ptr %i.bp, align 4, !tbaa !287
  %i.bs = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 28 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 28
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !287
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !287
  store i32 0, ptr %i.bs, align 4, !tbaa !287
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32
  %.not.i.i.i.7 = icmp eq ptr %i.bv, %i.ab
  br i1 %.not.i.i.i.7, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1587

bb.c:                                             ; preds = %.lr.ph.i
  %i.bx = load i32, ptr %.02246.i, align 4, !tbaa !287 ; 2 uses
  %i.by = load i32, ptr %.02444.i, align 4, !tbaa !287 ; 2 uses
  %i.bz = icmp slt i32 %i.bx, %i.by
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.bx, ptr %.02345.i, align 4, !tbaa !287
  store i32 0, ptr %.02246.i, align 4, !tbaa !287
  %i.ca = getelementptr inbounds nuw i8, ptr %.02246.i, i64 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.by, ptr %.02345.i, align 4, !tbaa !287
  store i32 0, ptr %.02444.i, align 4, !tbaa !287
  %i.cb = getelementptr inbounds nuw i8, ptr %.02444.i, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.125.i = phi ptr [ %.02444.i, %bb.d ], [ %i.cb, %bb.e ] ; 2 uses
  %.1.i = phi ptr [ %i.ca, %bb.d ], [ %.02246.i, %bb.e ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.02345.i, i64 4  ; 2 uses
  %.not.i = icmp eq ptr %.1.i, %i.ab
  %indvar.next235 = add i64 %indvar234, 1
  br i1 %.not.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, label %.lr.ph.i, !llvm.loop !1588

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i: ; preds = %bb.f, %bb.b
  %.024.lcssa.i = phi ptr [ %.080, %bb.b ], [ %.125.i, %bb.f ] ; 9 uses
  %.023.lcssa.i = phi ptr [ %i.z, %bb.b ], [ %i.cc, %bb.f ] ; 7 uses
  %.024.lcssa.i211 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not27.i = icmp eq ptr %.023.lcssa.i, %.024.lcssa.i
  %.not8.i.i28.i = icmp eq ptr %.024.lcssa.i, %i.aa
  %or.cond38.i = or i1 %.not8.i.i28.i, %.not27.i
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader

.lr.ph.i.i29.i.preheader:                         ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.cd = sub i64 %i.w, %.024.lcssa.i211          ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check219 = icmp ult i64 %i.cd, 28
  br i1 %min.iters.check219, label %.lr.ph.i.i29.i.preheader264, label %vector.memcheck207

vector.memcheck207:                               ; preds = %.lr.ph.i.i29.i.preheader
  %scevgep208 = getelementptr i8, ptr %.023.lcssa.i, i64 4
  %i.cg = sub i64 %i.y, %.024.lcssa.i211
  %i.ch = and i64 %i.cg, -4                       ; 2 uses
  %scevgep212 = getelementptr i8, ptr %scevgep208, i64 %i.ch
  %scevgep213 = getelementptr i8, ptr %.024.lcssa.i, i64 4
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %i.ch
  %bound0215 = icmp ult ptr %.023.lcssa.i, %scevgep214
  %bound1216 = icmp ult ptr %.024.lcssa.i, %scevgep212
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %.lr.ph.i.i29.i.preheader264, label %vector.ph220

vector.ph220:                                     ; preds = %vector.memcheck207
  %n.vec221 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.ci = shl i64 %n.vec221, 2                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.023.lcssa.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %.024.lcssa.i, i64 %i.ci
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body222 ] ; 2 uses
  %i.cl = shl i64 %index223, 2                    ; 2 uses
  %next.gep224 = getelementptr i8, ptr %.023.lcssa.i, i64 %i.cl ; 2 uses
  %next.gep225 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cl ; 3 uses
  %i.cm = getelementptr i8, ptr %next.gep225, i64 16 ; 2 uses
  %wide.load226 = load <4 x i32>, ptr %next.gep225, align 4, !tbaa !287, !alias.scope !1589
  %wide.load227 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !287, !alias.scope !1589
  %i.cn = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> %wide.load226, ptr %next.gep224, align 4, !tbaa !287, !alias.scope !1592, !noalias !1589
  store <4 x i32> %wide.load227, ptr %i.cn, align 4, !tbaa !287, !alias.scope !1592, !noalias !1589
  store <4 x i32> zeroinitializer, ptr %next.gep225, align 4, !tbaa !287, !alias.scope !1589
  store <4 x i32> zeroinitializer, ptr %i.cm, align 4, !tbaa !287, !alias.scope !1589
  %index.next228 = add nuw i64 %index223, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next228, %n.vec221
  br i1 %i.co, label %middle.block229, label %vector.body222, !llvm.loop !1594

middle.block229:                                  ; preds = %vector.body222
  %cmp.n230 = icmp eq i64 %i.cf, %n.vec221
  br i1 %cmp.n230, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i.preheader264

.lr.ph.i.i29.i.preheader264:                      ; preds = %vector.memcheck207, %.lr.ph.i.i29.i.preheader, %middle.block229
  %.010.i.i30.i.ph = phi ptr [ %.023.lcssa.i, %vector.memcheck207 ], [ %.023.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.cj, %middle.block229 ] ; 2 uses
  %.079.i.i31.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck207 ], [ %.024.lcssa.i, %.lr.ph.i.i29.i.preheader ], [ %i.ck, %middle.block229 ] ; 3 uses
  %.079.i.i31.i.ph287 = ptrtoaddr ptr %.079.i.i31.i.ph to i64
  %i.cp = sub i64 %i.w, %.079.i.i31.i.ph287       ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1
  %xtraiter288 = and i64 %i.cr, 7                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol

.lr.ph.i.i29.i.prol:                              ; preds = %.lr.ph.i.i29.i.preheader264, %.lr.ph.i.i29.i.prol
  %.010.i.i30.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i29.i.prol ], [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader264 ] ; 2 uses
  %.079.i.i31.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i29.i.prol ], [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader264 ] ; 3 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %.lr.ph.i.i29.i.prol ], [ 0, %.lr.ph.i.i29.i.preheader264 ]
  %i.cs = load i32, ptr %.079.i.i31.i.prol, align 4, !tbaa !287
  store i32 %i.cs, ptr %.010.i.i30.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i31.i.prol, align 4, !tbaa !287
  %i.ct = getelementptr inbounds nuw i8, ptr %.079.i.i31.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i.i30.i.prol, i64 4 ; 2 uses
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.lr.ph.i.i29.i.prol.loopexit, label %.lr.ph.i.i29.i.prol, !llvm.loop !1595

.lr.ph.i.i29.i.prol.loopexit:                     ; preds = %.lr.ph.i.i29.i.prol, %.lr.ph.i.i29.i.preheader264
  %.010.i.i30.i.unr = phi ptr [ %.010.i.i30.i.ph, %.lr.ph.i.i29.i.preheader264 ], [ %i.cu, %.lr.ph.i.i29.i.prol ]
  %.079.i.i31.i.unr = phi ptr [ %.079.i.i31.i.ph, %.lr.ph.i.i29.i.preheader264 ], [ %i.ct, %.lr.ph.i.i29.i.prol ]
  %i.cv = icmp ult i64 %i.cp, 28
  br i1 %i.cv, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.dt, %.lr.ph.i.i29.i ], [ %.010.i.i30.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 9 uses
  %.079.i.i31.i = phi ptr [ %i.ds, %.lr.ph.i.i29.i ], [ %.079.i.i31.i.unr, %.lr.ph.i.i29.i.prol.loopexit ] ; 10 uses
  %i.cw = load i32, ptr %.079.i.i31.i, align 4, !tbaa !287
  store i32 %i.cw, ptr %.010.i.i30.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !287
  %i.cx = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.da = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !287
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !287
  store i32 0, ptr %i.da, align 4, !tbaa !287
  %i.dd = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 12
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !287
  store i32 %i.df, ptr %i.de, align 4, !tbaa !287
  store i32 0, ptr %i.dd, align 4, !tbaa !287
  %i.dg = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 16
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !287
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !287
  store i32 0, ptr %i.dg, align 4, !tbaa !287
  %i.dj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 20 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 20
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !287
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !287
  store i32 0, ptr %i.dj, align 4, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 24 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 24
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !287
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !287
  store i32 0, ptr %i.dm, align 4, !tbaa !287
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 28 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 28
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !287
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !287
  store i32 0, ptr %i.dp, align 4, !tbaa !287
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 32 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 32
  %.not.i.i32.i.7 = icmp eq ptr %i.ds, %i.aa
  br i1 %.not.i.i32.i.7, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !1596

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i29.i.prol.loopexit, %.lr.ph.i.i29.i, %middle.block255, %middle.block229, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.du = add i64 %.03979, %i.f                   ; 4 uses
  %.0.idx = shl i64 %i.du, 2                      ; 2 uses
  %.0 = getelementptr i8, ptr %.04186, i64 %.0.idx ; 2 uses
  %i.dv = sub i64 %1, %i.du                       ; 2 uses
  %i.dw = icmp ugt i64 %i.dv, %i.f
  %indvar.next210 = add i64 %indvar209, 1
  br i1 %i.dw, label %bb.b, label %._crit_edge, !llvm.loop !1597

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.du, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04186, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 14 uses
  %.lcssa75 = phi i64 [ %1, %.preheader ], [ %i.dv, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa147 = ptrtoaddr ptr %.0.lcssa to i64   ; 4 uses
  %i.dx = icmp ugt i64 %.lcssa75, %.04285
  br i1 %i.dx, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.dy = sub i64 0, %.04285                      ; 6 uses
  %i.dz = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.dy ; 2 uses
  %.idx = shl nuw nsw i64 %.04285, 2              ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.04186, i64 %.idx68 ; 2 uses
  %i.ec = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.ec, %.idx68
  br i1 %.not43.i45, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i53, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ea, %bb.g ] ; 11 uses
  %.02345.i48 = phi ptr [ %i.fb, %bb.k ], [ %i.dz, %bb.g ] ; 8 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 5 uses
  %i.ed = icmp eq ptr %.02444.i49, %i.ea
  br i1 %i.ed, label %.lr.ph.i.i.i63.preheader, label %bb.h

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i46
  %.02246.i47158.le = ptrtoaddr ptr %.02246.i47 to i64 ; 2 uses
  %.reass312 = add i64 %.04186157, %invariant.op311
  %i.ee = sub i64 %.reass312, %.02246.i47158.le   ; 2 uses
  %i.ef = lshr i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 1                ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.ee, 44
  br i1 %min.iters.check166, label %.lr.ph.i.i.i63.preheader268, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i63.preheader
  %i.eh = sub i64 %indvar, %.04285
  %reass.sub263 = shl i64 %i.eh, 2
  %i.ei = getelementptr i8, ptr %.0.lcssa, i64 %reass.sub263
  %scevgep156 = getelementptr i8, ptr %i.ei, i64 4
  %i.ej = add i64 %i.d, %.04186157
  %i.ek = sub i64 %i.ej, %.02246.i47158.le
  %i.el = and i64 %i.ek, -4                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep156, i64 %i.el
  %scevgep160 = getelementptr i8, ptr %.02246.i47, i64 4
  %scevgep161 = getelementptr i8, ptr %scevgep160, i64 %i.el
  %bound0162 = icmp ult ptr %.02345.i48, %scevgep161
  %bound1163 = icmp ult ptr %.02246.i47, %scevgep159
  %found.conflict164 = and i1 %bound0162, %bound1163
  br i1 %found.conflict164, label %.lr.ph.i.i.i63.preheader268, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck155
  %n.vec168 = and i64 %i.eg, 9223372036854775800  ; 3 uses
  %i.em = shl i64 %n.vec168, 2                    ; 2 uses
  %i.en = getelementptr i8, ptr %.02345.i48, i64 %i.em
  %i.eo = getelementptr i8, ptr %.02246.i47, i64 %i.em
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.ep = shl i64 %index170, 2                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.02345.i48, i64 %i.ep ; 2 uses
  %next.gep172 = getelementptr i8, ptr %.02246.i47, i64 %i.ep ; 3 uses
  %i.eq = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load173 = load <4 x i32>, ptr %next.gep172, align 4, !tbaa !287, !alias.scope !1598
  %wide.load174 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !287, !alias.scope !1598
  %i.er = getelementptr i8, ptr %next.gep171, i64 16
  store <4 x i32> %wide.load173, ptr %next.gep171, align 4, !tbaa !287, !alias.scope !1601, !noalias !1598
  store <4 x i32> %wide.load174, ptr %i.er, align 4, !tbaa !287, !alias.scope !1601, !noalias !1598
  store <4 x i32> zeroinitializer, ptr %next.gep172, align 4, !tbaa !287, !alias.scope !1598
  store <4 x i32> zeroinitializer, ptr %i.eq, align 4, !tbaa !287, !alias.scope !1598
  %index.next175 = add nuw i64 %index170, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.es, label %middle.block176, label %vector.body169, !llvm.loop !1603

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.eg, %n.vec168
  br i1 %cmp.n177, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader268

.lr.ph.i.i.i63.preheader268:                      ; preds = %vector.memcheck155, %.lr.ph.i.i.i63.preheader, %middle.block176
  %.010.i.i.i64.ph = phi ptr [ %.02345.i48, %vector.memcheck155 ], [ %.02345.i48, %.lr.ph.i.i.i63.preheader ], [ %i.en, %middle.block176 ]
  %.079.i.i.i65.ph = phi ptr [ %.02246.i47, %vector.memcheck155 ], [ %.02246.i47, %.lr.ph.i.i.i63.preheader ], [ %i.eo, %middle.block176 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader268, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.ev, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader268 ] ; 2 uses
  %.079.i.i.i65 = phi ptr [ %i.eu, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader268 ] ; 3 uses
  %i.et = load i32, ptr %.079.i.i.i65, align 4, !tbaa !287
  store i32 %i.et, ptr %.010.i.i.i64, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i65, align 4, !tbaa !287
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i.i.i65, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i.i64, i64 4
  %.not.i.i.i66 = icmp eq ptr %i.eu, %i.eb
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !1604

bb.h:                                             ; preds = %.lr.ph.i46
  %i.ew = load i32, ptr %.02246.i47, align 4, !tbaa !287 ; 2 uses
  %i.ex = load i32, ptr %.02444.i49, align 4, !tbaa !287 ; 2 uses
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.ew, ptr %.02345.i48, align 4, !tbaa !287
  store i32 0, ptr %.02246.i47, align 4, !tbaa !287
  %i.ez = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.ex, ptr %.02345.i48, align 4, !tbaa !287
  store i32 0, ptr %.02444.i49, align 4, !tbaa !287
  %i.fa = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.fa, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.ez, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.fb = getelementptr i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.eb
  %indvar.next = add i64 %indvar, 1
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
  %i.fq = icmp slt i32 %i.fo, %i.fp
  br i1 %i.fq, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.fr, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !1722

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fr, %bb.af ] ; 3 uses
  %i.fs = ptrtoint ptr %.0226.lcssa to i64
  %i.ft = ptrtoint ptr %.0.lcssa.i to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %i.fw = sub nsw i64 0, %i.fv
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.fw ; 3 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.gf, %.lr.ph.i.i146 ], [ %i.fx, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.ge, %.lr.ph.i.i146 ], [ %.0.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 4 uses
  %i.fy = load i32, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !287
  %i.fz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gb = load i32, ptr %.010.i.i147, align 4, !tbaa !287
  store i32 %i.gb, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 %i.fy, ptr %.010.i.i147, align 4, !tbaa !287
  %i.gc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gd = add i32 %i.gc, -1
  store i32 %i.gd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ge = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ge, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152: ; preds = %.lr.ph.i.i146, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.gg, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.fx, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fk, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 4 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gk, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gt, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gk, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.go, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.gh = load i32, ptr %.0.i, align 4, !tbaa !287
  %i.gi = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gj = icmp slt i32 %i.gh, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  %i.gl = load i32, ptr %.024.i, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !287
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br i1 %i.gj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.gp = load i32, ptr %.0.i, align 4, !tbaa !287
  store i32 %i.gp, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gl, ptr %.0.i, align 4, !tbaa !287
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gr = add i32 %i.gq, -1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gs = icmp eq ptr %i.go, %i.fm
  br i1 %i.gs, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !1753

bb.ai:                                            ; preds = %.preheader.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  %i.gu = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  store i32 %i.gu, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gl, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gw = add i32 %i.gv, -1
  store i32 %i.gw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gx = icmp eq ptr %i.gt, %.5
  br i1 %i.gx, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1753

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.gk, %bb.ai ], [ %i.gk, %bb.ah ] ; 2 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gt, %bb.ai ] ; 2 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fm, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !305
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.hf, %.lr.ph.i.i155 ], [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 3 uses
  %.079.i.i157 = phi ptr [ %i.he, %.lr.ph.i.i155 ], [ %.223.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 4 uses
  %i.gy = load i32, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !287
  %i.gz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ha = add i32 %i.gz, 1
  store i32 %i.ha, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hb = load i32, ptr %.010.i.i156, align 4, !tbaa !287
  store i32 %i.hb, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 %i.gy, ptr %.010.i.i156, align 4, !tbaa !287
  %i.hc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hd = add i32 %i.hc, -1
  store i32 %i.hd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.he = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.he, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155, !llvm.loop !1488

bb.aj:                                            ; preds = %.thread
  br i1 %i.fl, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hg = phi ptr [ %i.fk, %bb.aj ], [ %i.s, %.thread.thread ] ; 2 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 2 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 2 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 2 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 2 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 2 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 2 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 2 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 2 uses
  %i.hh = phi ptr [ %i.fm, %bb.aj ], [ %i.k, %.thread.thread ] ; 2 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %bb.ak, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.hp, %.lr.ph.i.i163 ], [ %.0226274, %bb.ak ] ; 3 uses
  %.079.i.i165 = phi ptr [ %i.ho, %.lr.ph.i.i163 ], [ %.0220272, %bb.ak ] ; 4 uses
  %i.hi = load i32, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !287
  %i.hj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hl = load i32, ptr %.010.i.i164, align 4, !tbaa !287
  store i32 %i.hl, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 %i.hi, ptr %.010.i.i164, align 4, !tbaa !287
  %i.hm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hn = add i32 %i.hm, -1
  store i32 %i.hn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ho = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ho, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.hq = phi ptr [ %i.fk, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fk, %bb.aj ], [ %i.hg, %bb.ak ], [ %i.fk, %.lr.ph.i.i155 ], [ %i.hg, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1324, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1324, %bb.aj ], [ %.2, %bb.ak ], [ %.1324, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238280 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0238282, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238279, %bb.ak ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238279, %.lr.ph.i.i163 ]
  %.0232277 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0232283, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232276, %bb.ak ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232276, %.lr.ph.i.i163 ]
  %.0102267 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102288, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102266, %bb.ak ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102266, %.lr.ph.i.i163 ]
  %.099264 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099290, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099263, %bb.ak ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099263, %.lr.ph.i.i163 ]
  %i.hr = phi ptr [ %i.fm, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fm, %bb.aj ], [ %i.hh, %bb.ak ], [ %i.fm, %.lr.ph.i.i155 ], [ %i.hh, %.lr.ph.i.i163 ] ; 3 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0226284, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226274, %bb.ak ], [ %i.hf, %.lr.ph.i.i155 ], [ %i.hp, %.lr.ph.i.i163 ]
  %i.hs = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102267, ptr noundef %.0232277, ptr noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.hr, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238280, i64 noundef %.099264, i64 noundef %.3, i1 noundef zeroext false)
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %.not8.i.i170 = icmp eq ptr %i.ht, %i.hr
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.ib, %.lr.ph.i.i171 ], [ %i.hs, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 3 uses
  %.079.i.i173 = phi ptr [ %i.ia, %.lr.ph.i.i171 ], [ %i.ht, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 4 uses
  %i.hu = load i32, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i173, align 4, !tbaa !287
  %i.hv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hw = add i32 %i.hv, 1
  store i32 %i.hw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hx = load i32, ptr %.010.i.i172, align 4, !tbaa !287
  store i32 %i.hx, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 %i.hu, ptr %.010.i.i172, align 4, !tbaa !287
  %i.hy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hz = add i32 %i.hy, -1
  store i32 %i.hz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ia = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4
  %.not.i.i174 = icmp eq ptr %i.ia, %i.hr
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177: ; preds = %.lr.ph.i.i171, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
bb.a:
  %.not122 = icmp eq i64 %7, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %.promoted = load ptr, ptr %3, align 8
  %.idx = shl i64 %6, 2                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %.idx, %i.a
  %i.c = add i64 %i.b, -4                         ; 4 uses
  %i.d = shl i64 %6, 2
  %i.e = shl i64 %6, 2
  %i.f = shl i64 %6, 2
  %i.g = shl i64 %6, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 5 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.fn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.0129 = phi ptr [ %0, %.lr.ph ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 6 uses
  %.038128 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.039127 = phi i64 [ %8, %.lr.ph ], [ %i.fl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.082126 = phi i64 [ %7, %.lr.ph ], [ %i.fo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %.083125 = phi ptr [ %2, %.lr.ph ], [ %i.ah, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 12 uses
  %storemerge22.i121123 = phi ptr [ %.promoted, %.lr.ph ], [ %storemerge22.i120, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 9 uses
  %i.h = mul i64 %i.g, %indvar
  %i.i = add i64 %i.c, %i.h                       ; 3 uses
  %i.j = mul i64 %i.f, %indvar
  %i.k = add i64 %i.c, %i.j
  %i.l = mul i64 %i.e, %indvar
  %i.m = add i64 %i.c, %i.l
  %i.n = mul i64 %i.d, %indvar
  %i.o = add i64 %i.c, %i.n
  %i.p = icmp ult i64 %.039127, %.0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ae, %.thread24.i ], [ %.039127, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ad, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.q = mul i64 %.02226.i, %6
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.q
  %i.s = mul i64 %.027.i, %6
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %.02226.i
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.0129, i64 %.027.i
  %i.w = load i32, ptr %i.t, align 4, !tbaa !287  ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !287  ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !287
  %i.ab = load i32, ptr %i.u, align 4, !tbaa !287
  %i.ac = icmp slt i32 %i.aa, %i.ab
  %cond.fr.i = freeze i1 %i.ac
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ad = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ae = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !1704

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ad, %.thread24.i ] ; 4 uses
  %i.af = add i64 %.022.lcssa.i, 2
  %i.ag = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.af) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %.082126)
  %i.ah = getelementptr inbounds nuw i8, ptr %.083125, i64 %.idx ; 14 uses
  %i.ai = mul i64 %.022.lcssa.i, %6
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.ai ; 11 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %.not36.i.i46 = icmp eq ptr %4, %storemerge22.i121123
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038128, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.ar, %bb.h ], [ %storemerge22.i121123, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083125, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aj, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ao, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ap, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.al = load i32, ptr %.025.i.i, align 4, !tbaa !287 ; 2 uses
  %i.am = load i32, ptr %.028.ph.i.i, align 4, !tbaa !287 ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.al, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i.i, align 4, !tbaa !287
  %i.aq = load i32, ptr %.026.i.i, align 4, !tbaa !287
  store i32 %i.aq, ptr %.025.i.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i.i, align 4, !tbaa !287
  %.not43.i.i = icmp eq ptr %i.ao, %i.ah
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !1754

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.am, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !287
  %.not42.i.i = icmp eq ptr %i.ar, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !1754

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038128, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.ax, %bb.k ], [ %storemerge22.i121123, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083125, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aj, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.au, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.av, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.as = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !287 ; 2 uses
  %i.at = load i32, ptr %.025.i22.i, align 4, !tbaa !287 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.as, %i.at
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.at, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !287
  %i.aw = load i32, ptr %.026.i21.i, align 4, !tbaa !287
  store i32 %i.aw, ptr %.025.i22.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !287
  %.not44.i.i = icmp eq ptr %i.au, %i.ah
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !1755

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.as, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !287
  %.not43.i32.i = icmp eq ptr %i.ax, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !1755

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.bb, %bb.o ], [ %.038128, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.be, %bb.o ], [ %storemerge22.i121123, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083125, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.bb, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ay = load i32, ptr %.0.i.i, align 4, !tbaa !287 ; 2 uses
  %i.az = load i32, ptr %.021.i.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ay, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i.i, align 4, !tbaa !287
  %i.bd = icmp eq ptr %i.bc, %i.ah
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !1730

bb.o:                                             ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.az, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !287
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !1730

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bi, %bb.r ], [ %.038128, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bl, %bb.r ], [ %storemerge22.i121123, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083125, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bi, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bj, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bg = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.bh = load i32, ptr %.0.i16.i, align 4, !tbaa !287 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bg, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !287
  %i.bk = icmp eq ptr %i.bj, %i.ah
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !1756

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bg, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !287
  %i.bm = icmp eq ptr %i.bl, %4
  br i1 %i.bm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !1756

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bl, %bb.r ], [ %i.be, %bb.o ], [ %storemerge22.i121123, %bb.p ], [ %storemerge22.i121123, %bb.m ], [ %i.ar, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.ax, %bb.k ] ; 2 uses
  %.184.ph = phi ptr [ %i.ah, %.split.i.i ], [ %i.ah, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083125, %bb.p ], [ %.083125, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ap, %.split.i.i ], [ %i.av, %.split.i24.i ], [ %i.aj, %bb.q ], [ %i.aj, %bb.n ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aj, %bb.o ], [ %i.aj, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bi, %bb.q ], [ %i.bb, %bb.n ], [ %.038128, %bb.p ], [ %.038128, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.bb, %bb.o ], [ %i.bi, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !305
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %storemerge22.i120 = phi ptr [ %storemerge22.i121123, %bb.i ], [ %storemerge22.i121123, %bb.f ], [ %.12938.i30.sink.i.sink, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ]
  %.184 = phi ptr [ %.083125, %bb.i ], [ %.083125, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bn = phi ptr [ %.038128, %bb.i ], [ %.038128, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184255 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bo = icmp eq ptr %.184, %i.bn
  br i1 %i.bo, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ak
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bw, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bv, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bp = load i32, ptr %.079.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i, align 4, !tbaa !287
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bs = load i32, ptr %.010.i, align 4, !tbaa !287
  store i32 %i.bs, ptr %.079.i, align 4, !tbaa !287
  store i32 %i.bp, ptr %.010.i, align 4, !tbaa !287
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !1488

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ah           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.bx = sub i64 %i.i, %.184255                  ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check280 = icmp ult i64 %i.bx, 44
  br i1 %min.iters.check280, label %.lr.ph.i49.preheader299, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i49.preheader
  %scevgep263 = getelementptr i8, ptr %i.bn, i64 4
  %i.ca = sub i64 %i.k, %.184255
  %i.cb = and i64 %i.ca, -4                       ; 3 uses
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.cb ; 2 uses
  %scevgep265 = getelementptr i8, ptr %.080, i64 4
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.cb ; 2 uses
  %scevgep267 = getelementptr i8, ptr %.184, i64 4
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.cb ; 2 uses
  %bound0269 = icmp ult ptr %i.bn, %scevgep266
  %bound1270 = icmp ult ptr %.080, %scevgep264
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.bn, %scevgep268
  %bound1273 = icmp ult ptr %.184, %scevgep264
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx = or i1 %found.conflict271, %found.conflict274
  %bound0275 = icmp ult ptr %.080, %scevgep268
  %bound1276 = icmp ult ptr %.184, %scevgep266
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx, %found.conflict277
  br i1 %conflict.rdx278, label %.lr.ph.i49.preheader299, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck262
  %n.vec282 = and i64 %i.bz, 9223372036854775804  ; 3 uses
  %i.cc = shl i64 %n.vec282, 2                    ; 3 uses
  %i.cd = getelementptr i8, ptr %i.bn, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %.080, i64 %i.cc
  %i.cf = getelementptr i8, ptr %.184, i64 %i.cc
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 2 uses
  %i.cg = shl i64 %index284, 2                    ; 3 uses
  %next.gep285 = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep286 = getelementptr i8, ptr %.080, i64 %i.cg ; 3 uses
  %next.gep287 = getelementptr i8, ptr %.184, i64 %i.cg ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !1757, !noalias !1760
  store <4 x i32> %wide.load288, ptr %next.gep285, align 4, !tbaa !287, !alias.scope !1762, !noalias !1764
  store <4 x i32> zeroinitializer, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !1757, !noalias !1760
  %wide.load289 = load <4 x i32>, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !1760
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !1757, !noalias !1760
  store <4 x i32> zeroinitializer, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !1760
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.ch, label %middle.block291, label %vector.body283, !llvm.loop !1765

middle.block291:                                  ; preds = %vector.body283
  %cmp.n292 = icmp eq i64 %i.bz, %n.vec282
  br i1 %cmp.n292, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader299

.lr.ph.i49.preheader299:                          ; preds = %vector.memcheck262, %.lr.ph.i49.preheader, %middle.block291
  %.012.i.ph = phi ptr [ %i.bn, %vector.memcheck262 ], [ %i.bn, %.lr.ph.i49.preheader ], [ %i.cd, %middle.block291 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck262 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block291 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck262 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.cf, %middle.block291 ] ; 3 uses
  %.0810.i.ph344 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.ci = sub i64 %i.i, %.0810.i.ph344            ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader299, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.cn, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader299 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader299 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.cl, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader299 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader299 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.co = load i32, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 %i.co, ptr %.012.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !287
  %i.cp = load i32, ptr %.0810.i.prol, align 4, !tbaa !287
  store i32 %i.cp, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !1766

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader299
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph.i49.preheader299 ], [ %i.cn, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cn, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cl, %.lr.ph.i49.prol ]
  %i.cq = icmp ult i64 %i.ci, 12
  br i1 %i.cq, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.di, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.dg, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.cu = load i32, ptr %.0711.i, align 4, !tbaa !287
  store i32 %i.cu, ptr %.012.i, align 4, !tbaa !287
  store i32 0, ptr %.0711.i, align 4, !tbaa !287
  %i.cv = load i32, ptr %.0810.i, align 4, !tbaa !287
  store i32 %i.cv, ptr %.0711.i, align 4, !tbaa !287
  store i32 0, ptr %.0810.i, align 4, !tbaa !287
  %i.cw = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !287
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !287
  store i32 0, ptr %i.cs, align 4, !tbaa !287
  %i.da = load i32, ptr %i.cr, align 4, !tbaa !287
  store i32 %i.da, ptr %i.cs, align 4, !tbaa !287
  store i32 0, ptr %i.cr, align 4, !tbaa !287
  %i.db = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.de = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.de, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.df = load i32, ptr %i.cw, align 4, !tbaa !287
  store i32 %i.df, ptr %i.cx, align 4, !tbaa !287
  store i32 0, ptr %i.cw, align 4, !tbaa !287
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.dj = load i32, ptr %i.dc, align 4, !tbaa !287
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !287
  store i32 0, ptr %i.dc, align 4, !tbaa !287
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !287
  store i32 %i.dk, ptr %i.dc, align 4, !tbaa !287
  store i32 0, ptr %i.db, align 4, !tbaa !287
  %.not.i50.3 = icmp eq ptr %i.dg, %i.ah
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !1767

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dl = sub i64 %i.m, %.184255                  ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 4
  %i.do = sub i64 %i.o, %.184255
  %i.dp = and i64 %i.do, -4                       ; 2 uses
  %scevgep256 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep257 = getelementptr i8, ptr %.184, i64 4
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.dp
  %bound0 = icmp ult ptr %i.bn, %scevgep258
  %bound1 = icmp ult ptr %.184, %scevgep256
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 9223372036854775800     ; 3 uses
  %i.dq = shl i64 %n.vec, 2                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.bn, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %.184, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.dt ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.184, i64 %i.dt ; 3 uses
  %i.du = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !1768
  %wide.load260 = load <4 x i32>, ptr %i.du, align 4, !tbaa !287, !alias.scope !1768
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1771, !noalias !1768
  store <4 x i32> %wide.load260, ptr %i.dv, align 4, !tbaa !287, !alias.scope !1771, !noalias !1768
  store <4 x i32> zeroinitializer, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !1768
  store <4 x i32> zeroinitializer, ptr %i.du, align 4, !tbaa !287, !alias.scope !1768
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.preheader ], [ %i.dr, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.ds, %middle.block ] ; 3 uses
  %.079.i.i.ph345 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.dx = sub i64 %i.i, %.079.i.i.ph345           ; 2 uses
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1
  %xtraiter346 = and i64 %i.dz, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.eb, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader297 ]
  %i.ea = load i32, ptr %.079.i.i.prol, align 4, !tbaa !287
  store i32 %i.ea, ptr %.010.i.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !287
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1774

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader297
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph.i.i.preheader297 ], [ %i.ec, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ec, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.eb, %.lr.ph.i.i.prol ]
  %i.ed = icmp ult i64 %i.dx, 28
  br i1 %i.ed, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ee = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.ee, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.ef = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !287
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !287
  store i32 0, ptr %i.ef, align 4, !tbaa !287
  %i.ei = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !287
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !287
  store i32 0, ptr %i.ei, align 4, !tbaa !287
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.en = load i32, ptr %i.el, align 4, !tbaa !287
  store i32 %i.en, ptr %i.em, align 4, !tbaa !287
  store i32 0, ptr %i.el, align 4, !tbaa !287
  %i.eo = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !287
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !287
  store i32 0, ptr %i.eo, align 4, !tbaa !287
  %i.er = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.et = load i32, ptr %i.er, align 4, !tbaa !287
  store i32 %i.et, ptr %i.es, align 4, !tbaa !287
  store i32 0, ptr %i.er, align 4, !tbaa !287
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !287
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !287
  store i32 0, ptr %i.eu, align 4, !tbaa !287
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !287
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !287
  store i32 0, ptr %i.ex, align 4, !tbaa !287
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.7 = icmp eq ptr %i.fa, %i.ah
  br i1 %.not.i.i52.7, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !1775

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block291, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ah, %bb.s ], [ %i.bw, %.lr.ph.i48 ], [ %i.fb, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bn, %bb.v ], [ %i.bn, %bb.w ], [ %i.dr, %middle.block ], [ %i.cd, %middle.block291 ], [ %.lcssa342.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa341.unr, %.lr.ph.i49.prol.loopexit ], [ %i.di, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ah, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %.0129, i64 %.idx88 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !287
  store i32 0, ptr %i.fc, align 4, !tbaa !287
  %i.fe = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fg = load i32, ptr %.0129, align 4, !tbaa !287
  store i32 %i.fg, ptr %i.fc, align 4, !tbaa !287
  store i32 %i.fd, ptr %.0129, align 4, !tbaa !287
  %i.fh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.fk = icmp ne i64 %.039127, 0
  %.neg = sext i1 %i.fk to i64
  %i.fl = add i64 %.039127, %.neg
  %i.fm = icmp ne i64 %i.ag, 0
  %.neg44 = sext i1 %i.fm to i64
  %i.fn = add i64 %.sroa.speculated, %.neg44
  %i.fo = add i64 %.082126, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fo, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1776

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !305    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !305    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not6.i = icmp eq ptr %0, %1
  br i1 %.not6.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !287
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %0, %.lr.ph.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.07.i, align 4, !tbaa !287
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.i, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.c, !llvm.loop !1722

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.07.i, %bb.c ], [ %i.i, %bb.d ] ; 12 uses
  %i.j = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.k = ptrtoint ptr %0 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.p = load i32, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 %i.p, ptr %i.m, align 4, !tbaa !287
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !287
  %i.q = load i32, ptr %4, align 4, !tbaa !287
  store i32 %i.q, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %4, align 4, !tbaa !287
  %i.r = load i32, ptr %i.d, align 4, !tbaa !287
  store i32 %i.r, ptr %4, align 4, !tbaa !287
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %.03759.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.04160.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4861.i = icmp eq ptr %.04160.i, %1
  br i1 %.not4861.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 4 uses
  %.04166.i = phi ptr [ %.041.i, %bb.j ], [ %.04160.i, %bb.f ] ; 10 uses
  %.03765.i = phi ptr [ %.037.i, %bb.j ], [ %.03759.i, %bb.f ] ; 3 uses
  %.064.i = phi ptr [ %.1.i, %bb.j ], [ %i.o, %bb.f ] ; 6 uses
  %.03563.i = phi ptr [ %.136.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03962.i = phi ptr [ %.140.i, %bb.j ], [ %i.m, %bb.f ] ; 12 uses
  %i.s = icmp eq ptr %.03563.i, %3
  br i1 %i.s, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.t = add i64 %i.a, -8
  %i.u = shl i64 %indvar, 2
  %i.v = add i64 %i.u, %i.j
  %i.w = sub i64 %i.t, %i.v                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader291, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03962.i, i64 4
  %i.z = add i64 %i.a, -8
  %i.aa = shl i64 %indvar, 2
  %i.ab = add i64 %i.aa, %i.j
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = and i64 %i.ac, -4                       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.fj, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !1722

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fj, %bb.af ] ; 3 uses
  %i.fk = ptrtoint ptr %.0226.lcssa to i64
  %i.fl = ptrtoint ptr %.0.lcssa.i to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fo ; 3 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.fx, %.lr.ph.i.i146 ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.fw, %.lr.ph.i.i146 ], [ %.0.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 4 uses
  %i.fq = load i32, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !287
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ft = load i32, ptr %.010.i.i147, align 4, !tbaa !287
  store i32 %i.ft, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 %i.fq, ptr %.010.i.i147, align 4, !tbaa !287
  %i.fu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.fw, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152: ; preds = %.lr.ph.i.i146, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.fy, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.fp, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fc, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 4 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gc, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gl, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gc, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.gg, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.fz = load i32, ptr %.0.i, align 4, !tbaa !287
  %i.ga = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gb = icmp slt i32 %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  %i.gd = load i32, ptr %.024.i, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !287
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.gh = load i32, ptr %.0.i, align 4, !tbaa !287
  store i32 %i.gh, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gd, ptr %.0.i, align 4, !tbaa !287
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gk = icmp eq ptr %i.gg, %i.fe
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !1753

bb.ai:                                            ; preds = %.preheader.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  %i.gm = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  store i32 %i.gm, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gd, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.go = add i32 %i.gn, -1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gp = icmp eq ptr %i.gl, %.5
  br i1 %i.gp, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1753

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ] ; 2 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gl, %bb.ai ] ; 2 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fe, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !305
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.gx, %.lr.ph.i.i155 ], [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 3 uses
  %.079.i.i157 = phi ptr [ %i.gw, %.lr.ph.i.i155 ], [ %.223.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 4 uses
  %i.gq = load i32, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !287
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gt = load i32, ptr %.010.i.i156, align 4, !tbaa !287
  store i32 %i.gt, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 %i.gq, ptr %.010.i.i156, align 4, !tbaa !287
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gv = add i32 %i.gu, -1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gw = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.gw, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155, !llvm.loop !1488

bb.aj:                                            ; preds = %.thread
  br i1 %i.fd, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.gy = phi ptr [ %i.fc, %bb.aj ], [ %i.s, %.thread.thread ] ; 2 uses
  %.2 = phi i64 [ %.1323, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 2 uses
  %.0238278 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238281, %.thread.thread ] ; 2 uses
  %.0232275 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232282, %.thread.thread ] ; 2 uses
  %.0226273 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226283, %.thread.thread ] ; 2 uses
  %.0220271 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220284, %.thread.thread ] ; 2 uses
  %.0108269 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108285, %.thread.thread ] ; 2 uses
  %.0102265 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102287, %.thread.thread ] ; 2 uses
  %.099262 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099289, %.thread.thread ] ; 2 uses
  %i.gz = phi ptr [ %i.fe, %bb.aj ], [ %i.k, %.thread.thread ] ; 2 uses
  %.not8.i.i162 = icmp eq ptr %.0220271, %.0108269
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %bb.ak, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.hh, %.lr.ph.i.i163 ], [ %.0226273, %bb.ak ] ; 3 uses
  %.079.i.i165 = phi ptr [ %i.hg, %.lr.ph.i.i163 ], [ %.0220271, %bb.ak ] ; 4 uses
  %i.ha = load i32, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !287
  %i.hb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hd = load i32, ptr %.010.i.i164, align 4, !tbaa !287
  store i32 %i.hd, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 %i.ha, ptr %.010.i.i164, align 4, !tbaa !287
  %i.he = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.hg, %.0108269
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.hi = phi ptr [ %i.fc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fc, %bb.aj ], [ %i.gy, %bb.ak ], [ %i.fc, %.lr.ph.i.i155 ], [ %i.gy, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1323, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1323, %bb.aj ], [ %.2, %bb.ak ], [ %.1323, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238279 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0238281, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238278, %bb.ak ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238278, %.lr.ph.i.i163 ]
  %.0232276 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0232282, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232275, %bb.ak ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232275, %.lr.ph.i.i163 ]
  %.0102266 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102287, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102265, %bb.ak ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102265, %.lr.ph.i.i163 ]
  %.099263 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099289, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099262, %bb.ak ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099262, %.lr.ph.i.i163 ]
  %i.hj = phi ptr [ %i.fe, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fe, %bb.aj ], [ %i.gz, %bb.ak ], [ %i.fe, %.lr.ph.i.i155 ], [ %i.gz, %.lr.ph.i.i163 ] ; 3 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0226283, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226273, %bb.ak ], [ %i.gx, %.lr.ph.i.i155 ], [ %i.hh, %.lr.ph.i.i163 ]
  %i.hk = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102266, ptr noundef %.0232276, ptr noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.hj, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238279, i64 noundef %.099263, i64 noundef %.3, i1 noundef zeroext false)
  %i.hl = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %.not8.i.i170 = icmp eq ptr %i.hl, %i.hj
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.ht, %.lr.ph.i.i171 ], [ %i.hk, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 3 uses
  %.079.i.i173 = phi ptr [ %i.hs, %.lr.ph.i.i171 ], [ %i.hl, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 4 uses
  %i.hm = load i32, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i173, align 4, !tbaa !287
  %i.hn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hp = load i32, ptr %.010.i.i172, align 4, !tbaa !287
  store i32 %i.hp, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 %i.hm, ptr %.010.i.i172, align 4, !tbaa !287
  %i.hq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hs = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4
  %.not.i.i174 = icmp eq ptr %i.hs, %i.hj
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177: ; preds = %.lr.ph.i.i171, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
bb.a:
  %.not119 = icmp eq i64 %7, 0
  br i1 %.not119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %.idx = shl i64 %6, 2                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %.idx, %i.a
  %i.c = add i64 %i.b, -4                         ; 4 uses
  %i.d = shl i64 %6, 2
  %i.e = shl i64 %6, 2
  %i.f = shl i64 %6, 2
  %i.g = shl i64 %6, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.fk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0125 = phi ptr [ %0, %.lr.ph ], [ %i.fg, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 6 uses
  %.038124 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.039123 = phi i64 [ %8, %.lr.ph ], [ %i.fi, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.082122 = phi i64 [ %7, %.lr.ph ], [ %i.fl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.083121 = phi ptr [ %2, %.lr.ph ], [ %i.ah, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %i.h = mul i64 %i.g, %indvar
  %i.i = add i64 %i.c, %i.h                       ; 3 uses
  %i.j = mul i64 %i.f, %indvar
  %i.k = add i64 %i.c, %i.j
  %i.l = mul i64 %i.e, %indvar
  %i.m = add i64 %i.c, %i.l
  %i.n = mul i64 %i.d, %indvar
  %i.o = add i64 %i.c, %i.n
  %i.p = icmp ult i64 %.039123, %.0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ae, %.thread24.i ], [ %.039123, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ad, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.q = mul i64 %.02226.i, %6
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.083121, i64 %i.q
  %i.s = mul i64 %.027.i, %6
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.083121, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0125, i64 %.02226.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0125, i64 %.027.i
  %i.w = load i32, ptr %i.t, align 4, !tbaa !287  ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !287  ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !1217
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !1217
  %i.ac = icmp ult i8 %i.aa, %i.ab
  %cond.fr.i = freeze i1 %i.ac
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ad = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ae = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !2185

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ad, %.thread24.i ] ; 4 uses
  %i.af = add i64 %.022.lcssa.i, 2
  %i.ag = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.af) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %.082122)
  %i.ah = getelementptr inbounds nuw i8, ptr %.083121, i64 %.idx ; 14 uses
  %i.ai = mul i64 %.022.lcssa.i, %6
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.083121, i64 %i.ai ; 11 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !305   ; 7 uses
  %.not36.i.i46 = icmp eq ptr %4, %i.al
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038124, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.as, %bb.h ], [ %i.al, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083121, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aj, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ap, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.aq, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.am = load i32, ptr %.025.i.i, align 4, !tbaa !287 ; 2 uses
  %i.an = load i32, ptr %.028.ph.i.i, align 4, !tbaa !287 ; 2 uses
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.am, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i.i, align 4, !tbaa !287
  %i.ar = load i32, ptr %.026.i.i, align 4, !tbaa !287
  store i32 %i.ar, ptr %.025.i.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i.i, align 4, !tbaa !287
  %.not43.i.i = icmp eq ptr %i.ap, %i.ah
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !1754

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.an, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !287
  %.not42.i.i = icmp eq ptr %i.as, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !1754

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038124, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.ay, %bb.k ], [ %i.al, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083121, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aj, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.av, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.aw, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.at = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !287 ; 2 uses
  %i.au = load i32, ptr %.025.i22.i, align 4, !tbaa !287 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.at, %i.au
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.au, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !287
  %i.ax = load i32, ptr %.026.i21.i, align 4, !tbaa !287
  store i32 %i.ax, ptr %.025.i22.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !287
  %.not44.i.i = icmp eq ptr %i.av, %i.ah
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !1755

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.at, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !287
  %.not43.i32.i = icmp eq ptr %i.ay, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !1755

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.bc, %bb.o ], [ %.038124, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.bf, %bb.o ], [ %i.al, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083121, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.bc, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bd, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.az = load i32, ptr %.0.i.i, align 4, !tbaa !287 ; 2 uses
  %i.ba = load i32, ptr %.021.i.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.bb = icmp slt i32 %i.az, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.az, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i.i, align 4, !tbaa !287
  %i.be = icmp eq ptr %i.bd, %i.ah
  br i1 %i.be, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !1730

bb.o:                                             ; preds = %.preheader.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.ba, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !287
  %i.bg = icmp eq ptr %i.bf, %4
  br i1 %i.bg, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !1730

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bj, %bb.r ], [ %.038124, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bm, %bb.r ], [ %i.al, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083121, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bj, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bk, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bh = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.bi = load i32, ptr %.0.i16.i, align 4, !tbaa !287 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bh, %i.bi
  %i.bj = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bi, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !287
  %i.bl = icmp eq ptr %i.bk, %i.ah
  br i1 %i.bl, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !1756

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !287
  %i.bn = icmp eq ptr %i.bm, %4
  br i1 %i.bn, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !1756

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bm, %bb.r ], [ %i.bf, %bb.o ], [ %i.al, %bb.p ], [ %i.al, %bb.m ], [ %i.as, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.ay, %bb.k ]
  %.184.ph = phi ptr [ %i.ah, %.split.i.i ], [ %i.ah, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083121, %bb.p ], [ %.083121, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.aq, %.split.i.i ], [ %i.aw, %.split.i24.i ], [ %i.aj, %bb.q ], [ %i.aj, %bb.n ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aj, %bb.o ], [ %i.aj, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bj, %bb.q ], [ %i.bc, %bb.n ], [ %.038124, %bb.p ], [ %.038124, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.bc, %bb.o ], [ %i.bj, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !305
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %.184 = phi ptr [ %.083121, %bb.i ], [ %.083121, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bo = phi ptr [ %.038124, %bb.i ], [ %.038124, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184255 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bp = icmp eq ptr %.184, %i.bo
  br i1 %i.bp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ak
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bx, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bw, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bq = load i32, ptr %.079.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i, align 4, !tbaa !287
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bt = load i32, ptr %.010.i, align 4, !tbaa !287
  store i32 %i.bt, ptr %.079.i, align 4, !tbaa !287
  store i32 %i.bq, ptr %.010.i, align 4, !tbaa !287
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bw = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bw, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !1488

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ah           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.by = sub i64 %i.i, %.184255                  ; 2 uses
  %i.bz = lshr i64 %i.by, 2
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check280 = icmp ult i64 %i.by, 44
  br i1 %min.iters.check280, label %.lr.ph.i49.preheader299, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i49.preheader
  %scevgep263 = getelementptr i8, ptr %i.bo, i64 4
  %i.cb = sub i64 %i.k, %.184255
  %i.cc = and i64 %i.cb, -4                       ; 3 uses
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.cc ; 2 uses
  %scevgep265 = getelementptr i8, ptr %.080, i64 4
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.cc ; 2 uses
  %scevgep267 = getelementptr i8, ptr %.184, i64 4
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.cc ; 2 uses
  %bound0269 = icmp ult ptr %i.bo, %scevgep266
  %bound1270 = icmp ult ptr %.080, %scevgep264
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.bo, %scevgep268
  %bound1273 = icmp ult ptr %.184, %scevgep264
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx = or i1 %found.conflict271, %found.conflict274
  %bound0275 = icmp ult ptr %.080, %scevgep268
  %bound1276 = icmp ult ptr %.184, %scevgep266
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx, %found.conflict277
  br i1 %conflict.rdx278, label %.lr.ph.i49.preheader299, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck262
  %n.vec282 = and i64 %i.ca, 9223372036854775804  ; 3 uses
  %i.cd = shl i64 %n.vec282, 2                    ; 3 uses
  %i.ce = getelementptr i8, ptr %i.bo, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %.080, i64 %i.cd
  %i.cg = getelementptr i8, ptr %.184, i64 %i.cd
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 2 uses
  %i.ch = shl i64 %index284, 2                    ; 3 uses
  %next.gep285 = getelementptr i8, ptr %i.bo, i64 %i.ch
  %next.gep286 = getelementptr i8, ptr %.080, i64 %i.ch ; 3 uses
  %next.gep287 = getelementptr i8, ptr %.184, i64 %i.ch ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2224, !noalias !2227
  store <4 x i32> %wide.load288, ptr %next.gep285, align 4, !tbaa !287, !alias.scope !2229, !noalias !2231
  store <4 x i32> zeroinitializer, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2224, !noalias !2227
  %wide.load289 = load <4 x i32>, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !2227
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2224, !noalias !2227
  store <4 x i32> zeroinitializer, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !2227
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.ci, label %middle.block291, label %vector.body283, !llvm.loop !2232

middle.block291:                                  ; preds = %vector.body283
  %cmp.n292 = icmp eq i64 %i.ca, %n.vec282
  br i1 %cmp.n292, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader299

.lr.ph.i49.preheader299:                          ; preds = %vector.memcheck262, %.lr.ph.i49.preheader, %middle.block291
  %.012.i.ph = phi ptr [ %i.bo, %vector.memcheck262 ], [ %i.bo, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block291 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck262 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.cf, %middle.block291 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck262 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.cg, %middle.block291 ] ; 3 uses
  %.0810.i.ph344 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.cj = sub i64 %i.i, %.0810.i.ph344            ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader299, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.co, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader299 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cn, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader299 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader299 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader299 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.cp = load i32, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 %i.cp, ptr %.012.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !287
  %i.cq = load i32, ptr %.0810.i.prol, align 4, !tbaa !287
  store i32 %i.cq, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !2233

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader299
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph.i49.preheader299 ], [ %i.co, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader299 ], [ %i.co, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cn, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cm, %.lr.ph.i49.prol ]
  %i.cr = icmp ult i64 %i.cj, 12
  br i1 %i.cr, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.dj, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.di, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.cv = load i32, ptr %.0711.i, align 4, !tbaa !287
  store i32 %i.cv, ptr %.012.i, align 4, !tbaa !287
  store i32 0, ptr %.0711.i, align 4, !tbaa !287
  %i.cw = load i32, ptr %.0810.i, align 4, !tbaa !287
  store i32 %i.cw, ptr %.0711.i, align 4, !tbaa !287
  store i32 0, ptr %.0810.i, align 4, !tbaa !287
  %i.cx = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.da = load i32, ptr %i.ct, align 4, !tbaa !287
  store i32 %i.da, ptr %i.cu, align 4, !tbaa !287
  store i32 0, ptr %i.ct, align 4, !tbaa !287
  %i.db = load i32, ptr %i.cs, align 4, !tbaa !287
  store i32 %i.db, ptr %i.ct, align 4, !tbaa !287
  store i32 0, ptr %i.cs, align 4, !tbaa !287
  %i.dc = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.df = load i32, ptr %i.cy, align 4, !tbaa !287
  store i32 %i.df, ptr %i.cz, align 4, !tbaa !287
  store i32 0, ptr %i.cy, align 4, !tbaa !287
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.dg, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.dh = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dd, align 4, !tbaa !287
  store i32 %i.dk, ptr %i.de, align 4, !tbaa !287
  store i32 0, ptr %i.dd, align 4, !tbaa !287
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !287
  store i32 %i.dl, ptr %i.dd, align 4, !tbaa !287
  store i32 0, ptr %i.dc, align 4, !tbaa !287
  %.not.i50.3 = icmp eq ptr %i.dh, %i.ah
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !2234

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dm = sub i64 %i.m, %.184255                  ; 2 uses
  %i.dn = lshr i64 %i.dm, 2
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dm, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bo, i64 4
  %i.dp = sub i64 %i.o, %.184255
  %i.dq = and i64 %i.dp, -4                       ; 2 uses
  %scevgep256 = getelementptr i8, ptr %scevgep, i64 %i.dq
  %scevgep257 = getelementptr i8, ptr %.184, i64 4
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.dq
  %bound0 = icmp ult ptr %i.bo, %scevgep258
  %bound1 = icmp ult ptr %.184, %scevgep256
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.do, 9223372036854775800     ; 3 uses
  %i.dr = shl i64 %n.vec, 2                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.bo, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %.184, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bo, i64 %i.du ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.184, i64 %i.du ; 3 uses
  %i.dv = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !2235
  %wide.load260 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !287, !alias.scope !2235
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !2238, !noalias !2235
  store <4 x i32> %wide.load260, ptr %i.dw, align 4, !tbaa !287, !alias.scope !2238, !noalias !2235
  store <4 x i32> zeroinitializer, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !2235
  store <4 x i32> zeroinitializer, ptr %i.dv, align 4, !tbaa !287, !alias.scope !2235
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !2240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bo, %vector.memcheck ], [ %i.bo, %.lr.ph.i.i.preheader ], [ %i.ds, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.dt, %middle.block ] ; 3 uses
  %.079.i.i.ph345 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.dy = sub i64 %i.i, %.079.i.i.ph345           ; 2 uses
  %i.dz = lshr i64 %i.dy, 2
  %i.ea = add nuw nsw i64 %i.dz, 1
  %xtraiter346 = and i64 %i.ea, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader297 ]
  %i.eb = load i32, ptr %.079.i.i.prol, align 4, !tbaa !287
  store i32 %i.eb, ptr %.010.i.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !287
  %i.ec = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2241

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader297
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph.i.i.preheader297 ], [ %i.ed, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ed, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ec, %.lr.ph.i.i.prol ]
  %i.ee = icmp ult i64 %i.dy, 28
  br i1 %i.ee, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fc, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ef = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.ef, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ei = load i32, ptr %i.eg, align 4, !tbaa !287
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !287
  store i32 0, ptr %i.eg, align 4, !tbaa !287
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !287
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !287
  store i32 0, ptr %i.ej, align 4, !tbaa !287
  %i.em = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !287
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !287
  store i32 0, ptr %i.em, align 4, !tbaa !287
  %i.ep = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !287
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !287
  store i32 0, ptr %i.ep, align 4, !tbaa !287
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !287
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !287
  store i32 0, ptr %i.es, align 4, !tbaa !287
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !287
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !287
  store i32 0, ptr %i.ev, align 4, !tbaa !287
  %i.ey = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !287
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !287
  store i32 0, ptr %i.ey, align 4, !tbaa !287
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.7 = icmp eq ptr %i.fb, %i.ah
  br i1 %.not.i.i52.7, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !2242

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block291, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ah, %bb.s ], [ %i.bx, %.lr.ph.i48 ], [ %i.fc, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bo, %bb.v ], [ %i.bo, %bb.w ], [ %i.ds, %middle.block ], [ %i.ce, %middle.block291 ], [ %.lcssa342.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa341.unr, %.lr.ph.i49.prol.loopexit ], [ %i.dj, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ah, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %.0125, i64 %.022.lcssa.i ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !1217
  %i.ff = load i8, ptr %.0125, align 1, !tbaa !1217
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !1217
  store i8 %i.fe, ptr %.0125, align 1, !tbaa !1217
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %.0125, i64 1
  %i.fh = icmp ne i64 %.039123, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.039123, %.neg
  %i.fj = icmp ne i64 %i.ag, 0
  %.neg44 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg44
  %i.fl = add i64 %.082122, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2243

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !305
  %.not83 = icmp eq i64 %7, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %6, 2
  %.not.i.i = icmp eq i64 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.c = phi ptr [ %2, %.lr.ph ], [ %i.v, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.cv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.088 = phi ptr [ %0, %.lr.ph ], [ %i.cr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 6 uses
  %.03887 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.03986 = phi i64 [ %8, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.06785 = phi i64 [ %7, %.lr.ph ], [ %i.cw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.03986, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.s, %.thread24.i ], [ %.03986, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.r, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.02226.i, %6
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = mul i64 %.027.i, %6
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.088, i64 %.02226.i
  %i.j = getelementptr inbounds nuw i8, ptr %.088, i64 %.027.i
  %i.k = load i32, ptr %i.h, align 4, !tbaa !287  ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.j, align 1, !tbaa !1217
  %i.p = load i8, ptr %i.i, align 1, !tbaa !1217
  %i.q = icmp ult i8 %i.o, %i.p
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.r = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.s = add nuw i64 %.027.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !2185

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %.thread24.i ] ; 4 uses
  %i.t = add i64 %.022.lcssa.i, 2
  %i.u = call i64 @llvm.umax.i64(i64 %.0, i64 %i.t) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.u, i64 %.06785)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = mul i64 %.022.lcssa.i, %6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.w ; 5 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !305
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %6 ; 3 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 2 uses
  br i1 %.not43, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.z = load ptr, ptr %3, align 8, !tbaa !305    ; 5 uses
  %.not36.i.i = icmp eq ptr %4, %i.z
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not36.i.i ; 2 uses
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i, label %.loopexit, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.f, %bb.h
  %.024.i.i.ph = phi ptr [ %i.ad, %bb.h ], [ %.03887, %bb.f ]
  %.021.i.i.ph = phi ptr [ %i.am, %bb.h ], [ %i.z, %bb.f ] ; 5 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.h ], [ %i.c, %bb.f ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.g
  %.024.i.i = phi ptr [ %i.ad, %bb.g ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 6 uses
  %i.aa = load i32, ptr %.0.i.i, align 4, !tbaa !287
  %i.ab = load i32, ptr %.021.i.i.ph, align 4, !tbaa !287
  %i.ac = icmp slt i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  %i.ae = load i32, ptr %.024.i.i, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %.024.i.i, align 4, !tbaa !287
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  %i.fi = icmp slt i32 %i.fg, %i.fh
  br i1 %i.fi, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.fj, %.0226.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !1722

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0220.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fj, %bb.af ] ; 3 uses
  %i.fk = ptrtoint ptr %.0226.lcssa to i64
  %i.fl = ptrtoint ptr %.0.lcssa.i to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2
  %i.fo = sub nsw i64 0, %i.fn
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.fo ; 3 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0226.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.fx, %.lr.ph.i.i146 ], [ %i.fp, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 3 uses
  %.079.i.i148 = phi ptr [ %i.fw, %.lr.ph.i.i146 ], [ %.0.lcssa.i, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit ] ; 4 uses
  %i.fq = load i32, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i148, align 4, !tbaa !287
  %i.fr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ft = load i32, ptr %.010.i.i147, align 4, !tbaa !287
  store i32 %i.ft, ptr %.079.i.i148, align 4, !tbaa !287
  store i32 %i.fq, ptr %.010.i.i147, align 4, !tbaa !287
  %i.fu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fw = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.fw, %.0226.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, label %.lr.ph.i.i146, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152: ; preds = %.lr.ph.i.i146, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152, %bb.ac
  %.5231 = phi ptr [ %i.fy, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0226.lcssa, %bb.ac ] ; 2 uses
  %.5225 = phi ptr [ %i.fp, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0220.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fc, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit152 ], [ %.0108.lcssa, %bb.ac ] ; 4 uses
  %.not36.i = icmp eq ptr %.5, %.5225
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gc, %bb.ai ], [ %.5231, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gl, %bb.ai ], [ %.5225, %bb.ag ] ; 5 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gc, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 5 uses
  %.0.i = phi ptr [ %i.gg, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 6 uses
  %i.fz = load i32, ptr %.0.i, align 4, !tbaa !287
  %i.ga = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gb = icmp slt i32 %i.fz, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  %i.gd = load i32, ptr %.024.i, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %.024.i, align 4, !tbaa !287
  %i.ge = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br i1 %i.gb, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  %i.gh = load i32, ptr %.0.i, align 4, !tbaa !287
  store i32 %i.gh, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gd, ptr %.0.i, align 4, !tbaa !287
  %i.gi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gj = add i32 %i.gi, -1
  store i32 %i.gj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gk = icmp eq ptr %i.gg, %i.fe
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !1753

bb.ai:                                            ; preds = %.preheader.i
  %i.gl = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  %i.gm = load i32, ptr %.021.i.ph, align 4, !tbaa !287
  store i32 %i.gm, ptr %.024.i, align 4, !tbaa !287
  store i32 %i.gd, ptr %.021.i.ph, align 4, !tbaa !287
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.go = add i32 %i.gn, -1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gp = icmp eq ptr %i.gl, %.5
  br i1 %i.gp, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1753

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5231, %bb.ag ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ] ; 2 uses
  %.223.i = phi ptr [ %.5225, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gl, %bb.ai ] ; 2 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fe, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !305
  %.not8.i.i154 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i154, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155

.lr.ph.i.i155:                                    ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %.lr.ph.i.i155
  %.010.i.i156 = phi ptr [ %i.gx, %.lr.ph.i.i155 ], [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 3 uses
  %.079.i.i157 = phi ptr [ %i.gw, %.lr.ph.i.i155 ], [ %.223.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ] ; 4 uses
  %i.gq = load i32, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i157, align 4, !tbaa !287
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gt = load i32, ptr %.010.i.i156, align 4, !tbaa !287
  store i32 %i.gt, ptr %.079.i.i157, align 4, !tbaa !287
  store i32 %i.gq, ptr %.010.i.i156, align 4, !tbaa !287
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gv = add i32 %i.gu, -1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gw = getelementptr inbounds nuw i8, ptr %.079.i.i157, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.010.i.i156, i64 4 ; 2 uses
  %.not.i.i158 = icmp eq ptr %i.gw, %.5
  br i1 %.not.i.i158, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i155, !llvm.loop !1488

bb.aj:                                            ; preds = %.thread
  br i1 %i.fd, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.gy = phi ptr [ %i.fc, %bb.aj ], [ %i.s, %.thread.thread ] ; 2 uses
  %.2 = phi i64 [ %.1324, %bb.aj ], [ %.sroa.speculated210, %.thread.thread ] ; 2 uses
  %.0238279 = phi i64 [ %.0238.lcssa, %bb.aj ], [ %.0238282, %.thread.thread ] ; 2 uses
  %.0232276 = phi ptr [ %.0232.lcssa, %bb.aj ], [ %.0232283, %.thread.thread ] ; 2 uses
  %.0226274 = phi ptr [ %.0226.lcssa, %bb.aj ], [ %.0226284, %.thread.thread ] ; 2 uses
  %.0220272 = phi ptr [ %.0220.lcssa, %bb.aj ], [ %.0220285, %.thread.thread ] ; 2 uses
  %.0108270 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108286, %.thread.thread ] ; 2 uses
  %.0102266 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102288, %.thread.thread ] ; 2 uses
  %.099263 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099290, %.thread.thread ] ; 2 uses
  %i.gz = phi ptr [ %i.fe, %bb.aj ], [ %i.k, %.thread.thread ] ; 2 uses
  %.not8.i.i162 = icmp eq ptr %.0220272, %.0108270
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %bb.ak, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.hh, %.lr.ph.i.i163 ], [ %.0226274, %bb.ak ] ; 3 uses
  %.079.i.i165 = phi ptr [ %i.hg, %.lr.ph.i.i163 ], [ %.0220272, %bb.ak ] ; 4 uses
  %i.ha = load i32, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i165, align 4, !tbaa !287
  %i.hb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hc = add i32 %i.hb, 1
  store i32 %i.hc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hd = load i32, ptr %.010.i.i164, align 4, !tbaa !287
  store i32 %i.hd, ptr %.079.i.i165, align 4, !tbaa !287
  store i32 %i.ha, ptr %.010.i.i164, align 4, !tbaa !287
  %i.he = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hf = add i32 %i.he, -1
  store i32 %i.hf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.hg, %.0108270
  br i1 %.not.i.i166, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i155, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.hi = phi ptr [ %i.fc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fc, %bb.aj ], [ %i.gy, %bb.ak ], [ %i.fc, %.lr.ph.i.i155 ], [ %i.gy, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1324, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated210, %.thread.thread ], [ %.1324, %bb.aj ], [ %.2, %bb.ak ], [ %.1324, %.lr.ph.i.i155 ], [ %.2, %.lr.ph.i.i163 ]
  %.0238280 = phi i64 [ %.0238.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0238282, %.thread.thread ], [ %.0238.lcssa, %bb.aj ], [ %.0238279, %bb.ak ], [ %.0238.lcssa, %.lr.ph.i.i155 ], [ %.0238279, %.lr.ph.i.i163 ]
  %.0232277 = phi ptr [ %.0232.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0232283, %.thread.thread ], [ %.0232.lcssa, %bb.aj ], [ %.0232276, %bb.ak ], [ %.0232.lcssa, %.lr.ph.i.i155 ], [ %.0232276, %.lr.ph.i.i163 ]
  %.0102267 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102288, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102266, %bb.ak ], [ %.0102.lcssa, %.lr.ph.i.i155 ], [ %.0102266, %.lr.ph.i.i163 ]
  %.099264 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099290, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099263, %bb.ak ], [ %.099.lcssa, %.lr.ph.i.i155 ], [ %.099263, %.lr.ph.i.i163 ]
  %i.hj = phi ptr [ %i.fe, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fe, %bb.aj ], [ %i.gz, %bb.ak ], [ %i.fe, %.lr.ph.i.i155 ], [ %i.gz, %.lr.ph.i.i163 ] ; 3 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0226284, %.thread.thread ], [ %.0226.lcssa, %bb.aj ], [ %.0226274, %bb.ak ], [ %i.gx, %.lr.ph.i.i155 ], [ %i.hh, %.lr.ph.i.i163 ]
  %i.hk = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102267, ptr noundef %.0232277, ptr noundef %i.hi, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.hj, ptr noundef %.6, i64 noundef %2, i64 noundef %.0238280, i64 noundef %.099264, i64 noundef %.3, i1 noundef zeroext false)
  %i.hl = load ptr, ptr %i.d, align 8, !tbaa !305 ; 2 uses
  %.not8.i.i170 = icmp eq ptr %i.hl, %i.hj
  br i1 %.not8.i.i170, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, %.lr.ph.i.i171
  %.010.i.i172 = phi ptr [ %i.ht, %.lr.ph.i.i171 ], [ %i.hk, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 3 uses
  %.079.i.i173 = phi ptr [ %i.hs, %.lr.ph.i.i171 ], [ %i.hl, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161 ] ; 4 uses
  %i.hm = load i32, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i173, align 4, !tbaa !287
  %i.hn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hp = load i32, ptr %.010.i.i172, align 4, !tbaa !287
  store i32 %i.hp, ptr %.079.i.i173, align 4, !tbaa !287
  store i32 %i.hm, ptr %.010.i.i172, align 4, !tbaa !287
  %i.hq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hr = add i32 %i.hq, -1
  store i32 %i.hr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.hs = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.010.i.i172, i64 4
  %.not.i.i174 = icmp eq ptr %i.hs, %i.hj
  br i1 %.not.i.i174, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177, label %.lr.ph.i.i171, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit177: ; preds = %.lr.ph.i.i171, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
bb.a:
  %.not122 = icmp eq i64 %7, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %.promoted = load ptr, ptr %3, align 8
  %.idx = shl i64 %6, 2                           ; 2 uses
  %.not.i.i = icmp eq i64 %6, 0
  %i.b = add i64 %.idx, %i.a
  %i.c = add i64 %i.b, -4                         ; 4 uses
  %i.d = shl i64 %6, 2
  %i.e = shl i64 %6, 2
  %i.f = shl i64 %6, 2
  %i.g = shl i64 %6, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.fj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0129 = phi ptr [ %0, %.lr.ph ], [ %i.ff, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 6 uses
  %.038128 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.039127 = phi i64 [ %8, %.lr.ph ], [ %i.fh, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.082126 = phi i64 [ %7, %.lr.ph ], [ %i.fk, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.083125 = phi ptr [ %2, %.lr.ph ], [ %i.ah, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %storemerge22.i121123 = phi ptr [ %.promoted, %.lr.ph ], [ %storemerge22.i120, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 9 uses
  %i.h = mul i64 %i.g, %indvar
  %i.i = add i64 %i.c, %i.h                       ; 3 uses
  %i.j = mul i64 %i.f, %indvar
  %i.k = add i64 %i.c, %i.j
  %i.l = mul i64 %i.e, %indvar
  %i.m = add i64 %i.c, %i.l
  %i.n = mul i64 %i.d, %indvar
  %i.o = add i64 %i.c, %i.n
  %i.p = icmp ult i64 %.039127, %.0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ae, %.thread24.i ], [ %.039127, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ad, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.q = mul i64 %.02226.i, %6
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.q
  %i.s = mul i64 %.027.i, %6
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.s
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.0129, i64 %.02226.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0129, i64 %.027.i
  %i.w = load i32, ptr %i.t, align 4, !tbaa !287  ; 2 uses
  %i.x = load i32, ptr %i.r, align 4, !tbaa !287  ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = icmp slt i32 %i.x, %i.w
  br i1 %i.z, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !36
  %i.ab = load i64, ptr %i.u, align 8, !tbaa !36
  %i.ac = icmp ult i64 %i.aa, %i.ab
  %cond.fr.i = freeze i1 %i.ac
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ad = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.ae = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !2447

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ad, %.thread24.i ] ; 4 uses
  %i.af = add i64 %.022.lcssa.i, 2
  %i.ag = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.af) ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %.082126)
  %i.ah = getelementptr inbounds nuw i8, ptr %.083125, i64 %.idx ; 14 uses
  %i.ai = mul i64 %.022.lcssa.i, %6
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.083125, i64 %i.ai ; 11 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %6 ; 2 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 4 uses
  %.not36.i.i46 = icmp eq ptr %4, %storemerge22.i121123
  %or.cond.i.i47 = select i1 %.not.i.i, i1 true, i1 %.not36.i.i46 ; 4 uses
  br i1 %.not43, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.f, %bb.h
  %.030.ph.i.i = phi ptr [ %.131.i.i, %bb.h ], [ %.038128, %bb.f ]
  %.028.ph.i.i = phi ptr [ %i.ar, %bb.h ], [ %storemerge22.i121123, %bb.f ] ; 4 uses
  %.026.ph.i.i = phi ptr [ %.026.i.i, %bb.h ], [ %.083125, %bb.f ]
  %.025.ph.i.i = phi ptr [ %.025.i.i, %bb.h ], [ %i.aj, %bb.f ]
  br label %bb.g

bb.g:                                             ; preds = %.split.i.i, %.outer.i.i
  %.030.i.i = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.030.ph.i.i, %.outer.i.i ] ; 4 uses
  %.026.i.i = phi ptr [ %i.ao, %.split.i.i ], [ %.026.ph.i.i, %.outer.i.i ] ; 5 uses
  %.025.i.i = phi ptr [ %i.ap, %.split.i.i ], [ %.025.ph.i.i, %.outer.i.i ] ; 6 uses
  %i.al = load i32, ptr %.025.i.i, align 4, !tbaa !287 ; 2 uses
  %i.am = load i32, ptr %.028.ph.i.i, align 4, !tbaa !287 ; 2 uses
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.split.i.i, label %bb.h

.split.i.i:                                       ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 4 ; 2 uses
  store i32 %i.al, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i.i, align 4, !tbaa !287
  %i.aq = load i32, ptr %.026.i.i, align 4, !tbaa !287
  store i32 %i.aq, ptr %.025.i.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i.i, align 4, !tbaa !287
  %.not43.i.i = icmp eq ptr %i.ao, %i.ah
  %.13137.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not43.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.g, !llvm.loop !1754

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.028.ph.i.i, i64 4 ; 3 uses
  store i32 %i.am, ptr %.030.i.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i.i, align 4, !tbaa !287
  %.not42.i.i = icmp eq ptr %i.ar, %4
  %.131.i.i = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 4 ; 2 uses
  br i1 %.not42.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i.i, !llvm.loop !1754

bb.i:                                             ; preds = %bb.e
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit, label %.outer.i15.i

.outer.i15.i:                                     ; preds = %bb.i, %bb.k
  %.030.ph.i16.i = phi ptr [ %.131.i33.i, %bb.k ], [ %.038128, %bb.i ]
  %.028.ph.i17.i = phi ptr [ %i.ax, %bb.k ], [ %storemerge22.i121123, %bb.i ] ; 4 uses
  %.026.ph.i18.i = phi ptr [ %.026.i21.i, %bb.k ], [ %.083125, %bb.i ]
  %.025.ph.i19.i = phi ptr [ %.025.i22.i, %bb.k ], [ %i.aj, %bb.i ]
  br label %bb.j

bb.j:                                             ; preds = %.split.i24.i, %.outer.i15.i
  %.030.i20.i = phi ptr [ %.13137.i25.i, %.split.i24.i ], [ %.030.ph.i16.i, %.outer.i15.i ] ; 4 uses
  %.026.i21.i = phi ptr [ %i.au, %.split.i24.i ], [ %.026.ph.i18.i, %.outer.i15.i ] ; 5 uses
  %.025.i22.i = phi ptr [ %i.av, %.split.i24.i ], [ %.025.ph.i19.i, %.outer.i15.i ] ; 6 uses
  %i.as = load i32, ptr %.028.ph.i17.i, align 4, !tbaa !287 ; 2 uses
  %i.at = load i32, ptr %.025.i22.i, align 4, !tbaa !287 ; 2 uses
  %.not42.i23.i = icmp slt i32 %i.as, %i.at
  br i1 %.not42.i23.i, label %bb.k, label %.split.i24.i

.split.i24.i:                                     ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.026.i21.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.025.i22.i, i64 4 ; 2 uses
  store i32 %i.at, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.025.i22.i, align 4, !tbaa !287
  %i.aw = load i32, ptr %.026.i21.i, align 4, !tbaa !287
  store i32 %i.aw, ptr %.025.i22.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i21.i, align 4, !tbaa !287
  %.not44.i.i = icmp eq ptr %i.au, %i.ah
  %.13137.i25.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not44.i.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %bb.j, !llvm.loop !1755

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.028.ph.i17.i, i64 4 ; 3 uses
  store i32 %i.as, ptr %.030.i20.i, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i17.i, align 4, !tbaa !287
  %.not43.i32.i = icmp eq ptr %i.ax, %4
  %.131.i33.i = getelementptr inbounds nuw i8, ptr %.030.i20.i, i64 4 ; 2 uses
  br i1 %.not43.i32.i, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.outer.i15.i, !llvm.loop !1755

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %10, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.m, %bb.o
  %.024.i.i.ph = phi ptr [ %i.bb, %bb.o ], [ %.038128, %bb.m ]
  %.021.i.i.ph = phi ptr [ %i.be, %bb.o ], [ %storemerge22.i121123, %bb.m ] ; 4 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.o ], [ %.083125, %bb.m ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.n
  %.024.i.i = phi ptr [ %i.bb, %bb.n ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 3 uses
  %.0.i.i = phi ptr [ %i.bc, %bb.n ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %i.ay = load i32, ptr %.0.i.i, align 4, !tbaa !287 ; 2 uses
  %i.az = load i32, ptr %.021.i.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.ba = icmp slt i32 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  store i32 %i.ay, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i.i, align 4, !tbaa !287
  %i.bd = icmp eq ptr %i.bc, %i.ah
  br i1 %i.bd, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i, !llvm.loop !1730

bb.o:                                             ; preds = %.preheader.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.ph, i64 4 ; 3 uses
  store i32 %i.az, ptr %.024.i.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i.i.ph, align 4, !tbaa !287
  %i.bf = icmp eq ptr %i.be, %4
  br i1 %i.bf, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i.i.outer, !llvm.loop !1730

bb.p:                                             ; preds = %bb.l
  br i1 %or.cond.i.i47, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer

.preheader.i13.i.outer:                           ; preds = %bb.p, %bb.r
  %.024.i14.i.ph = phi ptr [ %i.bi, %bb.r ], [ %.038128, %bb.p ]
  %.021.i15.i.ph = phi ptr [ %i.bl, %bb.r ], [ %storemerge22.i121123, %bb.p ] ; 4 uses
  %.0.i16.i.ph = phi ptr [ %.0.i16.i, %bb.r ], [ %.083125, %bb.p ]
  br label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %.preheader.i13.i.outer, %bb.q
  %.024.i14.i = phi ptr [ %i.bi, %bb.q ], [ %.024.i14.i.ph, %.preheader.i13.i.outer ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.bj, %bb.q ], [ %.0.i16.i.ph, %.preheader.i13.i.outer ] ; 5 uses
  %i.bg = load i32, ptr %.021.i15.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.bh = load i32, ptr %.0.i16.i, align 4, !tbaa !287 ; 2 uses
  %.not37.i.i = icmp slt i32 %i.bg, %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i14.i, i64 4 ; 4 uses
  br i1 %.not37.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader.i13.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i16.i, i64 4 ; 2 uses
  store i32 %i.bh, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i16.i, align 4, !tbaa !287
  %i.bk = icmp eq ptr %i.bj, %i.ah
  br i1 %i.bk, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i, !llvm.loop !1756

bb.r:                                             ; preds = %.preheader.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.021.i15.i.ph, i64 4 ; 3 uses
  store i32 %i.bg, ptr %.024.i14.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i15.i.ph, align 4, !tbaa !287
  %i.bm = icmp eq ptr %i.bl, %4
  br i1 %i.bm, label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, label %.preheader.i13.i.outer, !llvm.loop !1756

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split: ; preds = %bb.k, %bb.h, %bb.q, %bb.r, %bb.n, %bb.o, %.split.i24.i, %.split.i.i, %bb.p, %bb.m
  %.12938.i30.sink.i.sink = phi ptr [ %.028.ph.i.i, %.split.i.i ], [ %.028.ph.i17.i, %.split.i24.i ], [ %i.bl, %bb.r ], [ %i.be, %bb.o ], [ %storemerge22.i121123, %bb.p ], [ %storemerge22.i121123, %bb.m ], [ %i.ar, %bb.h ], [ %.021.i.i.ph, %bb.n ], [ %.021.i15.i.ph, %bb.q ], [ %i.ax, %bb.k ] ; 2 uses
  %.184.ph = phi ptr [ %i.ah, %.split.i.i ], [ %i.ah, %.split.i24.i ], [ %.0.i16.i, %bb.r ], [ %.0.i.i, %bb.o ], [ %.083125, %bb.p ], [ %.083125, %bb.m ], [ %.026.i.i, %bb.h ], [ %i.ah, %bb.n ], [ %i.ah, %bb.q ], [ %.026.i21.i, %bb.k ]
  %.080.ph = phi ptr [ %i.ap, %.split.i.i ], [ %i.av, %.split.i24.i ], [ %i.aj, %bb.q ], [ %i.aj, %bb.n ], [ %i.aj, %bb.p ], [ %i.aj, %bb.m ], [ %.025.i.i, %bb.h ], [ %i.aj, %bb.o ], [ %i.aj, %bb.r ], [ %.025.i22.i, %bb.k ]
  %.ph = phi ptr [ %.13137.i.i, %.split.i.i ], [ %.13137.i25.i, %.split.i24.i ], [ %i.bi, %bb.q ], [ %i.bb, %bb.n ], [ %.038128, %bb.p ], [ %.038128, %bb.m ], [ %.131.i.i, %bb.h ], [ %i.bb, %bb.o ], [ %i.bi, %bb.r ], [ %.131.i33.i, %bb.k ]
  store ptr %.12938.i30.sink.i.sink, ptr %3, align 8, !tbaa !305
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit: ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split, %bb.i, %bb.f
  %storemerge22.i120 = phi ptr [ %storemerge22.i121123, %bb.i ], [ %storemerge22.i121123, %bb.f ], [ %.12938.i30.sink.i.sink, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ]
  %.184 = phi ptr [ %.083125, %bb.i ], [ %.083125, %bb.f ], [ %.184.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 18 uses
  %.080 = phi ptr [ %i.aj, %bb.i ], [ %i.aj, %bb.f ], [ %.080.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 10 uses
  %i.bn = phi ptr [ %.038128, %bb.i ], [ %.038128, %bb.f ], [ %.ph, %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit.sink.split ] ; 16 uses
  %.184255 = ptrtoaddr ptr %.184 to i64           ; 4 uses
  %i.bo = icmp eq ptr %.184, %i.bn
  br i1 %i.bo, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  br i1 %.not43, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not8.i = icmp eq ptr %.080, %i.ak
  br i1 %.not8.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.t, %.lr.ph.i48
  %.010.i = phi ptr [ %i.bw, %.lr.ph.i48 ], [ %.184, %bb.t ] ; 3 uses
  %.079.i = phi ptr [ %i.bv, %.lr.ph.i48 ], [ %.080, %bb.t ] ; 4 uses
  %i.bp = load i32, ptr %.079.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i, align 4, !tbaa !287
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bs = load i32, ptr %.010.i, align 4, !tbaa !287
  store i32 %i.bs, ptr %.079.i, align 4, !tbaa !287
  store i32 %i.bp, ptr %.010.i, align 4, !tbaa !287
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bv = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, %i.ak
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i48, !llvm.loop !1488

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_b.exit
  %.not8.i.i = icmp eq ptr %.184, %i.ah           ; 2 uses
  br i1 %.not43, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.v
  %i.bx = sub i64 %i.i, %.184255                  ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check280 = icmp ult i64 %i.bx, 44
  br i1 %min.iters.check280, label %.lr.ph.i49.preheader299, label %vector.memcheck262

vector.memcheck262:                               ; preds = %.lr.ph.i49.preheader
  %scevgep263 = getelementptr i8, ptr %i.bn, i64 4
  %i.ca = sub i64 %i.k, %.184255
  %i.cb = and i64 %i.ca, -4                       ; 3 uses
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.cb ; 2 uses
  %scevgep265 = getelementptr i8, ptr %.080, i64 4
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.cb ; 2 uses
  %scevgep267 = getelementptr i8, ptr %.184, i64 4
  %scevgep268 = getelementptr i8, ptr %scevgep267, i64 %i.cb ; 2 uses
  %bound0269 = icmp ult ptr %i.bn, %scevgep266
  %bound1270 = icmp ult ptr %.080, %scevgep264
  %found.conflict271 = and i1 %bound0269, %bound1270
  %bound0272 = icmp ult ptr %i.bn, %scevgep268
  %bound1273 = icmp ult ptr %.184, %scevgep264
  %found.conflict274 = and i1 %bound0272, %bound1273
  %conflict.rdx = or i1 %found.conflict271, %found.conflict274
  %bound0275 = icmp ult ptr %.080, %scevgep268
  %bound1276 = icmp ult ptr %.184, %scevgep266
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx, %found.conflict277
  br i1 %conflict.rdx278, label %.lr.ph.i49.preheader299, label %vector.ph281

vector.ph281:                                     ; preds = %vector.memcheck262
  %n.vec282 = and i64 %i.bz, 9223372036854775804  ; 3 uses
  %i.cc = shl i64 %n.vec282, 2                    ; 3 uses
  %i.cd = getelementptr i8, ptr %i.bn, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %.080, i64 %i.cc
  %i.cf = getelementptr i8, ptr %.184, i64 %i.cc
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph281
  %index284 = phi i64 [ 0, %vector.ph281 ], [ %index.next290, %vector.body283 ] ; 2 uses
  %i.cg = shl i64 %index284, 2                    ; 3 uses
  %next.gep285 = getelementptr i8, ptr %i.bn, i64 %i.cg
  %next.gep286 = getelementptr i8, ptr %.080, i64 %i.cg ; 3 uses
  %next.gep287 = getelementptr i8, ptr %.184, i64 %i.cg ; 2 uses
  %wide.load288 = load <4 x i32>, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2486, !noalias !2489
  store <4 x i32> %wide.load288, ptr %next.gep285, align 4, !tbaa !287, !alias.scope !2491, !noalias !2493
  store <4 x i32> zeroinitializer, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2486, !noalias !2489
  %wide.load289 = load <4 x i32>, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !2489
  store <4 x i32> %wide.load289, ptr %next.gep286, align 4, !tbaa !287, !alias.scope !2486, !noalias !2489
  store <4 x i32> zeroinitializer, ptr %next.gep287, align 4, !tbaa !287, !alias.scope !2489
  %index.next290 = add nuw i64 %index284, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next290, %n.vec282
  br i1 %i.ch, label %middle.block291, label %vector.body283, !llvm.loop !2494

middle.block291:                                  ; preds = %vector.body283
  %cmp.n292 = icmp eq i64 %i.bz, %n.vec282
  br i1 %cmp.n292, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49.preheader299

.lr.ph.i49.preheader299:                          ; preds = %vector.memcheck262, %.lr.ph.i49.preheader, %middle.block291
  %.012.i.ph = phi ptr [ %i.bn, %vector.memcheck262 ], [ %i.bn, %.lr.ph.i49.preheader ], [ %i.cd, %middle.block291 ] ; 2 uses
  %.0711.i.ph = phi ptr [ %.080, %vector.memcheck262 ], [ %.080, %.lr.ph.i49.preheader ], [ %i.ce, %middle.block291 ] ; 2 uses
  %.0810.i.ph = phi ptr [ %.184, %vector.memcheck262 ], [ %.184, %.lr.ph.i49.preheader ], [ %i.cf, %middle.block291 ] ; 3 uses
  %.0810.i.ph344 = ptrtoaddr ptr %.0810.i.ph to i64
  %i.ci = sub i64 %i.i, %.0810.i.ph344            ; 2 uses
  %i.cj = lshr i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1
  %xtraiter = and i64 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader299, %.lr.ph.i49.prol
  %.012.i.prol = phi ptr [ %i.cn, %.lr.ph.i49.prol ], [ %.012.i.ph, %.lr.ph.i49.preheader299 ] ; 2 uses
  %.0711.i.prol = phi ptr [ %i.cm, %.lr.ph.i49.prol ], [ %.0711.i.ph, %.lr.ph.i49.preheader299 ] ; 4 uses
  %.0810.i.prol = phi ptr [ %i.cl, %.lr.ph.i49.prol ], [ %.0810.i.ph, %.lr.ph.i49.preheader299 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader299 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0810.i.prol, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0711.i.prol, i64 4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.prol, i64 4 ; 3 uses
  %i.co = load i32, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 %i.co, ptr %.012.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0711.i.prol, align 4, !tbaa !287
  %i.cp = load i32, ptr %.0810.i.prol, align 4, !tbaa !287
  store i32 %i.cp, ptr %.0711.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.0810.i.prol, align 4, !tbaa !287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !2495

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader299
  %.lcssa341.unr = phi ptr [ poison, %.lr.ph.i49.preheader299 ], [ %i.cn, %.lr.ph.i49.prol ]
  %.012.i.unr = phi ptr [ %.012.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cn, %.lr.ph.i49.prol ]
  %.0711.i.unr = phi ptr [ %.0711.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cm, %.lr.ph.i49.prol ]
  %.0810.i.unr = phi ptr [ %.0810.i.ph, %.lr.ph.i49.preheader299 ], [ %i.cl, %.lr.ph.i49.prol ]
  %i.cq = icmp ult i64 %i.ci, 12
  br i1 %i.cq, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.012.i = phi ptr [ %i.di, %.lr.ph.i49 ], [ %.012.i.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %.0711.i = phi ptr [ %i.dh, %.lr.ph.i49 ], [ %.0711.i.unr, %.lr.ph.i49.prol.loopexit ] ; 7 uses
  %.0810.i = phi ptr [ %i.dg, %.lr.ph.i49 ], [ %.0810.i.unr, %.lr.ph.i49.prol.loopexit ] ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0810.i, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0711.i, i64 4 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i, i64 4
  %i.cu = load i32, ptr %.0711.i, align 4, !tbaa !287
  store i32 %i.cu, ptr %.012.i, align 4, !tbaa !287
  store i32 0, ptr %.0711.i, align 4, !tbaa !287
  %i.cv = load i32, ptr %.0810.i, align 4, !tbaa !287
  store i32 %i.cv, ptr %.0711.i, align 4, !tbaa !287
  store i32 0, ptr %.0810.i, align 4, !tbaa !287
  %i.cw = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0711.i, i64 8 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !287
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !287
  store i32 0, ptr %i.cs, align 4, !tbaa !287
  %i.da = load i32, ptr %i.cr, align 4, !tbaa !287
  store i32 %i.da, ptr %i.cs, align 4, !tbaa !287
  store i32 0, ptr %i.cr, align 4, !tbaa !287
  %i.db = getelementptr inbounds nuw i8, ptr %.0810.i, i64 12 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0711.i, i64 12 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.de = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.de, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.df = load i32, ptr %i.cw, align 4, !tbaa !287
  store i32 %i.df, ptr %i.cx, align 4, !tbaa !287
  store i32 0, ptr %i.cw, align 4, !tbaa !287
  %i.dg = getelementptr inbounds nuw i8, ptr %.0810.i, i64 16 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0711.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.012.i, i64 16 ; 2 uses
  %i.dj = load i32, ptr %i.dc, align 4, !tbaa !287
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !287
  store i32 0, ptr %i.dc, align 4, !tbaa !287
  %i.dk = load i32, ptr %i.db, align 4, !tbaa !287
  store i32 %i.dk, ptr %i.dc, align 4, !tbaa !287
  store i32 0, ptr %i.db, align 4, !tbaa !287
  %.not.i50.3 = icmp eq ptr %i.dg, %i.ah
  br i1 %.not.i50.3, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i49, !llvm.loop !2496

bb.w:                                             ; preds = %bb.u
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.dl = sub i64 %i.m, %.184255                  ; 2 uses
  %i.dm = lshr i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader297, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 4
  %i.do = sub i64 %i.o, %.184255
  %i.dp = and i64 %i.do, -4                       ; 2 uses
  %scevgep256 = getelementptr i8, ptr %scevgep, i64 %i.dp
  %scevgep257 = getelementptr i8, ptr %.184, i64 4
  %scevgep258 = getelementptr i8, ptr %scevgep257, i64 %i.dp
  %bound0 = icmp ult ptr %i.bn, %scevgep258
  %bound1 = icmp ult ptr %.184, %scevgep256
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader297, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dn, 9223372036854775800     ; 3 uses
  %i.dq = shl i64 %n.vec, 2                       ; 2 uses
  %i.dr = getelementptr i8, ptr %i.bn, i64 %i.dq  ; 2 uses
  %i.ds = getelementptr i8, ptr %.184, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dt = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.dt ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.184, i64 %i.dt ; 3 uses
  %i.du = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !2497
  %wide.load260 = load <4 x i32>, ptr %i.du, align 4, !tbaa !287, !alias.scope !2497
  %i.dv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !2500, !noalias !2497
  store <4 x i32> %wide.load260, ptr %i.dv, align 4, !tbaa !287, !alias.scope !2500, !noalias !2497
  store <4 x i32> zeroinitializer, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !2497
  store <4 x i32> zeroinitializer, ptr %i.du, align 4, !tbaa !287, !alias.scope !2497
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !2502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.preheader ], [ %i.dr, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.ds, %middle.block ] ; 3 uses
  %.079.i.i.ph345 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.dx = sub i64 %i.i, %.079.i.i.ph345           ; 2 uses
  %i.dy = lshr i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1
  %xtraiter346 = and i64 %i.dz, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.eb, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader297 ]
  %i.ea = load i32, ptr %.079.i.i.prol, align 4, !tbaa !287
  store i32 %i.ea, ptr %.010.i.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !287
  %i.eb = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2503

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader297
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph.i.i.preheader297 ], [ %i.ec, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ec, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.eb, %.lr.ph.i.i.prol ]
  %i.ed = icmp ult i64 %i.dx, 28
  br i1 %i.ed, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.ee = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.ee, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.ef = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !287
  store i32 %i.eh, ptr %i.eg, align 4, !tbaa !287
  store i32 0, ptr %i.ef, align 4, !tbaa !287
  %i.ei = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.ek = load i32, ptr %i.ei, align 4, !tbaa !287
  store i32 %i.ek, ptr %i.ej, align 4, !tbaa !287
  store i32 0, ptr %i.ei, align 4, !tbaa !287
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.en = load i32, ptr %i.el, align 4, !tbaa !287
  store i32 %i.en, ptr %i.em, align 4, !tbaa !287
  store i32 0, ptr %i.el, align 4, !tbaa !287
  %i.eo = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !287
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !287
  store i32 0, ptr %i.eo, align 4, !tbaa !287
  %i.er = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.et = load i32, ptr %i.er, align 4, !tbaa !287
  store i32 %i.et, ptr %i.es, align 4, !tbaa !287
  store i32 0, ptr %i.er, align 4, !tbaa !287
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !287
  store i32 %i.ew, ptr %i.ev, align 4, !tbaa !287
  store i32 0, ptr %i.eu, align 4, !tbaa !287
  %i.ex = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !287
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !287
  store i32 0, ptr %i.ex, align 4, !tbaa !287
  %i.fa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.7 = icmp eq ptr %i.fa, %i.ah
  br i1 %.not.i.i52.7, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !2504

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block291, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ah, %bb.s ], [ %i.bw, %.lr.ph.i48 ], [ %i.fb, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bn, %bb.v ], [ %i.bn, %bb.w ], [ %i.dr, %middle.block ], [ %i.cd, %middle.block291 ], [ %.lcssa342.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa341.unr, %.lr.ph.i49.prol.loopexit ], [ %i.di, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ah, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.fc = getelementptr inbounds nuw i8, ptr %.0129, i64 %.idx88 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !36
  %i.fe = load i64, ptr %.0129, align 8, !tbaa !36
  store i64 %i.fe, ptr %i.fc, align 8, !tbaa !36
  store i64 %i.fd, ptr %.0129, align 8, !tbaa !36
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, %bb.x
  %i.ff = getelementptr inbounds nuw i8, ptr %.0129, i64 8
  %i.fg = icmp ne i64 %.039127, 0
  %.neg = sext i1 %i.fg to i64
  %i.fh = add i64 %.039127, %.neg
  %i.fi = icmp ne i64 %i.ag, 0
  %.neg44 = sext i1 %i.fi to i64
  %i.fj = add i64 %.sroa.speculated, %.neg44
  %i.fk = add i64 %.082126, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fk, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2505

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %.038.lcssa = phi ptr [ %5, %bb.a ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ]
  ret ptr %.038.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !305
  %.not84 = icmp eq i64 %7, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nuw nsw i64 %6, 2
  %.not.i.i = icmp eq i64 %6, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.c = phi ptr [ %2, %.lr.ph ], [ %i.v, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.cv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.cr, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 6 uses
  %.03888 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %.03987 = phi i64 [ %8, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 4 uses
  %.06786 = phi i64 [ %7, %.lr.ph ], [ %i.cw, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPNS_9container4test24movable_and_copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.03987, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.s, %.thread24.i ], [ %.03987, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.r, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.02226.i, %6
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = mul i64 %.027.i, %6
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.02226.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.089, i64 %.027.i
  %i.k = load i32, ptr %i.h, align 4, !tbaa !287  ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !287  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.j, align 8, !tbaa !36
  %i.p = load i64, ptr %i.i, align 8, !tbaa !36
  %i.q = icmp ult i64 %i.o, %i.p
  %cond.fr.i = freeze i1 %i.q
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.r = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.s = add nuw i64 %.027.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !2447

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.r, %.thread24.i ] ; 4 uses
  %i.t = add i64 %.022.lcssa.i, 2
  %i.u = call i64 @llvm.umax.i64(i64 %.0, i64 %i.t) ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.u, i64 %.06786)
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.w = mul i64 %.022.lcssa.i, %6
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.w ; 5 uses
  store ptr %i.x, ptr %i.b, align 8, !tbaa !305
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %6 ; 3 uses
  %.not43 = icmp eq i64 %.022.lcssa.i, 0          ; 2 uses
  br i1 %.not43, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %i.z = load ptr, ptr %3, align 8, !tbaa !305    ; 5 uses
  %.not36.i.i = icmp eq ptr %4, %i.z
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not36.i.i ; 2 uses
  br i1 %10, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %or.cond.i.i, label %.loopexit, label %.preheader.i.i.outer

.preheader.i.i.outer:                             ; preds = %bb.f, %bb.h
  %.024.i.i.ph = phi ptr [ %i.ad, %bb.h ], [ %.03888, %bb.f ]
  %.021.i.i.ph = phi ptr [ %i.am, %bb.h ], [ %i.z, %bb.f ] ; 5 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.h ], [ %i.c, %bb.f ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.outer, %bb.g
  %.024.i.i = phi ptr [ %i.ad, %bb.g ], [ %.024.i.i.ph, %.preheader.i.i.outer ] ; 5 uses
  %.0.i.i = phi ptr [ %i.ah, %bb.g ], [ %.0.i.i.ph, %.preheader.i.i.outer ] ; 6 uses
  %i.aa = load i32, ptr %.0.i.i, align 4, !tbaa !287
  %i.ab = load i32, ptr %.021.i.i.ph, align 4, !tbaa !287
  %i.ac = icmp slt i32 %i.aa, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 4 ; 4 uses
  %i.ae = load i32, ptr %.024.i.i, align 4, !tbaa !287 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_:bb.a
  %storemerge.in712.i64 = phi i64 [ %storemerge.i67, %.lr.ph.i62 ], [ %storemerge.in712.i64.unr, %.lr.ph.i62.prol.loopexit ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge13.i63
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge.in712.i64
  store i32 %load_initial, ptr %i.dg, align 4, !tbaa !287
  store i32 0, ptr %i.dh, align 4, !tbaa !287
  %storemerge6.in.i65 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %storemerge6.i66 = add i32 %storemerge6.in.i65, 1
  store i32 %storemerge6.i66, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %storemerge.i67 = add i64 %storemerge13.i63, 1  ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge.i67
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge13.i63
  store i32 %load_initial, ptr %i.di, align 4, !tbaa !287
  store i32 0, ptr %i.dj, align 4, !tbaa !287
  %storemerge6.in.i65.1 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %storemerge6.i66.1 = add i32 %storemerge6.in.i65.1, 1
  store i32 %storemerge6.i66.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %storemerge.i67.1 = add i64 %storemerge13.i63, 2 ; 2 uses
  %.not.i68.1 = icmp eq i64 %storemerge.i67.1, %5
  br i1 %.not.i68.1, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71, label %.lr.ph.i62, !llvm.loop !2707

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71: ; preds = %.lr.ph.i62.prol.loopexit, %.lr.ph.i62, %.lr.ph.i62.lver.orig.prol.loopexit, %.lr.ph.i62.lver.orig, %bb.j
  %storemerge.in.lcssa.i70 = phi i64 [ %i.bi, %bb.j ], [ %storemerge.i67.lver.orig, %.lr.ph.i62.lver.orig ], [ %storemerge10.i60, %.lr.ph.i62.lver.orig.prol.loopexit ], [ %storemerge10.i60, %.lr.ph.i62.prol.loopexit ], [ %storemerge.i67, %.lr.ph.i62 ]
  store i64 %5, ptr %i.bh, align 8, !tbaa !326
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %storemerge.in.lcssa.i70 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !287
  store i32 %i.dl, ptr %0, align 4, !tbaa !287
  store i32 0, ptr %i.dk, align 4, !tbaa !287
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE16initialize_untilEmRS4_.exit71, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE13shrink_to_fitEm.exit
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre, i64 %5
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = add i64 %i.dn, 7
  %i.dp = and i64 %i.do, -8
  %i.dq = inttoptr i64 %i.dp to ptr               ; 4 uses
  %i.dr = urem i64 %i.c, %5                       ; 3 uses
  %i.ds = sub i64 %i.b, %i.dr
  %i.dt = urem i64 %i.ds, %5                      ; 2 uses
  %i.du = add i64 %i.dr, %i.dt
  %i.dv = sub i64 %i.b, %i.du
  %i.dw = udiv i64 %i.dv, %5                      ; 4 uses
  %i.dx = udiv i64 %i.c, %5                       ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = shl i64 %i.dw, 3
  %i.ea = ashr exact i64 %i.dz, 3                 ; 3 uses
  %.mask.i = and i64 %i.dw, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.eb = and i64 %i.dw, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ea, %i.eb           ; 3 uses
  %i.ec = shl i64 %n.vec, 3
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ee = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.ef, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2955

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eb, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader124

.lr.ph.i.i.preheader124:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.dq, %.lr.ph.i.i.preheader ], [ %i.ed, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader124, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ei, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.eh = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ei = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ei, %i.ea
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !2956

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.dq, ptr noundef %0, i64 noundef %5, i64 noundef %i.dr, i64 noundef %i.dx, i64 noundef %i.dy, i64 noundef %i.dt, ptr noundef %.pre.pre)
  %i.ej = load i64, ptr %i.bh, align 8, !tbaa !326 ; 4 uses
  %.not.i72 = icmp eq i64 %i.ej, 0
  br i1 %.not.i72, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  %i.ek = load ptr, ptr %8, align 8, !tbaa !328   ; 5 uses
  %xtraiter135 = and i64 %i.ej, 3                 ; 3 uses
  %i.el = icmp ult i64 %i.ej, 4
  br i1 %i.el, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.ej, -4
  br label %bb.m

.unr-lcssa:                                       ; preds = %bb.m
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.ff, %.unr-lcssa ]
  %lcmp.mod137 = icmp ne i64 %xtraiter135, 0
  tail call void @llvm.assume(i1 %lcmp.mod137)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.ep, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.em, align 4, !tbaa !287
  %i.en = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.eo = add i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ep = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter135
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.l, !llvm.loop !2957

.epilog-lcssa:                                    ; preds = %bb.l, %.unr-lcssa
  store i64 0, ptr %i.bh, align 8, !tbaa !326
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.m:                                             ; preds = %bb.m, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.ff, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.m ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  store i32 -2147483648, ptr %i.eq, align 4, !tbaa !287
  %i.er = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.es = add i32 %i.er, -1
  store i32 %i.es, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  store i32 -2147483648, ptr %i.eu, align 4, !tbaa !287
  %i.ev = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 -2147483648, ptr %i.ey, align 4, !tbaa !287
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fa = add i32 %i.ez, -1
  store i32 %i.fa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.07.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 -2147483648, ptr %i.fc, align 4, !tbaa !287
  %i.fd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fe = add i32 %i.fd, -1
  store i32 %i.fe, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ff = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.m, !llvm.loop !329

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %.epilog-lcssa, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %i.d = add i64 %5, %4                           ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !305
  %i.f = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !305
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g ; 10 uses
  %.not216 = icmp eq i64 %i.d, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d)
  %.idx208 = shl i64 %2, 2                        ; 5 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 2 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 4
  %i.n = shl i64 %3, 2                            ; 2 uses
  %i.o = add i64 %i.n, %i.i
  %i.p = add i64 %i.o, %.idx208
  %i.q = add i64 %i.p, -4                         ; 2 uses
  %i.r = shl i64 %2, 2
  %i.s = shl i64 %2, 2
  %i.t = getelementptr i8, ptr %1, i64 %i.n
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = add i64 %.idx208, -4                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %bound0302 = icmp ult ptr %7, %i.h
  %bound1303 = icmp ult ptr %i.f, %scevgep
  %found.conflict304 = and i1 %bound0302, %bound1303
  %stride.check = icmp slt i64 %.idx208, 0
  %i.y = or i1 %found.conflict304, %stride.check
  %n.vec = and i64 %i.x, 9223372036854775804      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 3 uses
  %i.aa = getelementptr i8, ptr %7, i64 %i.z      ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.ab = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 5 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.hd, %bb.x ] ; 10 uses
  %i.ad = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hl, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hj, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hh, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.hg, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.hm, %bb.x ] ; 4 uses
  %i.ae = mul i64 %i.s, %indvar
  %i.af = add i64 %i.q, %i.ae                     ; 3 uses
  %i.ag = mul i64 %i.r, %indvar                   ; 2 uses
  %i.ah = add i64 %i.q, %i.ag
  %scevgep341 = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ak = icmp ult i64 %.0104226, %.0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.az, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ay, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.al = mul i64 %.02226.i, %2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = mul i64 %.027.i, %2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.02226.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0106223, i64 %.027.i
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !287 ; 2 uses
  %i.as = load i32, ptr %i.am, align 4, !tbaa !287 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = icmp slt i32 %i.as, %i.ar
  br i1 %i.au, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !287
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !287
  %i.ax = icmp slt i32 %i.av, %i.aw
  %cond.fr.i = freeze i1 %i.ax
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ay = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.az = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit, label %.lr.ph.i, !llvm.loop !1704

_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ay, %.thread24.i ] ; 7 uses
  %i.ba = add i64 %.022.lcssa.i, 2
  %i.bb = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ba) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bb, i64 %.0195217)
  %i.bc = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bc, 2
  %i.bd = getelementptr i8, ptr %i.ad, i64 %.idx  ; 10 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %2 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ad, i64 %.idx208 ; 8 uses
  %i.bg = icmp eq ptr %i.ac, %i.ab
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !287
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !287
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bk = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 16 uses
  %i.bl = icmp eq ptr %.0191218, %i.m
  br i1 %i.bl, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bm = trunc nuw i8 %.0108222 to i1
  br i1 %i.bm, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !287
  %i.bo = load i32, ptr %.0191218, align 4, !tbaa !287
  %i.bp = icmp slt i32 %i.bn, %i.bo               ; 4 uses
  %i.bq = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.br = xor i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bs = phi i1 [ true, %._crit_edge ], [ %i.bp, %bb.i ]
  br i1 %i.bg, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bt = add i64 %i.ai, -4
  %i.bu = sub i64 %i.bt, %i.aj                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.bu, 28
  br i1 %min.iters.check324, label %.lr.ph.i.i.preheader449, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep316 = getelementptr i8, ptr %.0114219, i64 4
  %i.bx = add i64 %i.ai, -4
  %i.by = sub i64 %i.bx, %i.aj
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.bz
  %scevgep318 = getelementptr i8, ptr %i.ac, i64 4
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.bz
  %bound0320 = icmp ult ptr %.0114219, %scevgep319
  %bound1321 = icmp ult ptr %i.ac, %scevgep317
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.preheader449, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck315
  %n.vec326 = and i64 %i.bw, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec326, 2                    ; 2 uses
  %i.cb = getelementptr i8, ptr %.0114219, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.ac, i64 %i.ca
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.cd = shl i64 %index328, 2                    ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.0114219, i64 %i.cd ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.ac, i64 %i.cd ; 3 uses
  %i.ce = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !287, !alias.scope !2958
  %wide.load332 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !287, !alias.scope !2958
  %i.cf = getelementptr i8, ptr %next.gep329, i64 16
  store <4 x i32> %wide.load331, ptr %next.gep329, align 4, !tbaa !287, !alias.scope !2961, !noalias !2958
  store <4 x i32> %wide.load332, ptr %i.cf, align 4, !tbaa !287, !alias.scope !2961, !noalias !2958
  store <4 x i32> zeroinitializer, ptr %next.gep330, align 4, !tbaa !287, !alias.scope !2958
  store <4 x i32> zeroinitializer, ptr %i.ce, align 4, !tbaa !287, !alias.scope !2958
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.cg, label %middle.block334, label %vector.body327, !llvm.loop !2963

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.bw, %n.vec326
  br i1 %cmp.n335, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader449

.lr.ph.i.i.preheader449:                          ; preds = %vector.memcheck315, %.lr.ph.i.i.preheader, %middle.block334
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck315 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.cb, %middle.block334 ]
  %.079.i.i.ph = phi ptr [ %i.ac, %vector.memcheck315 ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block334 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader449, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader449 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader449 ] ; 3 uses
  %i.ch = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.ch, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ci, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !2964

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block334, %bb.j
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader448, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.be
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0305 = icmp ult ptr %i.bd, %i.h
  %bound1306 = icmp ult ptr %i.f, %i.be
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx309 = or i1 %found.conflict307, %conflict.rdx
  br i1 %conflict.rdx309, label %.lr.ph.i125.preheader448, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.z
  %i.cl = getelementptr i8, ptr %i.ad, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cm
  %next.gep310 = getelementptr i8, ptr %i.bd, i64 %i.cm ; 3 uses
  %next.gep311 = getelementptr i8, ptr %i.ad, i64 %i.cm ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !2965, !noalias !2968
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !2970, !noalias !2972
  store <4 x i32> zeroinitializer, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !2965, !noalias !2968
  %wide.load312 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !287, !alias.scope !2968
  store <4 x i32> %wide.load312, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !2965, !noalias !2968
  store <4 x i32> zeroinitializer, ptr %next.gep311, align 4, !tbaa !287, !alias.scope !2968
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !2973

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader448

.lr.ph.i125.preheader448:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.02032.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ] ; 2 uses
  %.02131.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i125.preheader ], [ %i.cl, %middle.block ] ; 3 uses
  %.02131.i.ph454 = ptrtoaddr ptr %.02131.i.ph to i64
  %i.co = sub i64 %i.af, %.02131.i.ph454          ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1
  %xtraiter455 = and i64 %i.cq, 3                 ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader448, %.lr.ph.i125.prol
  %.033.i.prol = phi ptr [ %i.ct, %.lr.ph.i125.prol ], [ %.033.i.ph, %.lr.ph.i125.preheader448 ] ; 2 uses
  %.02032.i.prol = phi ptr [ %i.cs, %.lr.ph.i125.prol ], [ %.02032.i.ph, %.lr.ph.i125.preheader448 ] ; 4 uses
  %.02131.i.prol = phi ptr [ %i.cr, %.lr.ph.i125.prol ], [ %.02131.i.ph, %.lr.ph.i125.preheader448 ] ; 3 uses
  %prol.iter457 = phi i64 [ %prol.iter457.next, %.lr.ph.i125.prol ], [ 0, %.lr.ph.i125.preheader448 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.02131.i.prol, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02032.i.prol, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.033.i.prol, i64 4 ; 3 uses
  %i.cu = load i32, ptr %.02032.i.prol, align 4, !tbaa !287
  store i32 %i.cu, ptr %.033.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.02032.i.prol, align 4, !tbaa !287
  %i.cv = load i32, ptr %.02131.i.prol, align 4, !tbaa !287
  store i32 %i.cv, ptr %.02032.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.02131.i.prol, align 4, !tbaa !287
  %prol.iter457.next = add i64 %prol.iter457, 1   ; 2 uses
  %prol.iter457.cmp.not = icmp eq i64 %prol.iter457.next, %xtraiter455
  br i1 %prol.iter457.cmp.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol, !llvm.loop !2974

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader448
  %.lcssa452.unr = phi ptr [ poison, %.lr.ph.i125.preheader448 ], [ %i.ct, %.lr.ph.i125.prol ]
  %.033.i.unr = phi ptr [ %.033.i.ph, %.lr.ph.i125.preheader448 ], [ %i.ct, %.lr.ph.i125.prol ]
  %.02032.i.unr = phi ptr [ %.02032.i.ph, %.lr.ph.i125.preheader448 ], [ %i.cs, %.lr.ph.i125.prol ]
  %.02131.i.unr = phi ptr [ %.02131.i.ph, %.lr.ph.i125.preheader448 ], [ %i.cr, %.lr.ph.i125.prol ]
  %i.cw = icmp ult i64 %i.co, 12
  br i1 %i.cw, label %._crit_edge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %.033.i = phi ptr [ %i.do, %.lr.ph.i125 ], [ %.033.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %.02032.i = phi ptr [ %i.dn, %.lr.ph.i125 ], [ %.02032.i.unr, %.lr.ph.i125.prol.loopexit ] ; 7 uses
  %.02131.i = phi ptr [ %i.dm, %.lr.ph.i125 ], [ %.02131.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.da = load i32, ptr %.02032.i, align 4, !tbaa !287
  store i32 %i.da, ptr %.033.i, align 4, !tbaa !287
  store i32 0, ptr %.02032.i, align 4, !tbaa !287
  %i.db = load i32, ptr %.02131.i, align 4, !tbaa !287
  store i32 %i.db, ptr %.02032.i, align 4, !tbaa !287
  store i32 0, ptr %.02131.i, align 4, !tbaa !287
  %i.dc = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.df = load i32, ptr %i.cy, align 4, !tbaa !287
  store i32 %i.df, ptr %i.cz, align 4, !tbaa !287
  store i32 0, ptr %i.cy, align 4, !tbaa !287
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.dg, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.dh = getelementptr inbounds nuw i8, ptr %.02131.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02032.i, i64 12 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dk = load i32, ptr %i.dd, align 4, !tbaa !287
  store i32 %i.dk, ptr %i.de, align 4, !tbaa !287
  store i32 0, ptr %i.dd, align 4, !tbaa !287
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !287
  store i32 %i.dl, ptr %i.dd, align 4, !tbaa !287
  store i32 0, ptr %i.dc, align 4, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.di, align 4, !tbaa !287
  store i32 %i.dp, ptr %i.dj, align 4, !tbaa !287
  store i32 0, ptr %i.di, align 4, !tbaa !287
  %i.dq = load i32, ptr %i.dh, align 4, !tbaa !287
  store i32 %i.dq, ptr %i.di, align 4, !tbaa !287
  store i32 0, ptr %i.dh, align 4, !tbaa !287
  %.not28.i.3 = icmp eq ptr %i.dm, %i.bf
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !2975

._crit_edge.i:                                    ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.aa, %middle.block ], [ %.lcssa452.unr, %.lr.ph.i125.prol.loopexit ], [ %i.do, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dr = load i32, ptr %i.bk, align 4, !tbaa !287
  store i32 0, ptr %i.bk, align 4, !tbaa !287
  %i.ds = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.du = load i32, ptr %.0106223, align 4, !tbaa !287
  store i32 %i.du, ptr %i.bk, align 4, !tbaa !287
  store i32 %i.dr, ptr %.0106223, align 4, !tbaa !287
  %i.dv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.dw = add i32 %i.dv, -1
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dx = icmp eq ptr %i.bk, %.0191218
  br i1 %i.dx, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dy = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.dy, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !305
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dz = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.ea = phi i1 [ true, %.thread281 ], [ %i.bp, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !1505
  %i.eb = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.ec = phi i1 [ %i.bp, %bb.o ], [ %i.ea, %bb.p ]
  %i.ed = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ee = phi ptr [ %i.dz, %bb.o ], [ %i.eb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !305 ; 4 uses
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !305 ; 4 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg                ; 2 uses
  br i1 %i.eh, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !305 ; 10 uses
  %i.ej = ptrtoint ptr %i.bf to i64
  %i.ek = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = ashr exact i64 %i.el, 2
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.en ; 7 uses
  %.not.i126 = icmp eq ptr %i.ei, %i.eo
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.ei, %i.bf
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.ep = sub i64 %i.af, %i.ek                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.ep, 60
  br i1 %min.iters.check357, label %.lr.ph.i129.preheader450, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i129.preheader
  %i.es = sub i64 %i.ah, %i.ek
  %i.et = and i64 %i.es, -4                       ; 3 uses
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.et ; 2 uses
  %i.eu = shl i64 %.022.lcssa.i, 2
  %i.ev = add i64 %i.eu, 4
  %i.ew = mul i64 %2, %i.ev
  %i.ex = add i64 %i.ew, %i.et
  %i.ey = sub i64 %i.ex, %i.el
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.ey ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.ei, i64 4
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.et ; 2 uses
  %bound0345 = icmp ult ptr %7, %scevgep342
  %bound1346 = icmp ult ptr %i.eo, %scevgep340
  %found.conflict347 = and i1 %bound0345, %bound1346
  %bound0348 = icmp ult ptr %7, %scevgep344
  %bound1349 = icmp ult ptr %i.ei, %scevgep340
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %found.conflict347, %found.conflict350
  %bound0352 = icmp ult ptr %i.eo, %scevgep344
  %bound1353 = icmp ult ptr %i.ei, %scevgep342
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %.lr.ph.i129.preheader450, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck338
  %n.vec359 = and i64 %i.er, 9223372036854775804  ; 3 uses
  %i.ez = shl i64 %n.vec359, 2                    ; 3 uses
  %i.fa = getelementptr i8, ptr %7, i64 %i.ez     ; 2 uses
  %i.fb = getelementptr i8, ptr %i.eo, i64 %i.ez
  %i.fc = getelementptr i8, ptr %i.ei, i64 %i.ez
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next367, %vector.body360 ] ; 2 uses
  %i.fd = shl i64 %index361, 2                    ; 3 uses
  %next.gep362 = getelementptr i8, ptr %7, i64 %i.fd
  %next.gep363 = getelementptr i8, ptr %i.eo, i64 %i.fd ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ei, i64 %i.fd ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !2976, !noalias !2979
  store <4 x i32> %wide.load365, ptr %next.gep362, align 4, !tbaa !287, !alias.scope !2981, !noalias !2983
  store <4 x i32> zeroinitializer, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !2976, !noalias !2979
  %wide.load366 = load <4 x i32>, ptr %next.gep364, align 4, !tbaa !287, !alias.scope !2979
  store <4 x i32> %wide.load366, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !2976, !noalias !2979
  store <4 x i32> zeroinitializer, ptr %next.gep364, align 4, !tbaa !287, !alias.scope !2979
  %index.next367 = add nuw i64 %index361, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next367, %n.vec359
  br i1 %i.fe, label %middle.block368, label %vector.body360, !llvm.loop !2984

middle.block368:                                  ; preds = %vector.body360
  %cmp.n369 = icmp eq i64 %i.er, %n.vec359
  br i1 %cmp.n369, label %._crit_edge.i134, label %.lr.ph.i129.preheader450

.lr.ph.i129.preheader450:                         ; preds = %vector.memcheck338, %.lr.ph.i129.preheader, %middle.block368
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck338 ], [ %7, %.lr.ph.i129.preheader ], [ %i.fa, %middle.block368 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.eo, %vector.memcheck338 ], [ %i.eo, %.lr.ph.i129.preheader ], [ %i.fb, %middle.block368 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.ei, %vector.memcheck338 ], [ %i.ei, %.lr.ph.i129.preheader ], [ %i.fc, %middle.block368 ] ; 3 uses
  %.02131.i132.ph453 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.ff = sub i64 %i.af, %.02131.i132.ph453       ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1
  %xtraiter = and i64 %i.fh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader450, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fk, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader450 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.fj, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader450 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.fi, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader450 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader450 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fl = load i32, ptr %.02032.i131.prol, align 4, !tbaa !287
  store i32 %i.fl, ptr %.033.i130.prol, align 4, !tbaa !287
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !287
  %i.fm = load i32, ptr %.02131.i132.prol, align 4, !tbaa !287
  store i32 %i.fm, ptr %.02032.i131.prol, align 4, !tbaa !287
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !2985

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader450
  %.lcssa451.unr = phi ptr [ poison, %.lr.ph.i129.preheader450 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader450 ], [ %i.fk, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader450 ], [ %i.fj, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader450 ], [ %i.fi, %.lr.ph.i129.prol ]
  %i.fn = icmp ult i64 %i.ff, 12
  br i1 %i.fn, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gf, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.ge, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.gd, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fr = load i32, ptr %.02032.i131, align 4, !tbaa !287
  store i32 %i.fr, ptr %.033.i130, align 4, !tbaa !287
  store i32 0, ptr %.02032.i131, align 4, !tbaa !287
  %i.fs = load i32, ptr %.02131.i132, align 4, !tbaa !287
  store i32 %i.fs, ptr %.02032.i131, align 4, !tbaa !287
  store i32 0, ptr %.02131.i132, align 4, !tbaa !287
  %i.ft = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fw = load i32, ptr %i.fp, align 4, !tbaa !287
  store i32 %i.fw, ptr %i.fq, align 4, !tbaa !287
  store i32 0, ptr %i.fp, align 4, !tbaa !287
  %i.fx = load i32, ptr %i.fo, align 4, !tbaa !287
  store i32 %i.fx, ptr %i.fp, align 4, !tbaa !287
  store i32 0, ptr %i.fo, align 4, !tbaa !287
  %i.fy = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.gb = load i32, ptr %i.fu, align 4, !tbaa !287
  store i32 %i.gb, ptr %i.fv, align 4, !tbaa !287
  store i32 0, ptr %i.fu, align 4, !tbaa !287
  %i.gc = load i32, ptr %i.ft, align 4, !tbaa !287
  store i32 %i.gc, ptr %i.fu, align 4, !tbaa !287
  store i32 0, ptr %i.ft, align 4, !tbaa !287
  %i.gd = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gg = load i32, ptr %i.fz, align 4, !tbaa !287
  store i32 %i.gg, ptr %i.ga, align 4, !tbaa !287
  store i32 0, ptr %i.fz, align 4, !tbaa !287
  %i.gh = load i32, ptr %i.fy, align 4, !tbaa !287
  store i32 %i.gh, ptr %i.fz, align 4, !tbaa !287
  store i32 0, ptr %i.fy, align 4, !tbaa !287
  %.not28.i133.3 = icmp eq ptr %i.gd, %i.bf
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !2986

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block368, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.fa, %middle.block368 ], [ %.lcssa451.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gf, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.gi = load i32, ptr %i.bk, align 4, !tbaa !287
  store i32 0, ptr %i.bk, align 4, !tbaa !287
  %i.gj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gl = load i32, ptr %.0106223, align 4, !tbaa !287
  store i32 %i.gl, ptr %i.bk, align 4, !tbaa !287
  store i32 %i.gi, ptr %.0106223, align 4, !tbaa !287
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gn = add i32 %i.gm, -1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.go = icmp eq ptr %i.bk, %.0191218
  br i1 %i.go, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gp = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gp, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.b, align 8, !tbaa !305
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = load i32, ptr %i.bk, align 4, !tbaa !287
  store i32 0, ptr %i.bk, align 4, !tbaa !287
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gt = load i32, ptr %.0106223, align 4, !tbaa !287
  store i32 %i.gt, ptr %i.bk, align 4, !tbaa !287
  store i32 %i.gq, ptr %.0106223, align 4, !tbaa !287
  %i.gu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gv = add i32 %i.gu, -1
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gw = icmp eq ptr %i.bk, %.0191218
  br i1 %i.gw, label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gx = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gx, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140
  %i.gy = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.eg, %bb.u ], [ %i.eg, %bb.w ], [ %i.eg, %bb.v ]
  %i.gz = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %i.ef, %bb.u ], [ %i.ef, %bb.w ], [ %i.ef, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.ha = xor i1 %i.ed, %i.eh
  %i.hb = zext i1 %i.ha to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit
  %i.hc = phi ptr [ %i.gy, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.hd = phi ptr [ %i.gz, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %i.he = phi i1 [ %i.ec, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.bs, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.ee, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.hb, %_ZN5boost7movelib15detail_adaptive10update_keyIPNS_9container4test24movable_and_copyable_intEEEvT_S7_RS7_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_7move_opEEET1_T_S9_RS9_T0_SB_SB_S8_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.he, true
  %i.hf = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.hf
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !305
  %i.hh = getelementptr inbounds nuw i8, ptr %.0106223, i64 4
  %i.hi = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.hi to i64
  %i.hj = add i64 %.0104226, %.neg
  %i.hk = icmp ne i64 %i.bb, 0
  %.neg122 = sext i1 %i.hk to i64
  %i.hl = add i64 %.sroa.speculated180, %.neg122
  %i.hm = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.hm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !2987

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hn = phi ptr [ %i.hc, %bb.x ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ho = phi ptr [ %i.hd, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.hg, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hp = ptrtoaddr ptr %i.hn to i64              ; 2 uses
  %i.hq = ptrtoaddr ptr %i.ho to i64              ; 2 uses
  %i.hr = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hs = select i1 %i.hr, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.ho, %i.hn
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.ht = add i64 %i.hp, -4
  %i.hu = sub i64 %i.ht, %i.hq                    ; 2 uses
  %i.hv = lshr i64 %i.hu, 2
  %i.hw = add nuw nsw i64 %i.hv, 1                ; 2 uses
  %min.iters.check380 = icmp ult i64 %i.hu, 76
  br i1 %min.iters.check380, label %.lr.ph.i.i145.preheader447, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.lr.ph.i.i145.preheader
  %i.hx = add i64 %i.hp, -4
  %i.hy = sub i64 %i.hx, %i.hq
  %i.hz = and i64 %i.hy, -4
  %i.ia = add i64 %i.hz, 4                        ; 2 uses
  %scevgep374 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.ia
  %scevgep375 = getelementptr i8, ptr %i.ho, i64 %i.ia
  %bound0376 = icmp ult ptr %.0114.lcssa.ph, %scevgep375
  %bound1377 = icmp ult ptr %i.ho, %scevgep374
  %found.conflict378 = and i1 %bound0376, %bound1377
  br i1 %found.conflict378, label %.lr.ph.i.i145.preheader447, label %vector.ph381

end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_:bb.a
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ek = load i32, ptr %.010.i.i146, align 4, !tbaa !287
  store i32 %i.ek, ptr %.079.i.i147, align 4, !tbaa !287
  store i32 %i.eh, ptr %.010.i.i146, align 4, !tbaa !287
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 4
  %.not.i.i148 = icmp eq ptr %i.en, %i.ed
  br i1 %.not.i.i148, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150: ; preds = %.lr.ph.i.i145, %bb.a, %.thread
  %.0108.lcssa293 = phi ptr [ %1, %bb.a ], [ %i.eg, %.thread ], [ %i.eg, %.lr.ph.i.i145 ]
  %.0111.lcssa292 = phi ptr [ %i.f, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa291 = phi ptr [ %i.e, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa290 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 2                        ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx210 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  %i.eq = add i64 %.idx210, -4                    ; 2 uses
  %i.er = and i64 %i.eq, 4
  %lcmp.mod.not.not = icmp eq i64 %i.er, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i152.prol, label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol:                               ; preds = %.lr.ph.i.i152.preheader
  %i.es = load i32, ptr %i.h, align 4, !tbaa !287
  store i32 0, ptr %i.h, align 4, !tbaa !287
  %i.et = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ev = load i32, ptr %7, align 4, !tbaa !287
  store i32 %i.ev, ptr %i.h, align 4, !tbaa !287
  store i32 %i.es, ptr %7, align 4, !tbaa !287
  %i.ew = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
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
  %i.fb = load i32, ptr %.079.i.i154, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !287
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fe = load i32, ptr %.010.i.i153, align 4, !tbaa !287
  store i32 %i.fe, ptr %.079.i.i154, align 4, !tbaa !287
  store i32 %i.fb, ptr %.010.i.i153, align 4, !tbaa !287
  %i.ff = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289 ; 3 uses
  %i.fg = add i32 %i.ff, -1
  store i32 %i.fg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fh = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !287
  store i32 0, ptr %i.fh, align 4, !tbaa !287
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !287
  store i32 %i.fk, ptr %i.fh, align 4, !tbaa !287
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !287
  %i.fl = add i32 %i.ff, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fm = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8
  %.not.i.i155.1 = icmp eq ptr %i.fm, %i.ep
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157, label %.lr.ph.i.i152, !llvm.loop !1488

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fo, ptr %i.b, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.fo, ptr %10, align 8, !tbaa !1674
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %4
  store ptr %i.fq, ptr %12, align 8, !tbaa !1674, !alias.scope !3026
  store ptr %.0191.lcssa291, ptr %13, align 8, !tbaa !1674, !alias.scope !3029
  store ptr %i.h, ptr %14, align 8, !tbaa !1674, !alias.scope !3032
  store ptr %7, ptr %15, align 8, !tbaa !1674, !alias.scope !3035
  store ptr %i.ep, ptr %16, align 8, !tbaa !1674, !alias.scope !3038
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa290, i64 noundef 0, i64 noundef %.0195.lcssa290, i1 noundef zeroext true)
  %i.fr = load ptr, ptr %11, align 8, !tbaa !1674
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fs = load ptr, ptr %10, align 8, !tbaa !1674 ; 2 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !305 ; 3 uses
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
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !287
  store i32 0, ptr %i.fv, align 4, !tbaa !287
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ga = load i32, ptr %i.fw, align 4, !tbaa !287
  store i32 %i.ga, ptr %i.fv, align 4, !tbaa !287
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !287
  %i.gb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gc = add i32 %i.gb, -1
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.not.i.i.i = icmp eq ptr %i.ft, %i.fv
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !1473

bb.y:                                             ; preds = %.lr.ph.i158
  %i.gd = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 4 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !287
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !287
  %i.gh = icmp slt i32 %i.gf, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 5 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !287 ; 2 uses
  store i32 0, ptr %i.gi, align 4, !tbaa !287
  %i.gk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.gl = add i32 %i.gk, 1
  store i32 %i.gl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br i1 %i.gh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.ge, align 4, !tbaa !287
  store i32 %i.gm, ptr %i.gi, align 4, !tbaa !287
  store i32 %i.gj, ptr %i.ge, align 4, !tbaa !287
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.gd, align 4, !tbaa !287
  store i32 %i.gn, ptr %i.gi, align 4, !tbaa !287
  store i32 %i.gj, ptr %i.gd, align 4, !tbaa !287
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.120.i = phi ptr [ %i.ge, %bb.z ], [ %.01929.i, %bb.aa ]
  %.1.i159 = phi ptr [ %.030.i, %bb.z ], [ %i.gd, %bb.aa ] ; 2 uses
  %storemerge.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %storemerge.i = add i32 %storemerge.in.i, -1
  store i32 %storemerge.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.not.i160 = icmp eq ptr %i.ft, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !3041

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEPS7_SE_EEvT2_SF_SF_T1_SG_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #5 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.7", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.65", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.54", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.54", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %i.d = add i64 %5, %4                           ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !305
  %i.f = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !305
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g ; 10 uses
  %.not216 = icmp eq i64 %i.d, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d)
  %.idx208 = shl i64 %2, 2                        ; 5 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 2 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 4
  %i.n = shl i64 %3, 2                            ; 2 uses
  %i.o = add i64 %i.n, %i.i
  %i.p = add i64 %i.o, %.idx208
  %i.q = add i64 %i.p, -4                         ; 2 uses
  %i.r = shl i64 %2, 2
  %i.s = shl i64 %2, 2
  %i.t = getelementptr i8, ptr %1, i64 %i.n
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = add i64 %.idx208, -4                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 44
  %bound0302 = icmp ult ptr %7, %i.h
  %bound1303 = icmp ult ptr %i.f, %scevgep
  %found.conflict304 = and i1 %bound0302, %bound1303
  %stride.check = icmp slt i64 %.idx208, 0
  %i.y = or i1 %found.conflict304, %stride.check
  %n.vec = and i64 %i.x, 9223372036854775804      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 3 uses
  %i.aa = getelementptr i8, ptr %7, i64 %i.z      ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.ab = phi ptr [ %7, %.lr.ph ], [ %i.gq, %bb.x ] ; 5 uses
  %i.ac = phi ptr [ %7, %.lr.ph ], [ %i.gr, %bb.x ] ; 10 uses
  %i.ad = phi ptr [ %i.f, %.lr.ph ], [ %i.bf, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.gz, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.gx, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.gv, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.gu, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 10 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.ha, %bb.x ] ; 4 uses
  %i.ae = mul i64 %i.s, %indvar
  %i.af = add i64 %i.q, %i.ae                     ; 3 uses
  %i.ag = mul i64 %i.r, %indvar                   ; 2 uses
  %i.ah = add i64 %i.q, %i.ag
  %scevgep341 = getelementptr i8, ptr %i.u, i64 %i.ag
  %i.ai = ptrtoaddr ptr %i.ab to i64              ; 2 uses
  %i.aj = ptrtoaddr ptr %i.ac to i64              ; 2 uses
  %i.ak = icmp ult i64 %.0104226, %.0
  br i1 %i.ak, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.az, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ay, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.al = mul i64 %.02226.i, %2
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = mul i64 %.027.i, %2
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ar = load i32, ptr %i.ao, align 4, !tbaa !287 ; 2 uses
  %i.as = load i32, ptr %i.am, align 4, !tbaa !287 ; 2 uses
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.au = icmp slt i32 %i.as, %i.ar
  br i1 %i.au, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.av = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !36
  %i.ax = icmp ult i64 %i.av, %i.aw
  %cond.fr.i = freeze i1 %i.ax
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.ay = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.az = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit, label %.lr.ph.i, !llvm.loop !2447

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ay, %.thread24.i ] ; 7 uses
  %i.ba = add i64 %.022.lcssa.i, 2
  %i.bb = call i64 @llvm.umax.i64(i64 %.0, i64 %i.ba) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bb, i64 %.0195217)
  %i.bc = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bc, 2
  %i.bd = getelementptr i8, ptr %i.ad, i64 %.idx  ; 10 uses
  %i.be = getelementptr [4 x i8], ptr %i.bd, i64 %2 ; 3 uses
  %i.bf = getelementptr i8, ptr %i.ad, i64 %.idx208 ; 8 uses
  %i.bg = icmp eq ptr %i.ac, %i.ab
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !287
  %i.bi = load i32, ptr %i.bd, align 4, !tbaa !287
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.bl = icmp eq ptr %.0191218, %i.m
  br i1 %i.bl, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bm = trunc nuw i8 %.0108222 to i1
  br i1 %i.bm, label %bb.j, label %.thread281

.thread281:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !36
  %i.bo = load i64, ptr %.0191218, align 8, !tbaa !36
  %i.bp = icmp ult i64 %i.bn, %i.bo               ; 4 uses
  %i.bq = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.br = xor i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.bs = phi i1 [ true, %._crit_edge ], [ %i.bp, %bb.i ]
  br i1 %i.bg, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bt = add i64 %i.ai, -4
  %i.bu = sub i64 %i.bt, %i.aj                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check324 = icmp ult i64 %i.bu, 28
  br i1 %min.iters.check324, label %.lr.ph.i.i.preheader449, label %vector.memcheck315

vector.memcheck315:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep316 = getelementptr i8, ptr %.0114219, i64 4
  %i.bx = add i64 %i.ai, -4
  %i.by = sub i64 %i.bx, %i.aj
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %scevgep317 = getelementptr i8, ptr %scevgep316, i64 %i.bz
  %scevgep318 = getelementptr i8, ptr %i.ac, i64 4
  %scevgep319 = getelementptr i8, ptr %scevgep318, i64 %i.bz
  %bound0320 = icmp ult ptr %.0114219, %scevgep319
  %bound1321 = icmp ult ptr %i.ac, %scevgep317
  %found.conflict322 = and i1 %bound0320, %bound1321
  br i1 %found.conflict322, label %.lr.ph.i.i.preheader449, label %vector.ph325

vector.ph325:                                     ; preds = %vector.memcheck315
  %n.vec326 = and i64 %i.bw, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec326, 2                    ; 2 uses
  %i.cb = getelementptr i8, ptr %.0114219, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.ac, i64 %i.ca
  br label %vector.body327

vector.body327:                                   ; preds = %vector.body327, %vector.ph325
  %index328 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body327 ] ; 2 uses
  %i.cd = shl i64 %index328, 2                    ; 2 uses
  %next.gep329 = getelementptr i8, ptr %.0114219, i64 %i.cd ; 2 uses
  %next.gep330 = getelementptr i8, ptr %i.ac, i64 %i.cd ; 3 uses
  %i.ce = getelementptr i8, ptr %next.gep330, i64 16 ; 2 uses
  %wide.load331 = load <4 x i32>, ptr %next.gep330, align 4, !tbaa !287, !alias.scope !3042
  %wide.load332 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !287, !alias.scope !3042
  %i.cf = getelementptr i8, ptr %next.gep329, i64 16
  store <4 x i32> %wide.load331, ptr %next.gep329, align 4, !tbaa !287, !alias.scope !3045, !noalias !3042
  store <4 x i32> %wide.load332, ptr %i.cf, align 4, !tbaa !287, !alias.scope !3045, !noalias !3042
  store <4 x i32> zeroinitializer, ptr %next.gep330, align 4, !tbaa !287, !alias.scope !3042
  store <4 x i32> zeroinitializer, ptr %i.ce, align 4, !tbaa !287, !alias.scope !3042
  %index.next333 = add nuw i64 %index328, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next333, %n.vec326
  br i1 %i.cg, label %middle.block334, label %vector.body327, !llvm.loop !3047

middle.block334:                                  ; preds = %vector.body327
  %cmp.n335 = icmp eq i64 %i.bw, %n.vec326
  br i1 %cmp.n335, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader449

.lr.ph.i.i.preheader449:                          ; preds = %vector.memcheck315, %.lr.ph.i.i.preheader, %middle.block334
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck315 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.cb, %middle.block334 ]
  %.079.i.i.ph = phi ptr [ %i.ac, %vector.memcheck315 ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.cc, %middle.block334 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader449, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader449 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader449 ] ; 3 uses
  %i.ch = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.ch, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ci, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !3048

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block334, %bb.j
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader448, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %bound0 = icmp ult ptr %7, %i.be
  %bound1 = icmp ult ptr %i.bd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0305 = icmp ult ptr %i.bd, %i.h
  %bound1306 = icmp ult ptr %i.f, %i.be
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx309 = or i1 %found.conflict307, %conflict.rdx
  br i1 %conflict.rdx309, label %.lr.ph.i125.preheader448, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ck = getelementptr i8, ptr %i.bd, i64 %i.z
  %i.cl = getelementptr i8, ptr %i.ad, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %7, i64 %i.cm
  %next.gep310 = getelementptr i8, ptr %i.bd, i64 %i.cm ; 3 uses
  %next.gep311 = getelementptr i8, ptr %i.ad, i64 %i.cm ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !3049, !noalias !3052
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !3054, !noalias !3056
  store <4 x i32> zeroinitializer, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !3049, !noalias !3052
  %wide.load312 = load <4 x i32>, ptr %next.gep311, align 4, !tbaa !287, !alias.scope !3052
  store <4 x i32> %wide.load312, ptr %next.gep310, align 4, !tbaa !287, !alias.scope !3049, !noalias !3052
  store <4 x i32> zeroinitializer, ptr %next.gep311, align 4, !tbaa !287, !alias.scope !3052
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !3057

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i125.preheader448

.lr.ph.i125.preheader448:                         ; preds = %vector.memcheck, %.lr.ph.i125.preheader, %middle.block
  %.033.i.ph = phi ptr [ %7, %vector.memcheck ], [ %7, %.lr.ph.i125.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.02032.i.ph = phi ptr [ %i.bd, %vector.memcheck ], [ %i.bd, %.lr.ph.i125.preheader ], [ %i.ck, %middle.block ] ; 2 uses
  %.02131.i.ph = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i125.preheader ], [ %i.cl, %middle.block ] ; 3 uses
  %.02131.i.ph454 = ptrtoaddr ptr %.02131.i.ph to i64
  %i.co = sub i64 %i.af, %.02131.i.ph454          ; 2 uses
  %i.cp = lshr i64 %i.co, 2
  %i.cq = add nuw nsw i64 %i.cp, 1
  %xtraiter455 = and i64 %i.cq, 3                 ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol

.lr.ph.i125.prol:                                 ; preds = %.lr.ph.i125.preheader448, %.lr.ph.i125.prol
  %.033.i.prol = phi ptr [ %i.ct, %.lr.ph.i125.prol ], [ %.033.i.ph, %.lr.ph.i125.preheader448 ] ; 2 uses
  %.02032.i.prol = phi ptr [ %i.cs, %.lr.ph.i125.prol ], [ %.02032.i.ph, %.lr.ph.i125.preheader448 ] ; 4 uses
  %.02131.i.prol = phi ptr [ %i.cr, %.lr.ph.i125.prol ], [ %.02131.i.ph, %.lr.ph.i125.preheader448 ] ; 3 uses
  %prol.iter457 = phi i64 [ %prol.iter457.next, %.lr.ph.i125.prol ], [ 0, %.lr.ph.i125.preheader448 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.02131.i.prol, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.02032.i.prol, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.033.i.prol, i64 4 ; 3 uses
  %i.cu = load i32, ptr %.02032.i.prol, align 4, !tbaa !287
  store i32 %i.cu, ptr %.033.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.02032.i.prol, align 4, !tbaa !287
  %i.cv = load i32, ptr %.02131.i.prol, align 4, !tbaa !287
  store i32 %i.cv, ptr %.02032.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.02131.i.prol, align 4, !tbaa !287
  %prol.iter457.next = add i64 %prol.iter457, 1   ; 2 uses
  %prol.iter457.cmp.not = icmp eq i64 %prol.iter457.next, %xtraiter455
  br i1 %prol.iter457.cmp.not, label %.lr.ph.i125.prol.loopexit, label %.lr.ph.i125.prol, !llvm.loop !3058

.lr.ph.i125.prol.loopexit:                        ; preds = %.lr.ph.i125.prol, %.lr.ph.i125.preheader448
  %.lcssa452.unr = phi ptr [ poison, %.lr.ph.i125.preheader448 ], [ %i.ct, %.lr.ph.i125.prol ]
  %.033.i.unr = phi ptr [ %.033.i.ph, %.lr.ph.i125.preheader448 ], [ %i.ct, %.lr.ph.i125.prol ]
  %.02032.i.unr = phi ptr [ %.02032.i.ph, %.lr.ph.i125.preheader448 ], [ %i.cs, %.lr.ph.i125.prol ]
  %.02131.i.unr = phi ptr [ %.02131.i.ph, %.lr.ph.i125.preheader448 ], [ %i.cr, %.lr.ph.i125.prol ]
  %i.cw = icmp ult i64 %i.co, 12
  br i1 %i.cw, label %._crit_edge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125
  %.033.i = phi ptr [ %i.do, %.lr.ph.i125 ], [ %.033.i.unr, %.lr.ph.i125.prol.loopexit ] ; 5 uses
  %.02032.i = phi ptr [ %i.dn, %.lr.ph.i125 ], [ %.02032.i.unr, %.lr.ph.i125.prol.loopexit ] ; 7 uses
  %.02131.i = phi ptr [ %i.dm, %.lr.ph.i125 ], [ %.02131.i.unr, %.lr.ph.i125.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.02131.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02032.i, i64 4 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.da = load i32, ptr %.02032.i, align 4, !tbaa !287
  store i32 %i.da, ptr %.033.i, align 4, !tbaa !287
  store i32 0, ptr %.02032.i, align 4, !tbaa !287
  %i.db = load i32, ptr %.02131.i, align 4, !tbaa !287
  store i32 %i.db, ptr %.02032.i, align 4, !tbaa !287
  store i32 0, ptr %.02131.i, align 4, !tbaa !287
  %i.dc = getelementptr inbounds nuw i8, ptr %.02131.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02032.i, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.033.i, i64 8
  %i.df = load i32, ptr %i.cy, align 4, !tbaa !287
  store i32 %i.df, ptr %i.cz, align 4, !tbaa !287
  store i32 0, ptr %i.cy, align 4, !tbaa !287
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !287
  store i32 %i.dg, ptr %i.cy, align 4, !tbaa !287
  store i32 0, ptr %i.cx, align 4, !tbaa !287
  %i.dh = getelementptr inbounds nuw i8, ptr %.02131.i, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.02032.i, i64 12 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.033.i, i64 12
  %i.dk = load i32, ptr %i.dd, align 4, !tbaa !287
  store i32 %i.dk, ptr %i.de, align 4, !tbaa !287
  store i32 0, ptr %i.dd, align 4, !tbaa !287
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !287
  store i32 %i.dl, ptr %i.dd, align 4, !tbaa !287
  store i32 0, ptr %i.dc, align 4, !tbaa !287
  %i.dm = getelementptr inbounds nuw i8, ptr %.02131.i, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02032.i, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %.033.i, i64 16 ; 2 uses
  %i.dp = load i32, ptr %i.di, align 4, !tbaa !287
  store i32 %i.dp, ptr %i.dj, align 4, !tbaa !287
  store i32 0, ptr %i.di, align 4, !tbaa !287
  %i.dq = load i32, ptr %i.dh, align 4, !tbaa !287
  store i32 %i.dq, ptr %i.di, align 4, !tbaa !287
  store i32 0, ptr %i.dh, align 4, !tbaa !287
  %.not28.i.3 = icmp eq ptr %i.dm, %i.bf
  br i1 %.not28.i.3, label %._crit_edge.i, label %.lr.ph.i125, !llvm.loop !3059

._crit_edge.i:                                    ; preds = %.lr.ph.i125.prol.loopexit, %.lr.ph.i125, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %7, %.preheader.i ], [ %i.aa, %middle.block ], [ %.lcssa452.unr, %.lr.ph.i125.prol.loopexit ], [ %i.do, %.lr.ph.i125 ] ; 2 uses
  %.not29.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  %i.dr = load i64, ptr %i.bk, align 8, !tbaa !36
  %i.ds = load i64, ptr %.0106223, align 8, !tbaa !36
  store i64 %i.ds, ptr %i.bk, align 8, !tbaa !36
  store i64 %i.dr, ptr %.0106223, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i
  %i.dt = icmp eq ptr %i.bk, %.0191218
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.du = icmp eq ptr %.0191218, %.0106223
  %spec.select = select i1 %i.du, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit: ; preds = %bb.m, %bb.l, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit
  %.5 = phi ptr [ %.0191218, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %spec.select, %bb.m ], [ %.0106223, %bb.l ]
  %.1.i = phi ptr [ %7, %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit ], [ %.0.lcssa.i, %bb.m ], [ %.0.lcssa.i, %bb.l ] ; 2 uses
  store ptr %.1.i, ptr %i.b, align 8, !tbaa !305
  br label %bb.x

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

bb.p:                                             ; preds = %.thread281, %bb.n
  %i.dw = phi i1 [ true, %.thread281 ], [ %i.bp, %bb.n ]
  store ptr %8, ptr %9, align 8, !tbaa !1505
  %i.dx = call noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %.0114219, ptr noundef %.0111220, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.bf, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dead_on_return %9)
  br label %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit

_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit: ; preds = %bb.o, %bb.p
  %i.dy = phi i1 [ %i.bp, %bb.o ], [ %i.dw, %bb.p ]
  %i.dz = phi i1 [ true, %bb.o ], [ false, %bb.p ]
  %i.ea = phi ptr [ %i.dv, %bb.o ], [ %i.dx, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !305 ; 4 uses
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !305 ; 4 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec                ; 2 uses
  br i1 %i.ed, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  store ptr %7, ptr %i.a, align 8, !tbaa !305
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !305 ; 10 uses
  %i.ef = ptrtoint ptr %i.bf to i64
  %i.eg = ptrtoint ptr %i.ee to i64               ; 3 uses
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = ashr exact i64 %i.eh, 2
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.ej ; 7 uses
  %.not.i126 = icmp eq ptr %i.ee, %i.ek
  br i1 %.not.i126, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %.preheader.i127

.preheader.i127:                                  ; preds = %bb.q
  %.not2830.i128 = icmp eq ptr %i.ee, %i.bf
  br i1 %.not2830.i128, label %._crit_edge.i134, label %.lr.ph.i129.preheader

.lr.ph.i129.preheader:                            ; preds = %.preheader.i127
  %i.el = sub i64 %i.af, %i.eg                    ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check357 = icmp ult i64 %i.el, 60
  br i1 %min.iters.check357, label %.lr.ph.i129.preheader450, label %vector.memcheck338

vector.memcheck338:                               ; preds = %.lr.ph.i129.preheader
  %i.eo = sub i64 %i.ah, %i.eg
  %i.ep = and i64 %i.eo, -4                       ; 3 uses
  %scevgep340 = getelementptr i8, ptr %scevgep339, i64 %i.ep ; 2 uses
  %i.eq = shl i64 %.022.lcssa.i, 2
  %i.er = add i64 %i.eq, 4
  %i.es = mul i64 %2, %i.er
  %i.et = add i64 %i.es, %i.ep
  %i.eu = sub i64 %i.et, %i.eh
  %scevgep342 = getelementptr i8, ptr %scevgep341, i64 %i.eu ; 2 uses
  %scevgep343 = getelementptr i8, ptr %i.ee, i64 4
  %scevgep344 = getelementptr i8, ptr %scevgep343, i64 %i.ep ; 2 uses
  %bound0345 = icmp ult ptr %7, %scevgep342
  %bound1346 = icmp ult ptr %i.ek, %scevgep340
  %found.conflict347 = and i1 %bound0345, %bound1346
  %bound0348 = icmp ult ptr %7, %scevgep344
  %bound1349 = icmp ult ptr %i.ee, %scevgep340
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %found.conflict347, %found.conflict350
  %bound0352 = icmp ult ptr %i.ek, %scevgep344
  %bound1353 = icmp ult ptr %i.ee, %scevgep342
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %conflict.rdx351, %found.conflict354
  br i1 %conflict.rdx355, label %.lr.ph.i129.preheader450, label %vector.ph358

vector.ph358:                                     ; preds = %vector.memcheck338
  %n.vec359 = and i64 %i.en, 9223372036854775804  ; 3 uses
  %i.ev = shl i64 %n.vec359, 2                    ; 3 uses
  %i.ew = getelementptr i8, ptr %7, i64 %i.ev     ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ek, i64 %i.ev
  %i.ey = getelementptr i8, ptr %i.ee, i64 %i.ev
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph358
  %index361 = phi i64 [ 0, %vector.ph358 ], [ %index.next367, %vector.body360 ] ; 2 uses
  %i.ez = shl i64 %index361, 2                    ; 3 uses
  %next.gep362 = getelementptr i8, ptr %7, i64 %i.ez
  %next.gep363 = getelementptr i8, ptr %i.ek, i64 %i.ez ; 3 uses
  %next.gep364 = getelementptr i8, ptr %i.ee, i64 %i.ez ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !3060, !noalias !3063
  store <4 x i32> %wide.load365, ptr %next.gep362, align 4, !tbaa !287, !alias.scope !3065, !noalias !3067
  store <4 x i32> zeroinitializer, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !3060, !noalias !3063
  %wide.load366 = load <4 x i32>, ptr %next.gep364, align 4, !tbaa !287, !alias.scope !3063
  store <4 x i32> %wide.load366, ptr %next.gep363, align 4, !tbaa !287, !alias.scope !3060, !noalias !3063
  store <4 x i32> zeroinitializer, ptr %next.gep364, align 4, !tbaa !287, !alias.scope !3063
  %index.next367 = add nuw i64 %index361, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next367, %n.vec359
  br i1 %i.fa, label %middle.block368, label %vector.body360, !llvm.loop !3068

middle.block368:                                  ; preds = %vector.body360
  %cmp.n369 = icmp eq i64 %i.en, %n.vec359
  br i1 %cmp.n369, label %._crit_edge.i134, label %.lr.ph.i129.preheader450

.lr.ph.i129.preheader450:                         ; preds = %vector.memcheck338, %.lr.ph.i129.preheader, %middle.block368
  %.033.i130.ph = phi ptr [ %7, %vector.memcheck338 ], [ %7, %.lr.ph.i129.preheader ], [ %i.ew, %middle.block368 ] ; 2 uses
  %.02032.i131.ph = phi ptr [ %i.ek, %vector.memcheck338 ], [ %i.ek, %.lr.ph.i129.preheader ], [ %i.ex, %middle.block368 ] ; 2 uses
  %.02131.i132.ph = phi ptr [ %i.ee, %vector.memcheck338 ], [ %i.ee, %.lr.ph.i129.preheader ], [ %i.ey, %middle.block368 ] ; 3 uses
  %.02131.i132.ph453 = ptrtoaddr ptr %.02131.i132.ph to i64
  %i.fb = sub i64 %i.af, %.02131.i132.ph453       ; 2 uses
  %i.fc = lshr i64 %i.fb, 2
  %i.fd = add nuw nsw i64 %i.fc, 1
  %xtraiter = and i64 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol

.lr.ph.i129.prol:                                 ; preds = %.lr.ph.i129.preheader450, %.lr.ph.i129.prol
  %.033.i130.prol = phi ptr [ %i.fg, %.lr.ph.i129.prol ], [ %.033.i130.ph, %.lr.ph.i129.preheader450 ] ; 2 uses
  %.02032.i131.prol = phi ptr [ %i.ff, %.lr.ph.i129.prol ], [ %.02032.i131.ph, %.lr.ph.i129.preheader450 ] ; 4 uses
  %.02131.i132.prol = phi ptr [ %i.fe, %.lr.ph.i129.prol ], [ %.02131.i132.ph, %.lr.ph.i129.preheader450 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i129.prol ], [ 0, %.lr.ph.i129.preheader450 ]
  %i.fe = getelementptr inbounds nuw i8, ptr %.02131.i132.prol, i64 4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02032.i131.prol, i64 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.033.i130.prol, i64 4 ; 3 uses
  %i.fh = load i32, ptr %.02032.i131.prol, align 4, !tbaa !287
  store i32 %i.fh, ptr %.033.i130.prol, align 4, !tbaa !287
  store i32 0, ptr %.02032.i131.prol, align 4, !tbaa !287
  %i.fi = load i32, ptr %.02131.i132.prol, align 4, !tbaa !287
  store i32 %i.fi, ptr %.02032.i131.prol, align 4, !tbaa !287
  store i32 0, ptr %.02131.i132.prol, align 4, !tbaa !287
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i129.prol.loopexit, label %.lr.ph.i129.prol, !llvm.loop !3069

.lr.ph.i129.prol.loopexit:                        ; preds = %.lr.ph.i129.prol, %.lr.ph.i129.preheader450
  %.lcssa451.unr = phi ptr [ poison, %.lr.ph.i129.preheader450 ], [ %i.fg, %.lr.ph.i129.prol ]
  %.033.i130.unr = phi ptr [ %.033.i130.ph, %.lr.ph.i129.preheader450 ], [ %i.fg, %.lr.ph.i129.prol ]
  %.02032.i131.unr = phi ptr [ %.02032.i131.ph, %.lr.ph.i129.preheader450 ], [ %i.ff, %.lr.ph.i129.prol ]
  %.02131.i132.unr = phi ptr [ %.02131.i132.ph, %.lr.ph.i129.preheader450 ], [ %i.fe, %.lr.ph.i129.prol ]
  %i.fj = icmp ult i64 %i.fb, 12
  br i1 %i.fj, label %._crit_edge.i134, label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129
  %.033.i130 = phi ptr [ %i.gb, %.lr.ph.i129 ], [ %.033.i130.unr, %.lr.ph.i129.prol.loopexit ] ; 5 uses
  %.02032.i131 = phi ptr [ %i.ga, %.lr.ph.i129 ], [ %.02032.i131.unr, %.lr.ph.i129.prol.loopexit ] ; 7 uses
  %.02131.i132 = phi ptr [ %i.fz, %.lr.ph.i129 ], [ %.02131.i132.unr, %.lr.ph.i129.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 4 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.033.i130, i64 4
  %i.fn = load i32, ptr %.02032.i131, align 4, !tbaa !287
  store i32 %i.fn, ptr %.033.i130, align 4, !tbaa !287
  store i32 0, ptr %.02032.i131, align 4, !tbaa !287
  %i.fo = load i32, ptr %.02131.i132, align 4, !tbaa !287
  store i32 %i.fo, ptr %.02032.i131, align 4, !tbaa !287
  store i32 0, ptr %.02131.i132, align 4, !tbaa !287
  %i.fp = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 8 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.033.i130, i64 8
  %i.fs = load i32, ptr %i.fl, align 4, !tbaa !287
  store i32 %i.fs, ptr %i.fm, align 4, !tbaa !287
  store i32 0, ptr %i.fl, align 4, !tbaa !287
  %i.ft = load i32, ptr %i.fk, align 4, !tbaa !287
  store i32 %i.ft, ptr %i.fl, align 4, !tbaa !287
  store i32 0, ptr %i.fk, align 4, !tbaa !287
  %i.fu = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 12 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 12 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.033.i130, i64 12
  %i.fx = load i32, ptr %i.fq, align 4, !tbaa !287
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !287
  store i32 0, ptr %i.fq, align 4, !tbaa !287
  %i.fy = load i32, ptr %i.fp, align 4, !tbaa !287
  store i32 %i.fy, ptr %i.fq, align 4, !tbaa !287
  store i32 0, ptr %i.fp, align 4, !tbaa !287
  %i.fz = getelementptr inbounds nuw i8, ptr %.02131.i132, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.02032.i131, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %.033.i130, i64 16 ; 2 uses
  %i.gc = load i32, ptr %i.fv, align 4, !tbaa !287
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !287
  store i32 0, ptr %i.fv, align 4, !tbaa !287
  %i.gd = load i32, ptr %i.fu, align 4, !tbaa !287
  store i32 %i.gd, ptr %i.fv, align 4, !tbaa !287
  store i32 0, ptr %i.fu, align 4, !tbaa !287
  %.not28.i133.3 = icmp eq ptr %i.fz, %i.bf
  br i1 %.not28.i133.3, label %._crit_edge.i134, label %.lr.ph.i129, !llvm.loop !3070

._crit_edge.i134:                                 ; preds = %.lr.ph.i129.prol.loopexit, %.lr.ph.i129, %middle.block368, %.preheader.i127
  %.0.lcssa.i135 = phi ptr [ %7, %.preheader.i127 ], [ %i.ew, %middle.block368 ], [ %.lcssa451.unr, %.lr.ph.i129.prol.loopexit ], [ %i.gb, %.lr.ph.i129 ] ; 2 uses
  %.not29.i136 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not29.i136, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i134
  %i.ge = load i64, ptr %i.bk, align 8, !tbaa !36
  %i.gf = load i64, ptr %.0106223, align 8, !tbaa !36
  store i64 %i.gf, ptr %i.bk, align 8, !tbaa !36
  store i64 %i.ge, ptr %.0106223, align 8, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i134
  %i.gg = icmp eq ptr %i.bk, %.0191218
  br i1 %i.gg, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gh = icmp eq ptr %.0191218, %.0106223
  %spec.select205 = select i1 %i.gh, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140

_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140: ; preds = %bb.t, %bb.s, %bb.q
  %.6 = phi ptr [ %.0191218, %bb.q ], [ %spec.select205, %bb.t ], [ %.0106223, %bb.s ]
  %.1.i137 = phi ptr [ %7, %bb.q ], [ %.0.lcssa.i135, %bb.t ], [ %.0.lcssa.i135, %bb.s ] ; 2 uses
  store ptr %.1.i137, ptr %i.b, align 8, !tbaa !305
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

bb.u:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_saveIPNS_9container4test24movable_and_copyable_intES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET_SG_SG_RSG_SG_SG_RT0_SJ_T1_T2_b.exit
  %.not.i141 = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not.i141, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gi = load i64, ptr %i.bk, align 8, !tbaa !36
  %i.gj = load i64, ptr %.0106223, align 8, !tbaa !36
  store i64 %i.gj, ptr %i.bk, align 8, !tbaa !36
  store i64 %i.gi, ptr %.0106223, align 8, !tbaa !36
  %i.gk = icmp eq ptr %i.bk, %.0191218
  br i1 %i.gk, label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gl = icmp eq ptr %.0191218, %.0106223
  %spec.select206 = select i1 %i.gl, ptr %i.bk, ptr %.0191218
  br label %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit

_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit: ; preds = %bb.w, %bb.u, %bb.v, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140
  %i.gm = phi ptr [ %.1.i137, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.ec, %bb.u ], [ %i.ec, %bb.w ], [ %i.ec, %bb.v ]
  %i.gn = phi ptr [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %i.eb, %bb.u ], [ %i.eb, %bb.w ], [ %i.eb, %bb.v ]
  %.1192 = phi ptr [ %.6, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit140 ], [ %.0191218, %bb.u ], [ %spec.select206, %bb.w ], [ %.0106223, %bb.v ]
  %i.go = xor i1 %i.dz, %i.ed
  %i.gp = zext i1 %i.go to i8
  br label %bb.x

bb.x:                                             ; preds = %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit
  %i.gq = phi ptr [ %i.gm, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.1.i, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.gr = phi ptr [ %i.gn, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %7, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %i.gs = phi i1 [ %i.dy, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.bs, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ]
  %.2193 = phi ptr [ %.1192, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.5, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1115 = phi ptr [ %i.ea, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %.1109 = phi i8 [ %i.gp, %_ZN5boost7movelib15detail_adaptive10update_keyIPmEEvT_S4_RS4_.exit ], [ %.0108222, %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPNS_9container4test24movable_and_copyable_intES7_NS0_7move_opEEET1_T_SA_RSA_T0_SC_SC_S9_T2_.exit ] ; 2 uses
  %not. = xor i1 %i.gs, true
  %i.gt = sext i1 %not. to i64
  %.1 = add i64 %.0227, %i.gt
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0111220, i64 %2 ; 2 uses
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !305
  %i.gv = getelementptr inbounds nuw i8, ptr %.0106223, i64 8
  %i.gw = icmp ne i64 %.0104226, 0
  %.neg = sext i1 %i.gw to i64
  %i.gx = add i64 %.0104226, %.neg
  %i.gy = icmp ne i64 %i.bb, 0
  %.neg122 = sext i1 %i.gy to i64
  %i.gz = add i64 %.sroa.speculated180, %.neg122
  %i.ha = add i64 %.0195217, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ha, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.b, !llvm.loop !3071

.thread:                                          ; preds = %bb.x, %bb.g, %bb.f
  %i.hb = phi ptr [ %i.gq, %bb.x ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ] ; 3 uses
  %i.hc = phi ptr [ %i.gr, %bb.x ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 8 uses
  %.0195.lcssa.ph = phi i64 [ 0, %bb.x ], [ %.0195217, %bb.g ], [ %.0195217, %bb.f ] ; 3 uses
  %.0191.lcssa.ph = phi ptr [ %.2193, %bb.x ], [ %.0191218, %bb.g ], [ %.0191218, %bb.f ] ; 3 uses
  %.0114.lcssa.ph = phi ptr [ %.1115, %bb.x ], [ %.0114219, %bb.g ], [ %.0114219, %bb.f ] ; 7 uses
  %.0111.lcssa.ph = phi ptr [ %i.gu, %bb.x ], [ %.0111220, %bb.g ], [ %.0111220, %bb.f ] ; 4 uses
  %.0108.lcssa.ph = phi i8 [ %.1109, %bb.x ], [ 1, %bb.g ], [ %.0108222, %bb.f ]
  %i.hd = ptrtoaddr ptr %i.hb to i64              ; 2 uses
  %i.he = ptrtoaddr ptr %i.hc to i64              ; 2 uses
  %i.hf = trunc nuw i8 %.0108.lcssa.ph to i1
  %i.hg = select i1 %i.hf, ptr %.0114.lcssa.ph, ptr %.0111.lcssa.ph ; 3 uses
  %.not8.i.i144 = icmp eq ptr %i.hc, %i.hb
  br i1 %.not8.i.i144, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit150, label %.lr.ph.i.i145.preheader

.lr.ph.i.i145.preheader:                          ; preds = %.thread
  %i.hh = add i64 %i.hd, -4
  %i.hi = sub i64 %i.hh, %i.he                    ; 2 uses
  %i.hj = lshr i64 %i.hi, 2
  %i.hk = add nuw nsw i64 %i.hj, 1                ; 2 uses
  %min.iters.check380 = icmp ult i64 %i.hi, 76
  br i1 %min.iters.check380, label %.lr.ph.i.i145.preheader447, label %vector.memcheck373

vector.memcheck373:                               ; preds = %.lr.ph.i.i145.preheader
  %i.hl = add i64 %i.hd, -4
  %i.hm = sub i64 %i.hl, %i.he
  %i.hn = and i64 %i.hm, -4
  %i.ho = add i64 %i.hn, 4                        ; 2 uses
  %scevgep374 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.ho
  %scevgep375 = getelementptr i8, ptr %i.hc, i64 %i.ho
  %bound0376 = icmp ult ptr %.0114.lcssa.ph, %scevgep375
  %bound1377 = icmp ult ptr %i.hc, %scevgep374
  %found.conflict378 = and i1 %bound0376, %bound1377
  br i1 %found.conflict378, label %.lr.ph.i.i145.preheader447, label %vector.ph381

vector.ph381:                                     ; preds = %vector.memcheck373
  %n.vec382 = and i64 %i.hk, 9223372036854775800  ; 3 uses
  %i.hp = shl i64 %n.vec382, 2                    ; 2 uses
  %i.hq = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hc, i64 %i.hp
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next389, %vector.body383 ] ; 2 uses
  %i.hs = shl i64 %index384, 2                    ; 2 uses
  %next.gep385 = getelementptr i8, ptr %.0114.lcssa.ph, i64 %i.hs ; 2 uses
  %next.gep386 = getelementptr i8, ptr %i.hc, i64 %i.hs ; 3 uses
  %i.ht = getelementptr i8, ptr %next.gep386, i64 16 ; 2 uses
  %wide.load387 = load <4 x i32>, ptr %next.gep386, align 4, !tbaa !287, !alias.scope !3072
end_hunk_6
