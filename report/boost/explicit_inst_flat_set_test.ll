inline.NumInlined: 23167
inline.NumDeleted: 2555
loop-unroll.NumRuntimeUnrolled: 282
loop-unroll.NumUnrolled: 293
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_:bb.a
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

bb.ac:                                            ; preds = %bb.s
  %.idx104 = shl nuw nsw i64 %4, 2                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %.idx104 ; 2 uses
  %gepdiff105 = sub nsw i64 %.idx104, %.idx
  %i.et = ashr exact i64 %gepdiff105, 2
  %.sroa.speculated.i76 = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.et)
  %.not.i77 = icmp ult i64 %i.co, %.sroa.speculated.i76
  br i1 %.not.i77, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opENS0_13adaptive_xbufIS4_S5_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef %i.es, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !326 ; 4 uses
  %.not.i.i78 = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i78, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit, label %.preheader.i.i.i79

.preheader.i.i.i79:                               ; preds = %bb.ad
  %i.ev = load ptr, ptr %5, align 8, !tbaa !328   ; 5 uses
  %xtraiter144 = and i64 %i.eu, 3                 ; 3 uses
  %i.ew = icmp ult i64 %i.eu, 4
  br i1 %i.ew, label %.epil.preheader143, label %.preheader.i.i.i79.new

.preheader.i.i.i79.new:                           ; preds = %.preheader.i.i.i79
  %unroll_iter149 = and i64 %i.eu, -4
  br label %bb.af

.unr-lcssa142:                                    ; preds = %bb.af
  %lcmp.mod146.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod146.not, label %.epilog-lcssa147, label %.epil.preheader143

.epil.preheader143:                               ; preds = %.unr-lcssa142, %.preheader.i.i.i79
  %.07.i.i.i80.epil.init = phi i64 [ 0, %.preheader.i.i.i79 ], [ %i.fq, %.unr-lcssa142 ]
  %lcmp.mod148 = icmp ne i64 %xtraiter144, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader143
  %.07.i.i.i80.epil = phi i64 [ %.07.i.i.i80.epil.init, %.epil.preheader143 ], [ %i.fa, %bb.ae ] ; 2 uses
  %epil.iter145 = phi i64 [ 0, %.epil.preheader143 ], [ %epil.iter145.next, %bb.ae ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80.epil
  store i32 -2147483648, ptr %i.ex, align 4, !tbaa !287
  %i.ey = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ez = add i32 %i.ey, -1
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fa = add nuw i64 %.07.i.i.i80.epil, 1
  %epil.iter145.next = add i64 %epil.iter145, 1   ; 2 uses
  %epil.iter145.cmp.not = icmp eq i64 %epil.iter145.next, %xtraiter144
  br i1 %epil.iter145.cmp.not, label %.epilog-lcssa147, label %bb.ae, !llvm.loop !1511

.epilog-lcssa147:                                 ; preds = %bb.ae, %.unr-lcssa142
  store i64 0, ptr %i.a, align 8, !tbaa !326
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

bb.af:                                            ; preds = %bb.af, %.preheader.i.i.i79.new
  %.07.i.i.i80 = phi i64 [ 0, %.preheader.i.i.i79.new ], [ %i.fq, %bb.af ] ; 5 uses
  %niter150 = phi i64 [ 0, %.preheader.i.i.i79.new ], [ %niter150.next.3, %bb.af ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  store i32 -2147483648, ptr %i.fb, align 4, !tbaa !287
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fd = add i32 %i.fc, -1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 -2147483648, ptr %i.ff, align 4, !tbaa !287
  %i.fg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fh = add i32 %i.fg, -1
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 -2147483648, ptr %i.fj, align 4, !tbaa !287
  %i.fk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fl = add i32 %i.fk, -1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.07.i.i.i80
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 -2147483648, ptr %i.fn, align 4, !tbaa !287
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fp = add i32 %i.fo, -1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fq = add nuw i64 %.07.i.i.i80, 4             ; 2 uses
  %niter150.next.3 = add nuw i64 %niter150, 4     ; 2 uses
  %niter150.ncmp.3 = icmp eq i64 %niter150.next.3, %unroll_iter149
  br i1 %niter150.ncmp.3, label %.unr-lcssa142, label %bb.af, !llvm.loop !329

bb.ag:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %5, align 8, !tbaa !328
  tail call void @_ZN5boost7movelib21merge_adaptive_ONlogNIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEES5_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef %1, ptr noundef nonnull %i.ci, ptr noundef %i.es, ptr noundef %i.fr, i64 noundef %i.co)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.ag, %.epilog-lcssa147, %bb.ad, %bb.ab, %.epilog-lcssa138, %bb.y, %bb.n, %.epilog-lcssa165, %bb.k, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 4 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %0, align 4, !tbaa !287
  store i32 %i.f, ptr %2, align 4, !tbaa !287
  store i32 0, ptr %0, align 4, !tbaa !287
  %i.g = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2251.i = icmp eq ptr %i.i, %1
  br i1 %.not2251.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %bb.c, %bb.g
  %i.j = phi ptr [ %i.v, %bb.g ], [ %i.i, %bb.c ] ; 6 uses
  %.04352.i = phi ptr [ %storemerge53.i, %bb.g ], [ %2, %bb.c ] ; 5 uses
  %storemerge53.i = getelementptr inbounds nuw i8, ptr %.04352.i, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !287  ; 2 uses
  %i.l = load i32, ptr %.04352.i, align 4, !tbaa !287 ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph54.i
  store i32 %i.l, ptr %storemerge53.i, align 4, !tbaa !287
  store i32 0, ptr %.04352.i, align 4, !tbaa !287
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.not2445.i = icmp eq ptr %.04352.i, %2
  br i1 %.not2445.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %storemerge2347.i = phi ptr [ %storemerge23.i, %bb.e ], [ %.04352.i, %bb.d ] ; 3 uses
  %storemerge23.i = getelementptr i8, ptr %storemerge2347.i, i64 -4 ; 4 uses
  %i.p = load i32, ptr %i.j, align 4, !tbaa !287
  %i.q = load i32, ptr %storemerge23.i, align 4, !tbaa !287 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.q, ptr %storemerge2347.i, align 4, !tbaa !287
  store i32 0, ptr %storemerge23.i, align 4, !tbaa !287
  %.not24.i = icmp eq ptr %storemerge23.i, %2
  br i1 %.not24.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1512

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %storemerge23.lcssa.i = phi ptr [ %2, %bb.d ], [ %storemerge2347.i, %.lr.ph.i ], [ %2, %bb.e ]
  %i.s = load i32, ptr %i.j, align 4, !tbaa !287
  store i32 %i.s, ptr %storemerge23.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %i.j, align 4, !tbaa !287
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph54.i
  store i32 %i.k, ptr %storemerge53.i, align 4, !tbaa !287
  store i32 0, ptr %i.j, align 4, !tbaa !287
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not22.i = icmp eq ptr %i.v, %1
  br i1 %.not22.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph54.i, !llvm.loop !1513

bb.h:                                             ; preds = %bb.a
  %i.w = lshr i64 %i.d, 1                         ; 9 uses
  %.idx = shl nuw nsw i64 %i.w, 2                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 17 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.x, ptr noundef %1, ptr noundef %i.y)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.x, ptr noundef %i.x)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %._crit_edge.i, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.i, %bb.m
  %indvar137 = phi i64 [ %indvar.next138, %bb.m ], [ 0, %bb.i ] ; 2 uses
  %.058.i = phi ptr [ %.2.i, %bb.m ], [ %i.x, %bb.i ] ; 7 uses
  %.02457.i = phi ptr [ %.125.i, %bb.m ], [ %i.y, %bb.i ] ; 5 uses
  %.04756.i = phi ptr [ %i.ce, %bb.m ], [ %2, %bb.i ] ; 6 uses
  %i.ab = icmp eq ptr %.02457.i, %i.aa
  br i1 %i.ab, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %.lr.ph.i32
  %.not60.i = icmp eq ptr %.04756.i, %i.y
  br i1 %.not60.i, label %._crit_edge64.i, label %.lr.ph63.i.preheader

.lr.ph63.i.preheader:                             ; preds = %.preheader.i
  %i.ac = add nsw i64 %.idx, -4
  %3 = shl i64 %indvar137, 2
  %4 = sub i64 %i.ac, %3                          ; 2 uses
  %5 = lshr exact i64 %4, 2
  %i.ad = add nuw nsw i64 %5, 1
  %xtraiter140 = and i64 %i.ad, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol

.lr.ph63.i.prol:                                  ; preds = %.lr.ph63.i.preheader, %.lr.ph63.i.prol
  %.162.i.prol = phi ptr [ %i.ai, %.lr.ph63.i.prol ], [ %.058.i, %.lr.ph63.i.preheader ] ; 3 uses
  %.14861.i.prol = phi ptr [ %i.ah, %.lr.ph63.i.prol ], [ %.04756.i, %.lr.ph63.i.preheader ] ; 2 uses
  %prol.iter142 = phi i64 [ %prol.iter142.next, %.lr.ph63.i.prol ], [ 0, %.lr.ph63.i.preheader ]
  %i.ae = load i32, ptr %.162.i.prol, align 4, !tbaa !287
  store i32 %i.ae, ptr %.14861.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.162.i.prol, align 4, !tbaa !287
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ah = getelementptr inbounds nuw i8, ptr %.14861.i.prol, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.162.i.prol, i64 4 ; 3 uses
  %prol.iter142.next = add i64 %prol.iter142, 1   ; 2 uses
  %prol.iter142.cmp.not = icmp eq i64 %prol.iter142.next, %xtraiter140
  br i1 %prol.iter142.cmp.not, label %.lr.ph63.i.prol.loopexit, label %.lr.ph63.i.prol, !llvm.loop !1514

.lr.ph63.i.prol.loopexit:                         ; preds = %.lr.ph63.i.prol, %.lr.ph63.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph63.i.preheader ], [ %i.ai, %.lr.ph63.i.prol ]
  %.162.i.unr = phi ptr [ %.058.i, %.lr.ph63.i.preheader ], [ %i.ai, %.lr.ph63.i.prol ]
  %.14861.i.unr = phi ptr [ %.04756.i, %.lr.ph63.i.preheader ], [ %i.ah, %.lr.ph63.i.prol ]
  %i.aj = icmp ult i64 %4, 12
  br i1 %i.aj, label %._crit_edge64.i, label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i
  %.162.i = phi ptr [ %i.ba, %.lr.ph63.i ], [ %.162.i.unr, %.lr.ph63.i.prol.loopexit ] ; 6 uses
  %.14861.i = phi ptr [ %i.az, %.lr.ph63.i ], [ %.14861.i.unr, %.lr.ph63.i.prol.loopexit ] ; 5 uses
  %i.ak = load i32, ptr %.162.i, align 4, !tbaa !287
  store i32 %i.ak, ptr %.14861.i, align 4, !tbaa !287
  store i32 0, ptr %.162.i, align 4, !tbaa !287
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289 ; 4 uses
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.an = getelementptr inbounds nuw i8, ptr %.14861.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.162.i, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !287
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !287
  store i32 0, ptr %i.ao, align 4, !tbaa !287
  %i.aq = add i32 %i.al, 2
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ar = getelementptr inbounds nuw i8, ptr %.14861.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.162.i, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !287
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !287
  store i32 0, ptr %i.as, align 4, !tbaa !287
  %i.au = add i32 %i.al, 3
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.av = getelementptr inbounds nuw i8, ptr %.14861.i, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.162.i, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !287
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !287
  store i32 0, ptr %i.aw, align 4, !tbaa !287
  %i.ay = add i32 %i.al, 4
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.az = getelementptr inbounds nuw i8, ptr %.14861.i, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.162.i, i64 16 ; 2 uses
  %.not.i33.3 = icmp eq ptr %i.az, %i.y
  br i1 %.not.i33.3, label %._crit_edge64.i, label %.lr.ph63.i, !llvm.loop !1515

._crit_edge64.i:                                  ; preds = %.lr.ph63.i.prol.loopexit, %.lr.ph63.i, %.preheader.i
  %.1.lcssa.i = phi ptr [ %.058.i, %.preheader.i ], [ %.lcssa.unr, %.lr.ph63.i.prol.loopexit ], [ %i.ba, %.lr.ph63.i ] ; 8 uses
  %.1.lcssa.i97 = ptrtoaddr ptr %.1.lcssa.i to i64 ; 2 uses
  %.not8.i.i = icmp eq ptr %.1.lcssa.i, %i.z
  br i1 %.not8.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %._crit_edge64.i
  %i.bb = shl i64 %i.w, 3
  %i.bc = add i64 %i.bb, %i.b
  %i.bd = add i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %.1.lcssa.i97            ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 108
  br i1 %min.iters.check, label %.lr.ph.i28.i.preheader133, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i28.i.preheader
  %i.bh = shl i64 %i.w, 3
  %i.bi = add i64 %i.bh, %i.b
  %i.bj = add i64 %i.bi, -4
  %i.bk = sub i64 %i.bj, %.1.lcssa.i97
  %i.bl = and i64 %i.bk, -4                       ; 2 uses
  %i.bm = getelementptr i8, ptr %2, i64 %.idx
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bn, i64 4
  %i.bo = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bl
  %scevgep98 = getelementptr i8, ptr %i.bo, i64 4
  %bound0 = icmp ult ptr %i.y, %scevgep98
  %bound1 = icmp ult ptr %.1.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i28.i.preheader133, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bp = shl i64 %n.vec, 2                       ; 2 uses
  %i.bq = getelementptr i8, ptr %i.y, i64 %i.bp
  %i.br = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.bs ; 2 uses
  %next.gep99 = getelementptr i8, ptr %.1.lcssa.i, i64 %i.bs ; 3 uses
  %i.bt = getelementptr i8, ptr %next.gep99, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !287, !alias.scope !1516
  %wide.load100 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !287, !alias.scope !1516
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1519, !noalias !1516
  store <4 x i32> %wide.load100, ptr %i.bu, align 4, !tbaa !287, !alias.scope !1519, !noalias !1516
  store <4 x i32> zeroinitializer, ptr %next.gep99, align 4, !tbaa !287, !alias.scope !1516
  store <4 x i32> zeroinitializer, ptr %i.bt, align 4, !tbaa !287, !alias.scope !1516
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !1521

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i.preheader133

.lr.ph.i28.i.preheader133:                        ; preds = %vector.memcheck, %.lr.ph.i28.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i28.i.preheader ], [ %i.bq, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.1.lcssa.i, %vector.memcheck ], [ %.1.lcssa.i, %.lr.ph.i28.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i.preheader133, %.lr.ph.i28.i
  %.010.i.i = phi ptr [ %i.by, %.lr.ph.i28.i ], [ %.010.i.i.ph, %.lr.ph.i28.i.preheader133 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bx, %.lr.ph.i28.i ], [ %.079.i.i.ph, %.lr.ph.i28.i.preheader133 ] ; 3 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.bx = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i29.i = icmp eq ptr %i.bx, %i.z
  br i1 %.not.i29.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i28.i, !llvm.loop !1522

bb.j:                                             ; preds = %.lr.ph.i32
  %i.bz = load i32, ptr %.02457.i, align 4, !tbaa !287 ; 2 uses
  %i.ca = load i32, ptr %.058.i, align 4, !tbaa !287 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bz, ptr %.04756.i, align 4, !tbaa !287
  store i32 0, ptr %.02457.i, align 4, !tbaa !287
  %i.cc = getelementptr inbounds nuw i8, ptr %.02457.i, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i32 %i.ca, ptr %.04756.i, align 4, !tbaa !287
  store i32 0, ptr %.058.i, align 4, !tbaa !287
  %i.cd = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.125.i = phi ptr [ %i.cc, %bb.k ], [ %.02457.i, %bb.l ] ; 2 uses
  %.2.i = phi ptr [ %.058.i, %bb.k ], [ %i.cd, %bb.l ] ; 3 uses
  %.sink.in.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %.sink.i = add i32 %.sink.in.i, 1
  store i32 %.sink.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.ce = getelementptr inbounds nuw i8, ptr %.04756.i, i64 4 ; 2 uses
  %i.cf = icmp ne ptr %.2.i, %i.z
  %i.cg = icmp ne ptr %i.ce, %i.y
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  %indvar.next138 = add i64 %indvar137, 1
  br i1 %i.ch, label %.lr.ph.i32, label %._crit_edge.i, !llvm.loop !1523

._crit_edge.i:                                    ; preds = %bb.m, %bb.i
  %.024.lcssa.i = phi ptr [ %i.y, %bb.i ], [ %.125.i, %bb.m ]
  %.0.lcssa.i = phi ptr [ %i.x, %bb.i ], [ %.2.i, %bb.m ] ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.0.lcssa.i, %i.z
  br i1 %.not23.i.i.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i, %bb.q
  %indvar = phi i64 [ %indvar.next, %bb.q ], [ 0, %._crit_edge.i ] ; 2 uses
  %.026.i.i.i = phi ptr [ %.1.i.i.i, %bb.q ], [ %.0.lcssa.i, %._crit_edge.i ] ; 11 uses
  %.01625.i.i.i = phi ptr [ %.117.i.i.i, %bb.q ], [ %.024.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.01824.i.i.i = phi ptr [ %i.dm, %bb.q ], [ %i.y, %._crit_edge.i ] ; 8 uses
  %i.ci = icmp eq ptr %.01625.i.i.i, %i.aa
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.preheader, label %bb.n

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i
  %.026.i.i.i104.le = ptrtoaddr ptr %.026.i.i.i to i64 ; 2 uses
  %i.cj = shl i64 %i.w, 3
  %i.ck = add i64 %i.cj, %i.b
  %i.cl = add i64 %i.ck, -4
  %i.cm = sub i64 %i.cl, %.026.i.i.i104.le        ; 2 uses
  %i.cn = lshr i64 %i.cm, 2
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.cm, 108
  br i1 %min.iters.check112, label %.lr.ph.i.i.i.i.i.preheader126, label %vector.memcheck102

vector.memcheck102:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.cp = shl i64 %indvar, 2
  %i.cq = getelementptr i8, ptr %2, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 %.idx
  %scevgep103 = getelementptr i8, ptr %i.cr, i64 4
  %i.cs = shl i64 %i.w, 3
  %i.ct = add i64 %i.cs, %i.b
  %i.cu = add i64 %i.ct, -4
  %i.cv = sub i64 %i.cu, %.026.i.i.i104.le
  %i.cw = and i64 %i.cv, -4                       ; 2 uses
  %scevgep105 = getelementptr i8, ptr %scevgep103, i64 %i.cw
  %scevgep106 = getelementptr i8, ptr %.026.i.i.i, i64 4
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.cw
  %bound0108 = icmp ult ptr %.01824.i.i.i, %scevgep107
  %bound1109 = icmp ult ptr %.026.i.i.i, %scevgep105
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.lr.ph.i.i.i.i.i.preheader126, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck102
  %n.vec114 = and i64 %i.co, 9223372036854775800  ; 3 uses
  %i.cx = shl i64 %n.vec114, 2                    ; 2 uses
  %i.cy = getelementptr i8, ptr %.01824.i.i.i, i64 %i.cx
  %i.cz = getelementptr i8, ptr %.026.i.i.i, i64 %i.cx
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.da = shl i64 %index116, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %.01824.i.i.i, i64 %i.da ; 2 uses
  %next.gep118 = getelementptr i8, ptr %.026.i.i.i, i64 %i.da ; 3 uses
  %i.db = getelementptr i8, ptr %next.gep118, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.eb ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.184, i64 %i.eb ; 3 uses
  %i.ec = getelementptr i8, ptr %next.gep259, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !1768
  %wide.load260 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !287, !alias.scope !1768
  %i.ed = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1771, !noalias !1768
  store <4 x i32> %wide.load260, ptr %i.ed, align 4, !tbaa !287, !alias.scope !1771, !noalias !1768
  store <4 x i32> zeroinitializer, ptr %next.gep259, align 4, !tbaa !287, !alias.scope !1768
  store <4 x i32> zeroinitializer, ptr %i.ec, align 4, !tbaa !287, !alias.scope !1768
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ee = icmp eq i64 %index.next, %n.vec
  br i1 %i.ee, label %middle.block, label %vector.body, !llvm.loop !1773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dv, %n.vec
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader297

.lr.ph.i.i.preheader297:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.preheader ], [ %i.dz, %middle.block ] ; 2 uses
  %.079.i.i.ph = phi ptr [ %.184, %vector.memcheck ], [ %.184, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block ] ; 3 uses
  %.079.i.i.ph345 = ptrtoaddr ptr %.079.i.i.ph to i64
  %i.ef = sub i64 %i.m, %.079.i.i.ph345           ; 2 uses
  %i.eg = lshr i64 %i.ef, 2
  %i.eh = add nuw nsw i64 %i.eg, 1
  %xtraiter346 = and i64 %i.eh, 7                 ; 2 uses
  %lcmp.mod347.not = icmp eq i64 %xtraiter346, 0
  br i1 %lcmp.mod347.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader297, %.lr.ph.i.i.prol
  %.010.i.i.prol = phi ptr [ %i.ek, %.lr.ph.i.i.prol ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 2 uses
  %.079.i.i.prol = phi ptr [ %i.ej, %.lr.ph.i.i.prol ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ] ; 3 uses
  %prol.iter348 = phi i64 [ %prol.iter348.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader297 ]
  %i.ei = load i32, ptr %.079.i.i.prol, align 4, !tbaa !287
  store i32 %i.ei, ptr %.010.i.i.prol, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.prol, align 4, !tbaa !287
  %i.ej = getelementptr inbounds nuw i8, ptr %.079.i.i.prol, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i.prol, i64 4 ; 3 uses
  %prol.iter348.next = add i64 %prol.iter348, 1   ; 2 uses
  %prol.iter348.cmp.not = icmp eq i64 %prol.iter348.next, %xtraiter346
  br i1 %prol.iter348.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1774

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader297
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph.i.i.preheader297 ], [ %i.ek, %.lr.ph.i.i.prol ]
  %.010.i.i.unr = phi ptr [ %.010.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ek, %.lr.ph.i.i.prol ]
  %.079.i.i.unr = phi ptr [ %.079.i.i.ph, %.lr.ph.i.i.preheader297 ], [ %i.ej, %.lr.ph.i.i.prol ]
  %i.el = icmp ult i64 %i.ef, 28
  br i1 %i.el, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.010.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.079.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %.079.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.em = load i32, ptr %.079.i.i, align 4, !tbaa !287
  store i32 %i.em, ptr %.010.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i, align 4, !tbaa !287
  %i.en = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !287
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !287
  store i32 0, ptr %i.en, align 4, !tbaa !287
  %i.eq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !287
  store i32 %i.es, ptr %i.er, align 4, !tbaa !287
  store i32 0, ptr %i.eq, align 4, !tbaa !287
  %i.et = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 12 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 12
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !287
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !287
  store i32 0, ptr %i.et, align 4, !tbaa !287
  %i.ew = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !287
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !287
  store i32 0, ptr %i.ew, align 4, !tbaa !287
  %i.ez = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 20 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 20
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !287
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !287
  store i32 0, ptr %i.ez, align 4, !tbaa !287
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 24 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 24
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !287
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !287
  store i32 0, ptr %i.fc, align 4, !tbaa !287
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 28 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 28
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !287
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !287
  store i32 0, ptr %i.ff, align 4, !tbaa !287
  %i.fi = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 32 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32 ; 2 uses
  %.not.i.i52.7 = icmp eq ptr %i.fi, %i.ap
  br i1 %.not.i.i52.7, label %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !1775

_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i48, %middle.block291, %middle.block, %bb.w, %bb.v, %bb.t, %bb.s
  %.1 = phi ptr [ %i.ap, %bb.s ], [ %i.ce, %.lr.ph.i48 ], [ %i.fj, %.lr.ph.i.i ], [ %.184, %bb.t ], [ %i.bv, %bb.v ], [ %i.bv, %bb.w ], [ %i.dz, %middle.block ], [ %i.cl, %middle.block291 ], [ %.lcssa342.unr, %.lr.ph.i.i.prol.loopexit ], [ %.lcssa341.unr, %.lr.ph.i49.prol.loopexit ], [ %i.dq, %.lr.ph.i49 ] ; 2 uses
  %.not.i53 = icmp eq ptr %i.ap, %.080
  %brmerge = or i1 %.not.i53, %.not43
  br i1 %brmerge, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  %.idx88 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.fk = getelementptr inbounds nuw i8, ptr %.0129, i64 %.idx88 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !287
  store i32 0, ptr %i.fk, align 4, !tbaa !287
  %i.fm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fo = load i32, ptr %.0129, align 4, !tbaa !287
  store i32 %i.fo, ptr %i.fk, align 4, !tbaa !287
  store i32 %i.fl, ptr %.0129, align 4, !tbaa !287
  %i.fp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.fq = add i32 %i.fp, -1
  store i32 %i.fq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit, %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %.0129, i64 4
  %i.fs = icmp ne i64 %.039127, 0
  %.neg = sext i1 %i.fs to i64
  %i.ft = add i64 %.039127, %.neg
  %i.fu = icmp ne i64 %i.ao, 0
  %.neg44 = sext i1 %i.fu to i64
  %i.fv = add i64 %.sroa.speculated, %.neg44
  %i.fw = add i64 %.082126, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fw, 0
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
  %7 = shl i64 %indvar, 2
  %8 = add i64 %7, %i.j
  %9 = sub i64 %i.t, %8                           ; 2 uses
  %10 = lshr i64 %9, 2
  %i.u = add nuw nsw i64 %10, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %9, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader291, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03962.i, i64 4
  %i.v = add i64 %i.a, -8
  %11 = shl i64 %indvar, 2
  %12 = add i64 %11, %i.j
  %i.w = sub i64 %i.v, %12
  %i.x = and i64 %i.w, -4                         ; 2 uses
  %scevgep234 = getelementptr i8, ptr %scevgep, i64 %i.x
  %i.y = shl i64 %indvar, 2
  %i.z = getelementptr i8, ptr %.0.lcssa.i, i64 %i.y
  %scevgep235 = getelementptr i8, ptr %i.z, i64 8
  %scevgep236 = getelementptr i8, ptr %scevgep235, i64 %i.x
  %bound0 = icmp ult ptr %.03962.i, %scevgep236
  %bound1 = icmp ult ptr %.04166.i, %scevgep234
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader291, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.03962.i, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %.04166.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03962.i, i64 %i.ad ; 2 uses
  %next.gep237 = getelementptr i8, ptr %.04166.i, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep237, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !287, !alias.scope !1777
  %wide.load238 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !287, !alias.scope !1777
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1780, !noalias !1777
  store <4 x i32> %wide.load238, ptr %i.af, align 4, !tbaa !287, !alias.scope !1780, !noalias !1777
  store <4 x i32> zeroinitializer, ptr %next.gep237, align 4, !tbaa !287, !alias.scope !1777
  store <4 x i32> zeroinitializer, ptr %i.ae, align 4, !tbaa !287, !alias.scope !1777
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1782

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i.preheader291

.lr.ph.i.i.i.preheader291:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03962.i, %vector.memcheck ], [ %.03962.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04166.i, %vector.memcheck ], [ %.04166.i, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader291, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader291 ] ; 3 uses
  %i.ah = load i32, ptr %.079.i.i.i, align 4, !tbaa !287
  store i32 %i.ah, ptr %.010.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !287
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1783

bb.g:                                             ; preds = %.lr.ph.i31
  %i.ak = load i32, ptr %.064.i, align 4, !tbaa !287
  %i.al = load i32, ptr %.03962.i, align 4, !tbaa !287
  %i.am = icmp slt i32 %i.ak, %i.al
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.03563.i, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %.064.i, i64 4
  %i.ap = load i32, ptr %.04166.i, align 4, !tbaa !287
  store i32 %i.ap, ptr %.03765.i, align 4, !tbaa !287
  store i32 0, ptr %.04166.i, align 4, !tbaa !287
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.03962.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04166.sink87.i = phi ptr [ %.04166.i, %bb.i ], [ %.064.i, %bb.h ] ; 3 uses
  %.03765.sink.i = phi ptr [ %.03765.i, %bb.i ], [ %.04166.i, %bb.h ]
  %.03962.sink85.i = phi ptr [ %.03962.i, %bb.i ], [ %.03563.i, %bb.h ] ; 2 uses
  %.140.i = phi ptr [ %i.aq, %bb.i ], [ %.03962.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03563.i, %bb.i ], [ %i.an, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.064.i, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.ar = load i32, ptr %.04166.sink87.i, align 4, !tbaa !287
  store i32 %i.ar, ptr %.03765.sink.i, align 4, !tbaa !287
  store i32 0, ptr %.04166.sink87.i, align 4, !tbaa !287
  %i.as = load i32, ptr %.03962.sink85.i, align 4, !tbaa !287
  store i32 %i.as, ptr %.04166.sink87.i, align 4, !tbaa !287
  store i32 0, ptr %.03962.sink85.i, align 4, !tbaa !287
  %.037.i = getelementptr inbounds nuw i8, ptr %.03765.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04166.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !1784

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.au = load i32, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 %i.au, ptr %i.m, align 4, !tbaa !287
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !287
  %i.av = load i32, ptr %i.d, align 4, !tbaa !287
  store i32 %i.av, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %.03049.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.03450.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.aw = icmp eq ptr %.03450.i, %1
  br i1 %i.aw, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar242 = phi i64 [ %indvar.next243, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %.03454.i = phi ptr [ %.034.i, %bb.m ], [ %.03450.i, %bb.l ] ; 9 uses
  %.03053.i = phi ptr [ %.030.i, %bb.m ], [ %.03049.i, %bb.l ] ; 2 uses
  %.052.i = phi ptr [ %.1.i35, %bb.m ], [ %i.at, %bb.l ] ; 6 uses
  %.03251.i = phi ptr [ %.133.i, %bb.m ], [ %i.m, %bb.l ] ; 11 uses
  %i.ax = icmp eq ptr %.052.i, %3
  br i1 %i.ax, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.ay = add i64 %i.a, -8
  %13 = shl i64 %indvar242, 2
  %14 = add i64 %13, %i.j
  %15 = sub i64 %i.ay, %14                        ; 2 uses
  %16 = lshr i64 %15, 2
  %i.az = add nuw nsw i64 %16, 1                  ; 2 uses
  %min.iters.check251 = icmp ult i64 %15, 108
  br i1 %min.iters.check251, label %.lr.ph.i.i.i40.preheader284, label %vector.memcheck240

vector.memcheck240:                               ; preds = %.lr.ph.i.i.i40.preheader
  %scevgep241 = getelementptr i8, ptr %.03251.i, i64 4
  %i.ba = add i64 %i.a, -8
  %17 = shl i64 %indvar242, 2
  %18 = add i64 %17, %i.j
  %i.bb = sub i64 %i.ba, %18
  %i.bc = and i64 %i.bb, -4                       ; 2 uses
  %scevgep244 = getelementptr i8, ptr %scevgep241, i64 %i.bc
  %i.bd = shl i64 %indvar242, 2
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bd
  %scevgep245 = getelementptr i8, ptr %i.be, i64 8
  %scevgep246 = getelementptr i8, ptr %scevgep245, i64 %i.bc
  %bound0247 = icmp ult ptr %.03251.i, %scevgep246
  %bound1248 = icmp ult ptr %.03454.i, %scevgep244
  %found.conflict249 = and i1 %bound0247, %bound1248
  br i1 %found.conflict249, label %.lr.ph.i.i.i40.preheader284, label %vector.ph252

vector.ph252:                                     ; preds = %vector.memcheck240
  %n.vec253 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.bf = shl i64 %n.vec253, 2                    ; 2 uses
  %i.bg = getelementptr i8, ptr %.03251.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %.03454.i, i64 %i.bf
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %i.bi = shl i64 %index255, 2                    ; 2 uses
  %next.gep256 = getelementptr i8, ptr %.03251.i, i64 %i.bi ; 2 uses
  %next.gep257 = getelementptr i8, ptr %.03454.i, i64 %i.bi ; 3 uses
  %i.bj = getelementptr i8, ptr %next.gep257, i64 16 ; 2 uses
  %wide.load258 = load <4 x i32>, ptr %next.gep257, align 4, !tbaa !287, !alias.scope !1785
  %wide.load259 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !287, !alias.scope !1785
  %i.bk = getelementptr i8, ptr %next.gep256, i64 16
  store <4 x i32> %wide.load258, ptr %next.gep256, align 4, !tbaa !287, !alias.scope !1788, !noalias !1785
  store <4 x i32> %wide.load259, ptr %i.bk, align 4, !tbaa !287, !alias.scope !1788, !noalias !1785
  store <4 x i32> zeroinitializer, ptr %next.gep257, align 4, !tbaa !287, !alias.scope !1785
  store <4 x i32> zeroinitializer, ptr %i.bj, align 4, !tbaa !287, !alias.scope !1785
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.bl, label %middle.block261, label %vector.body254, !llvm.loop !1790

middle.block261:                                  ; preds = %vector.body254
  %cmp.n262 = icmp eq i64 %i.az, %n.vec253
  br i1 %cmp.n262, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader284

.lr.ph.i.i.i40.preheader284:                      ; preds = %vector.memcheck240, %.lr.ph.i.i.i40.preheader, %middle.block261
  %.010.i.i.i41.ph = phi ptr [ %.03251.i, %vector.memcheck240 ], [ %.03251.i, %.lr.ph.i.i.i40.preheader ], [ %i.bg, %middle.block261 ]
  %.079.i.i.i42.ph = phi ptr [ %.03454.i, %vector.memcheck240 ], [ %.03454.i, %.lr.ph.i.i.i40.preheader ], [ %i.bh, %middle.block261 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader284, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bo, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader284 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bn, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader284 ] ; 3 uses
  %i.bm = load i32, ptr %.079.i.i.i42, align 4, !tbaa !287
  store i32 %i.bm, ptr %.010.i.i.i41, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i42, align 4, !tbaa !287
  %i.bn = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bn, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !1791

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bp = load i32, ptr %.052.i, align 4, !tbaa !287
  %i.bq = load i32, ptr %.03251.i, align 4, !tbaa !287
  %i.br = icmp slt i32 %i.bp, %i.bq               ; 3 uses
  %i.bs = load i32, ptr %.03454.i, align 4, !tbaa !287
  store i32 %i.bs, ptr %.03053.i, align 4, !tbaa !287
  store i32 0, ptr %.03454.i, align 4, !tbaa !287
  %.03251.sink70.i = select i1 %i.br, ptr %.052.i, ptr %.03251.i ; 2 uses
  %.133.idx.i = select i1 %i.br, i64 0, i64 4
  %.133.i = getelementptr inbounds nuw i8, ptr %.03251.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.br, i64 4, i64 0
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.052.i, i64 %.1.idx.i ; 2 uses
  %i.bt = load i32, ptr %.03251.sink70.i, align 4, !tbaa !287
  store i32 %i.bt, ptr %.03454.i, align 4, !tbaa !287
  store i32 0, ptr %.03251.sink70.i, align 4, !tbaa !287
  %.030.i = getelementptr inbounds nuw i8, ptr %.03053.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03454.i, i64 4 ; 2 uses
  %i.bu = icmp eq ptr %.034.i, %1
  %indvar.next243 = add i64 %indvar242, 1
  br i1 %i.bu, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !1792

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block261, %bb.a
  %.075 = phi ptr [ %.064.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.064.i, %middle.block ], [ %4, %middle.block261 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.070 = phi ptr [ %.03962.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03962.i, %middle.block ], [ %.03251.i, %middle.block261 ], [ %.133.i, %bb.m ], [ %.03251.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.069 = phi ptr [ %.03563.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03563.i, %middle.block ], [ %.052.i, %middle.block261 ], [ %.1.i35, %bb.m ], [ %.052.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block261 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.ab, %middle.block ], [ %i.bg, %middle.block261 ], [ %.030.i, %bb.m ], [ %i.bo, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.0100 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03759.i, %bb.f ] ; 5 uses
  %.02899 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.06998 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.n, %bb.f ] ; 3 uses
  %.07097 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.07596 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.o, %bb.f ]
  %.not.i44 = icmp eq ptr %.06998, %3
  %.not36.i = icmp eq ptr %.0100, %.07097
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  %.028.ph.i = phi ptr [ %i.cb, %bb.o ], [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.07596, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.by, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.bz, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.bv = load i32, ptr %.025.i, align 4, !tbaa !287 ; 2 uses
  %i.bw = load i32, ptr %.028.ph.i, align 4, !tbaa !287 ; 2 uses
  %i.bx = icmp slt i32 %i.bv, %i.bw
  br i1 %i.bx, label %.split.i, label %bb.o

.split.i:                                         ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bv, ptr %.030.i46, align 4, !tbaa !287
  store i32 0, ptr %.025.i, align 4, !tbaa !287
  %i.ca = load i32, ptr %.026.i, align 4, !tbaa !287
  store i32 %i.ca, ptr %.025.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i, align 4, !tbaa !287
  %.not43.i = icmp eq ptr %i.by, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %bb.n, !llvm.loop !1754

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bw, ptr %.030.i46, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !287
  %.not42.i = icmp eq ptr %i.cb, %.0100
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not42.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.outer.i, !llvm.loop !1754

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit
  %.086 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %.03049.i, %bb.l ] ; 5 uses
  %.02884 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.06983 = phi ptr [ %.069, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.at, %bb.l ] ; 3 uses
  %.07082 = phi ptr [ %.070, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit ], [ %i.m, %bb.l ] ; 3 uses
  %.not.i49 = icmp eq ptr %.06983, %3
  %.not36.i50 = icmp eq ptr %.086, %.07082
  %or.cond.i51 = select i1 %.not.i49, i1 true, i1 %.not36.i50
  br i1 %or.cond.i51, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.cf, %bb.q ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.ci, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.cf, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.cg, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.cc = load i32, ptr %.0.i, align 4, !tbaa !287 ; 2 uses
  %i.cd = load i32, ptr %.021.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.ce, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.cc, ptr %.024.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i, align 4, !tbaa !287
  %i.ch = icmp eq ptr %i.cg, %3
  br i1 %i.ch, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !1730

bb.q:                                             ; preds = %.preheader.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.cd, ptr %.024.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !287
  %i.cj = icmp eq ptr %i.ci, %.086
  br i1 %i.cj, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1730

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SK_SG_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90
  %.085 = phi ptr [ %.0100, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.0100, %.split.i ], [ %.086, %bb.p ], [ %.086, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.086, %bb.q ], [ %.0100, %bb.o ]
  %.171 = phi ptr [ %.07097, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.028.ph.i, %.split.i ], [ %i.ci, %bb.q ], [ %.07082, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.m, %bb.e ], [ %i.m, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.cb, %bb.o ]
  %.1 = phi ptr [ %.06998, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %i.by, %.split.i ], [ %.0.i, %bb.q ], [ %.06983, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cg, %bb.p ], [ %.026.i, %bb.o ]
  %i.ck = phi ptr [ %.02899, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread90 ], [ %.13137.i, %.split.i ], [ %i.cf, %bb.p ], [ %.02884, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_T_SH_RT0_SI_SJ_RSG_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.cf, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.171, ptr %5, align 8, !tbaa !305
  store ptr %.085, ptr %6, align 8, !tbaa !305
  store ptr %.1, ptr %2, align 8, !tbaa !305
  ret ptr %i.ck
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implIPNS_9container4test24movable_and_copyable_intES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET_SI_SI_RSI_SI_SI_RT0_SL_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 4 uses
  %i.b = load ptr, ptr %5, align 8, !tbaa !305    ; 3 uses
  %i.c = load ptr, ptr %6, align 8, !tbaa !305    ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !305    ; 11 uses
  %.not = icmp eq ptr %i.d, %4                    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.c
  br i1 %i.e, label %bb.b, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit

bb.b:                                             ; preds = %bb.a
  %.not7.i = icmp eq ptr %0, %1
  br i1 %.not7.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = load i32, ptr %4, align 4, !tbaa !287
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.08.i = phi ptr [ %0, %.lr.ph.i ], [ %i.h, %bb.d ] ; 3 uses
  %i.g = load i32, ptr %.08.i, align 4, !tbaa !287
  %.not6.i = icmp slt i32 %i.g, %i.f
  br i1 %.not6.i, label %bb.d, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 3 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.c, !llvm.loop !1793

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %.08.i, %bb.c ], [ %i.h, %bb.d ] ; 12 uses
  %i.i = ptrtoint ptr %.0.lcssa.i to i64          ; 5 uses
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 %i.k ; 12 uses
  %.not.i32 = icmp eq ptr %.0.lcssa.i, %1         ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %.not47.i = icmp eq ptr %i.d, %3
  %or.cond.i = select i1 %.not.i32, i1 true, i1 %.not47.i
  br i1 %or.cond.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i32, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 %i.o, ptr %i.l, align 4, !tbaa !287
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !287
  %i.p = load i32, ptr %4, align 4, !tbaa !287
  store i32 %i.p, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %4, align 4, !tbaa !287
  %i.q = load i32, ptr %i.d, align 4, !tbaa !287
  store i32 %i.q, ptr %4, align 4, !tbaa !287
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %.03760.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.04161.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %.not4862.i = icmp eq ptr %.04161.i, %1
  br i1 %.not4862.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 4 uses
  %.04167.i = phi ptr [ %.041.i, %bb.j ], [ %.04161.i, %bb.f ] ; 10 uses
  %.03766.i = phi ptr [ %.037.i, %bb.j ], [ %.03760.i, %bb.f ] ; 3 uses
  %.065.i = phi ptr [ %.1.i, %bb.j ], [ %i.n, %bb.f ] ; 6 uses
  %.03564.i = phi ptr [ %.136.i, %bb.j ], [ %i.m, %bb.f ] ; 6 uses
  %.03963.i = phi ptr [ %.140.i, %bb.j ], [ %i.l, %bb.f ] ; 12 uses
  %i.r = icmp eq ptr %.03564.i, %3
  br i1 %i.r, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i31
  %i.s = add i64 %i.a, -8
  %8 = shl i64 %indvar, 2
  %9 = add i64 %8, %i.i
  %10 = sub i64 %i.s, %9                          ; 2 uses
  %11 = lshr i64 %10, 2
  %i.t = add nuw nsw i64 %11, 1                   ; 2 uses
  %min.iters.check = icmp ult i64 %10, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader295, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.03963.i, i64 4
  %i.u = add i64 %i.a, -8
  %12 = shl i64 %indvar, 2
  %13 = add i64 %12, %i.i
  %i.v = sub i64 %i.u, %13
  %i.w = and i64 %i.v, -4                         ; 2 uses
  %scevgep238 = getelementptr i8, ptr %scevgep, i64 %i.w
  %i.x = shl i64 %indvar, 2
  %i.y = getelementptr i8, ptr %.0.lcssa.i, i64 %i.x
  %scevgep239 = getelementptr i8, ptr %i.y, i64 8
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.w
  %bound0 = icmp ult ptr %.03963.i, %scevgep240
  %bound1 = icmp ult ptr %.04167.i, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader295, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %.03963.i, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %.04167.i, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.03963.i, i64 %i.ac ; 2 uses
  %next.gep241 = getelementptr i8, ptr %.04167.i, i64 %i.ac ; 3 uses
  %i.ad = getelementptr i8, ptr %next.gep241, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep241, align 4, !tbaa !287, !alias.scope !1794
  %wide.load242 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !287, !alias.scope !1794
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !287, !alias.scope !1797, !noalias !1794
  store <4 x i32> %wide.load242, ptr %i.ae, align 4, !tbaa !287, !alias.scope !1797, !noalias !1794
  store <4 x i32> zeroinitializer, ptr %next.gep241, align 4, !tbaa !287, !alias.scope !1794
  store <4 x i32> zeroinitializer, ptr %i.ad, align 4, !tbaa !287, !alias.scope !1794
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1799

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i.preheader295

.lr.ph.i.i.i.preheader295:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.010.i.i.i.ph = phi ptr [ %.03963.i, %vector.memcheck ], [ %.03963.i, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.079.i.i.i.ph = phi ptr [ %.04167.i, %vector.memcheck ], [ %.04167.i, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader295, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader295 ] ; 3 uses
  %i.ag = load i32, ptr %.079.i.i.i, align 4, !tbaa !287
  store i32 %i.ag, ptr %.010.i.i.i, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i, align 4, !tbaa !287
  %i.ah = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1800

bb.g:                                             ; preds = %.lr.ph.i31
  %i.aj = load i32, ptr %.03963.i, align 4, !tbaa !287
  %i.ak = load i32, ptr %.065.i, align 4, !tbaa !287
  %.not50.i = icmp slt i32 %i.aj, %i.ak
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.03564.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.065.i, i64 4
  %i.an = load i32, ptr %.04167.i, align 4, !tbaa !287
  store i32 %i.an, ptr %.03766.i, align 4, !tbaa !287
  store i32 0, ptr %.04167.i, align 4, !tbaa !287
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.03963.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.04167.sink88.i = phi ptr [ %.04167.i, %bb.i ], [ %.065.i, %bb.h ] ; 3 uses
  %.03766.sink.i = phi ptr [ %.03766.i, %bb.i ], [ %.04167.i, %bb.h ]
  %.03963.sink86.i = phi ptr [ %.03963.i, %bb.i ], [ %.03564.i, %bb.h ] ; 2 uses
  %.140.i = phi ptr [ %i.ao, %bb.i ], [ %.03963.i, %bb.h ] ; 2 uses
  %.136.i = phi ptr [ %.03564.i, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %.065.i, %bb.i ], [ %i.am, %bb.h ] ; 2 uses
  %i.ap = load i32, ptr %.04167.sink88.i, align 4, !tbaa !287
  store i32 %i.ap, ptr %.03766.sink.i, align 4, !tbaa !287
  store i32 0, ptr %.04167.sink88.i, align 4, !tbaa !287
  %i.aq = load i32, ptr %.03963.sink86.i, align 4, !tbaa !287
  store i32 %i.aq, ptr %.04167.sink88.i, align 4, !tbaa !287
  store i32 0, ptr %.03963.sink86.i, align 4, !tbaa !287
  %.037.i = getelementptr inbounds nuw i8, ptr %.03766.i, i64 4 ; 2 uses
  %.041.i = getelementptr inbounds nuw i8, ptr %.04167.i, i64 4 ; 2 uses
  %.not48.i = icmp eq ptr %.041.i, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not48.i, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i31, !llvm.loop !1801

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test24movable_and_copyable_intENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %.not40.i = icmp eq ptr %4, %3
  %or.cond.i33 = or i1 %.not.i32, %.not40.i
  br i1 %or.cond.i33, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.as = load i32, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 %i.as, ptr %i.l, align 4, !tbaa !287
  store i32 0, ptr %.0.lcssa.i, align 4, !tbaa !287
  %i.at = load i32, ptr %i.d, align 4, !tbaa !287
  store i32 %i.at, ptr %.0.lcssa.i, align 4, !tbaa !287
  store i32 0, ptr %i.d, align 4, !tbaa !287
  %.03050.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.03451.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 4 ; 2 uses
  %i.au = icmp eq ptr %.03451.i, %1
  br i1 %i.au, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %bb.l, %bb.m
  %indvar246 = phi i64 [ %indvar.next247, %bb.m ], [ 0, %bb.l ] ; 4 uses
  %.03455.i = phi ptr [ %.034.i, %bb.m ], [ %.03451.i, %bb.l ] ; 9 uses
  %.03054.i = phi ptr [ %.030.i, %bb.m ], [ %.03050.i, %bb.l ] ; 2 uses
  %.053.i = phi ptr [ %.1.i35, %bb.m ], [ %i.ar, %bb.l ] ; 6 uses
  %.03252.i = phi ptr [ %.133.i, %bb.m ], [ %i.l, %bb.l ] ; 11 uses
  %i.av = icmp eq ptr %.053.i, %3
  br i1 %i.av, label %.lr.ph.i.i.i40.preheader, label %bb.m

.lr.ph.i.i.i40.preheader:                         ; preds = %.lr.ph.i34
  %i.aw = add i64 %i.a, -8
  %14 = shl i64 %indvar246, 2
  %15 = add i64 %14, %i.i
  %16 = sub i64 %i.aw, %15                        ; 2 uses
  %17 = lshr i64 %16, 2
  %i.ax = add nuw nsw i64 %17, 1                  ; 2 uses
  %min.iters.check255 = icmp ult i64 %16, 108
  br i1 %min.iters.check255, label %.lr.ph.i.i.i40.preheader288, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph.i.i.i40.preheader
  %scevgep245 = getelementptr i8, ptr %.03252.i, i64 4
  %i.ay = add i64 %i.a, -8
  %18 = shl i64 %indvar246, 2
  %19 = add i64 %18, %i.i
  %i.az = sub i64 %i.ay, %19
  %i.ba = and i64 %i.az, -4                       ; 2 uses
  %scevgep248 = getelementptr i8, ptr %scevgep245, i64 %i.ba
  %i.bb = shl i64 %indvar246, 2
  %i.bc = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bb
  %scevgep249 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %i.ba
  %bound0251 = icmp ult ptr %.03252.i, %scevgep250
  %bound1252 = icmp ult ptr %.03455.i, %scevgep248
  %found.conflict253 = and i1 %bound0251, %bound1252
  br i1 %found.conflict253, label %.lr.ph.i.i.i40.preheader288, label %vector.ph256

vector.ph256:                                     ; preds = %vector.memcheck244
  %n.vec257 = and i64 %i.ax, 9223372036854775800  ; 3 uses
  %i.bd = shl i64 %n.vec257, 2                    ; 2 uses
  %i.be = getelementptr i8, ptr %.03252.i, i64 %i.bd ; 2 uses
  %i.bf = getelementptr i8, ptr %.03455.i, i64 %i.bd
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body258 ] ; 2 uses
  %i.bg = shl i64 %index259, 2                    ; 2 uses
  %next.gep260 = getelementptr i8, ptr %.03252.i, i64 %i.bg ; 2 uses
  %next.gep261 = getelementptr i8, ptr %.03455.i, i64 %i.bg ; 3 uses
  %i.bh = getelementptr i8, ptr %next.gep261, i64 16 ; 2 uses
  %wide.load262 = load <4 x i32>, ptr %next.gep261, align 4, !tbaa !287, !alias.scope !1802
  %wide.load263 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !287, !alias.scope !1802
  %i.bi = getelementptr i8, ptr %next.gep260, i64 16
  store <4 x i32> %wide.load262, ptr %next.gep260, align 4, !tbaa !287, !alias.scope !1805, !noalias !1802
  store <4 x i32> %wide.load263, ptr %i.bi, align 4, !tbaa !287, !alias.scope !1805, !noalias !1802
  store <4 x i32> zeroinitializer, ptr %next.gep261, align 4, !tbaa !287, !alias.scope !1802
  store <4 x i32> zeroinitializer, ptr %i.bh, align 4, !tbaa !287, !alias.scope !1802
  %index.next264 = add nuw i64 %index259, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bj, label %middle.block265, label %vector.body258, !llvm.loop !1807

middle.block265:                                  ; preds = %vector.body258
  %cmp.n266 = icmp eq i64 %i.ax, %n.vec257
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i40.preheader288

.lr.ph.i.i.i40.preheader288:                      ; preds = %vector.memcheck244, %.lr.ph.i.i.i40.preheader, %middle.block265
  %.010.i.i.i41.ph = phi ptr [ %.03252.i, %vector.memcheck244 ], [ %.03252.i, %.lr.ph.i.i.i40.preheader ], [ %i.be, %middle.block265 ]
  %.079.i.i.i42.ph = phi ptr [ %.03455.i, %vector.memcheck244 ], [ %.03455.i, %.lr.ph.i.i.i40.preheader ], [ %i.bf, %middle.block265 ]
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %.lr.ph.i.i.i40.preheader288, %.lr.ph.i.i.i40
  %.010.i.i.i41 = phi ptr [ %i.bm, %.lr.ph.i.i.i40 ], [ %.010.i.i.i41.ph, %.lr.ph.i.i.i40.preheader288 ] ; 2 uses
  %.079.i.i.i42 = phi ptr [ %i.bl, %.lr.ph.i.i.i40 ], [ %.079.i.i.i42.ph, %.lr.ph.i.i.i40.preheader288 ] ; 3 uses
  %i.bk = load i32, ptr %.079.i.i.i42, align 4, !tbaa !287
  store i32 %i.bk, ptr %.010.i.i.i41, align 4, !tbaa !287
  store i32 0, ptr %.079.i.i.i42, align 4, !tbaa !287
  %i.bl = getelementptr inbounds nuw i8, ptr %.079.i.i.i42, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i41, i64 4 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.bl, %1
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i.i.i40, !llvm.loop !1808

bb.m:                                             ; preds = %.lr.ph.i34
  %i.bn = load i32, ptr %.03252.i, align 4, !tbaa !287
  %i.bo = load i32, ptr %.053.i, align 4, !tbaa !287
  %.not42.i = icmp slt i32 %i.bn, %i.bo           ; 3 uses
  %i.bp = load i32, ptr %.03455.i, align 4, !tbaa !287
  store i32 %i.bp, ptr %.03054.i, align 4, !tbaa !287
  store i32 0, ptr %.03455.i, align 4, !tbaa !287
  %.03252.sink71.i = select i1 %.not42.i, ptr %.03252.i, ptr %.053.i ; 2 uses
  %.133.idx.i = select i1 %.not42.i, i64 4, i64 0
  %.133.i = getelementptr inbounds nuw i8, ptr %.03252.i, i64 %.133.idx.i ; 2 uses
  %.1.idx.i = select i1 %.not42.i, i64 0, i64 4
  %.1.i35 = getelementptr inbounds nuw i8, ptr %.053.i, i64 %.1.idx.i ; 2 uses
  %i.bq = load i32, ptr %.03252.sink71.i, align 4, !tbaa !287
  store i32 %i.bq, ptr %.03455.i, align 4, !tbaa !287
  store i32 0, ptr %.03252.sink71.i, align 4, !tbaa !287
  %.030.i = getelementptr inbounds nuw i8, ptr %.03054.i, i64 4 ; 2 uses
  %.034.i = getelementptr inbounds nuw i8, ptr %.03455.i, i64 4 ; 2 uses
  %i.br = icmp eq ptr %.034.i, %1
  %indvar.next247 = add i64 %indvar246, 1
  br i1 %i.br, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit, label %.lr.ph.i34, !llvm.loop !1809

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit: ; preds = %bb.j, %.lr.ph.i.i.i, %bb.m, %.lr.ph.i.i.i40, %middle.block, %middle.block265, %bb.a
  %.077 = phi ptr [ %.03564.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ], [ %.03564.i, %middle.block ], [ %.053.i, %middle.block265 ], [ %.1.i35, %bb.m ], [ %.053.i, %.lr.ph.i.i.i40 ], [ %.136.i, %bb.j ] ; 2 uses
  %.075 = phi ptr [ %.03963.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ], [ %.03963.i, %middle.block ], [ %.03252.i, %middle.block265 ], [ %.133.i, %bb.m ], [ %.03252.i, %.lr.ph.i.i.i40 ], [ %.140.i, %bb.j ] ; 2 uses
  %.074 = phi ptr [ %.065.i, %.lr.ph.i.i.i ], [ %4, %bb.a ], [ %.065.i, %middle.block ], [ %4, %middle.block265 ], [ %4, %bb.m ], [ %4, %.lr.ph.i.i.i40 ], [ %.1.i, %bb.j ]
  %.028 = phi ptr [ %1, %.lr.ph.i.i.i ], [ %0, %bb.a ], [ %1, %middle.block ], [ %1, %middle.block265 ], [ %1, %bb.m ], [ %1, %.lr.ph.i.i.i40 ], [ %1, %bb.j ] ; 2 uses
  %.0 = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %i.c, %bb.a ], [ %i.aa, %middle.block ], [ %i.be, %middle.block265 ], [ %.030.i, %bb.m ], [ %i.bm, %.lr.ph.i.i.i40 ], [ %.037.i, %bb.j ] ; 2 uses
  br i1 %.not, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95: ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.0105 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %.03760.i, %bb.f ] ; 5 uses
  %.028104 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %1, %bb.f ] ; 2 uses
  %.074103 = phi ptr [ %.074, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.n, %bb.f ]
  %.075102 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.l, %bb.f ] ; 3 uses
  %.077101 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.m, %bb.f ] ; 3 uses
  %.not.i44 = icmp eq ptr %.077101, %3
  %.not36.i = icmp eq ptr %.0105, %.075102
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %.not36.i
  br i1 %or.cond.i45, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.outer.i

.outer.i:                                         ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95, %bb.o
  %.030.ph.i = phi ptr [ %.131.i, %bb.o ], [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  %.028.ph.i = phi ptr [ %i.bx, %bb.o ], [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ] ; 4 uses
  %.026.ph.i = phi ptr [ %.026.i, %bb.o ], [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  %.025.ph.i = phi ptr [ %.025.i, %bb.o ], [ %.074103, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ]
  br label %bb.n

bb.n:                                             ; preds = %.split.i, %.outer.i
  %.030.i46 = phi ptr [ %.13137.i, %.split.i ], [ %.030.ph.i, %.outer.i ] ; 4 uses
  %.026.i = phi ptr [ %i.bu, %.split.i ], [ %.026.ph.i, %.outer.i ] ; 5 uses
  %.025.i = phi ptr [ %i.bv, %.split.i ], [ %.025.ph.i, %.outer.i ] ; 5 uses
  %i.bs = load i32, ptr %.028.ph.i, align 4, !tbaa !287 ; 2 uses
  %i.bt = load i32, ptr %.025.i, align 4, !tbaa !287 ; 2 uses
  %.not42.i47 = icmp slt i32 %i.bs, %i.bt
  br i1 %.not42.i47, label %bb.o, label %.split.i

.split.i:                                         ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.026.i, i64 4 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.025.i, i64 4
  store i32 %i.bt, ptr %.030.i46, align 4, !tbaa !287
  store i32 0, ptr %.025.i, align 4, !tbaa !287
  %i.bw = load i32, ptr %.026.i, align 4, !tbaa !287
  store i32 %i.bw, ptr %.025.i, align 4, !tbaa !287
  store i32 0, ptr %.026.i, align 4, !tbaa !287
  %.not44.i = icmp eq ptr %i.bu, %3
  %.13137.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not44.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %bb.n, !llvm.loop !1755

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.028.ph.i, i64 4 ; 3 uses
  store i32 %i.bs, ptr %.030.i46, align 4, !tbaa !287
  store i32 0, ptr %.028.ph.i, align 4, !tbaa !287
  %.not43.i = icmp eq ptr %i.bx, %.0105
  %.131.i = getelementptr inbounds nuw i8, ptr %.030.i46, i64 4 ; 2 uses
  br i1 %.not43.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.outer.i, !llvm.loop !1755

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread: ; preds = %bb.l, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit
  %.091 = phi ptr [ %.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %.03050.i, %bb.l ] ; 5 uses
  %.02889 = phi ptr [ %.028, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %1, %bb.l ] ; 2 uses
  %.07588 = phi ptr [ %.075, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.l, %bb.l ] ; 3 uses
  %.07787 = phi ptr [ %.077, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit ], [ %i.ar, %bb.l ] ; 3 uses
  %.not.i50 = icmp eq ptr %.07787, %3
  %.not36.i51 = icmp eq ptr %.091, %.07588
  %or.cond.i52 = select i1 %.not.i50, i1 true, i1 %.not36.i51
  br i1 %or.cond.i52, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, %bb.q
  %.024.i.ph = phi ptr [ %i.ca, %bb.q ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ]
  %.021.i.ph = phi ptr [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ] ; 4 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.p
  %.024.i = phi ptr [ %i.ca, %bb.p ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.cb, %bb.p ], [ %.0.i.ph, %.preheader.i.outer ] ; 5 uses
  %i.by = load i32, ptr %.021.i.ph, align 4, !tbaa !287 ; 2 uses
  %i.bz = load i32, ptr %.0.i, align 4, !tbaa !287 ; 2 uses
  %.not37.i = icmp slt i32 %i.by, %i.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %.not37.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 3 uses
  store i32 %i.bz, ptr %.024.i, align 4, !tbaa !287
  store i32 0, ptr %.0.i, align 4, !tbaa !287
  %i.cc = icmp eq ptr %i.cb, %3
  br i1 %i.cc, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !1756

bb.q:                                             ; preds = %.preheader.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.by, ptr %.024.i, align 4, !tbaa !287
  store i32 0, ptr %.021.i.ph, align 4, !tbaa !287
  %i.ce = icmp eq ptr %i.cd, %.091
  br i1 %i.ce, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1756

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SM_SI_T2_T3_.exit: ; preds = %bb.o, %.split.i, %bb.p, %bb.q, %bb.k, %bb.e, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95
  %.090 = phi ptr [ %.0105, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.0105, %.split.i ], [ %.091, %bb.p ], [ %.091, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.091, %bb.q ], [ %.0105, %bb.o ]
  %.178 = phi ptr [ %.077101, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %i.bu, %.split.i ], [ %.0.i, %bb.q ], [ %.07787, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.d, %bb.e ], [ %i.d, %bb.k ], [ %i.cb, %bb.p ], [ %.026.i, %bb.o ]
  %.176 = phi ptr [ %.075102, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.028.ph.i, %.split.i ], [ %i.cd, %bb.q ], [ %.07588, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %i.l, %bb.e ], [ %i.l, %bb.k ], [ %.021.i.ph, %bb.p ], [ %i.bx, %bb.o ]
  %i.cf = phi ptr [ %.028104, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread95 ], [ %.13137.i, %.split.i ], [ %i.ca, %bb.p ], [ %.02889, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferIPNS_9container4test24movable_and_copyable_intES6_S6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_7move_opEEET1_T_SJ_RT0_SK_SL_RSI_T2_T3_.exit.thread ], [ %1, %bb.e ], [ %1, %bb.k ], [ %i.ca, %bb.q ], [ %.131.i, %bb.o ]
  store ptr %.176, ptr %5, align 8, !tbaa !305
  store ptr %.090, ptr %6, align 8, !tbaa !305
  store ptr %.178, ptr %2, align 8, !tbaa !305
  ret ptr %i.cf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7swap_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #5 comdat {
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

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit
  %i.c = phi ptr [ %2, %.lr.ph ], [ %i.v, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 8 uses
  %.0 = phi i64 [ %9, %.lr.ph ], [ %i.cz, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 3 uses
  %.089 = phi ptr [ %0, %.lr.ph ], [ %i.cv, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 6 uses
  %.03888 = phi ptr [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 5 uses
  %.03987 = phi i64 [ %8, %.lr.ph ], [ %i.cx, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 4 uses
  %.06786 = phi i64 [ %7, %.lr.ph ], [ %i.da, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPNS_9container4test24movable_and_copyable_intES6_EEvT_S7_RS7_T0_S9_S9_.exit ] ; 2 uses
  %i.d = icmp ult i64 %.03987, %.0
  br i1 %i.d, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.s, %.thread24.i ], [ %.03987, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.r, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.e = mul i64 %.02226.i, %6
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e
  %i.g = mul i64 %.027.i, %6
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.g
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %.02226.i
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET_SK_SK_RSK_SK_SK_RT0_SN_T1_T2_:bb.a

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.c, !llvm.loop !1854

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.r ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !1674
  %i.t = load ptr, ptr %2, align 8, !tbaa !1674   ; 14 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !1674   ; 3 uses
  %.not.i18 = icmp eq ptr %.lcssa.i, %i.t
  %.not27.i = icmp eq ptr %i.c, %i.v
  %or.cond79 = select i1 %.not.i18, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %5, align 8, !tbaa !1674, !noalias !2009
  %i.x = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.aa = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !287, !noalias !2009
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.z, align 4, !tbaa !287, !noalias !2009
  %i.ac = load i32, ptr %i.y, align 4, !tbaa !287, !noalias !2009
  store i32 %i.ac, ptr %i.z, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.y, align 4, !tbaa !287, !noalias !2009
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !287, !noalias !2009
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.x, align 4, !tbaa !287, !noalias !2009
  %.not3548.i = icmp eq ptr %i.z, %i.t
  br i1 %.not3548.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.f, %bb.j
  %i.ae = phi ptr [ %.sink.i, %bb.j ], [ %i.z, %bb.f ] ; 9 uses
  %.sroa.029.051.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.s, %bb.f ] ; 10 uses
  %.sroa.024.050.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.x, %bb.f ] ; 5 uses
  %.sroa.020.049.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.y, %bb.f ] ; 4 uses
  %i.af = phi ptr [ %i.br, %bb.j ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = icmp eq ptr %.sroa.024.050.i, %i.v
  br i1 %i.ag, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i17
  %i.ah = ptrtoaddr ptr %i.ae to i64              ; 2 uses
  %i.ai = add i64 %i.ah, -4
  %i.aj = sub i64 %i.ai, %i.u                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader304, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.029.051.i, i64 -4
  %reass.sub = sub i64 %i.ah, %i.u
  %i.am = add i64 %reass.sub, -4
  %i.an = lshr i64 %i.am, 2
  %i.ao = mul i64 %i.an, -4                       ; 2 uses
  %scevgep242 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %scevgep243 = getelementptr i8, ptr %i.ae, i64 -4
  %scevgep244 = getelementptr i8, ptr %scevgep243, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep242, %i.ae
  %bound1 = icmp ult ptr %scevgep244, %.sroa.029.051.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader304, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = mul i64 %n.vec, -4                      ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ae, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.051.i, i64 %i.as ; 2 uses
  %next.gep245 = getelementptr i8, ptr %i.ae, i64 %i.as ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep245, i64 -16 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep245, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.at, align 4, !tbaa !287, !alias.scope !2012, !noalias !2015
  %wide.load246 = load <4 x i32>, ptr %i.au, align 4, !tbaa !287, !alias.scope !2012, !noalias !2015
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.aw = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.av, align 4, !tbaa !287, !alias.scope !2020, !noalias !2022
  store <4 x i32> %wide.load246, ptr %i.aw, align 4, !tbaa !287, !alias.scope !2020, !noalias !2022
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !287, !alias.scope !2012, !noalias !2015
  store <4 x i32> zeroinitializer, ptr %i.au, align 4, !tbaa !287, !alias.scope !2012, !noalias !2015
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !2023

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader304

.lr.ph.i.i.i.preheader304:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.051.i, %vector.memcheck ], [ %.sroa.029.051.i, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  %.ph305 = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader304, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader304 ]
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.ph305, %.lr.ph.i.i.i.preheader304 ]
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !287, !noalias !2015
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !287, !noalias !2015
  store i32 0, ptr %i.az, align 4, !tbaa !287, !noalias !2015
  %.not.i.i.i = icmp eq ptr %i.az, %i.t
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2024

bb.g:                                             ; preds = %.lr.ph.i17
  %i.bc = getelementptr inbounds i8, ptr %.sroa.020.049.i, i64 -4 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.029.051.i, i64 -4 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !287, !noalias !2009
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !287, !noalias !2009
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds i8, ptr %.sroa.024.050.i, i64 -4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !287, !noalias !2009
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.bi, align 4, !tbaa !287, !noalias !2009
  %i.bl = load i32, ptr %i.bc, align 4, !tbaa !287, !noalias !2009
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.bc, align 4, !tbaa !287, !noalias !2009
  %i.bm = load i32, ptr %i.bh, align 4, !tbaa !287, !noalias !2009
  store i32 %i.bm, ptr %i.bc, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.bh, align 4, !tbaa !287, !noalias !2009
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.af, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !287, !noalias !2009
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.bn, align 4, !tbaa !287, !noalias !2009
  %i.bq = load i32, ptr %i.bd, align 4, !tbaa !287, !noalias !2009
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !287, !noalias !2009
  store i32 0, ptr %i.bd, align 4, !tbaa !287, !noalias !2009
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bi, %bb.h ], [ %i.bn, %bb.i ] ; 2 uses
  %i.br = phi ptr [ %i.bj, %bb.h ], [ %i.bo, %bb.i ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %i.bc, %bb.h ], [ %.sroa.020.049.i, %bb.i ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %i.bh, %bb.h ], [ %.sroa.024.050.i, %bb.i ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %.sroa.029.051.i, %bb.h ], [ %i.bd, %bb.i ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.t
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i17, !llvm.loop !2025

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.056.1 = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ], [ %i.aq, %middle.block ], [ %i.br, %bb.j ]
  %.sroa.020.045.i = phi ptr [ %.sroa.020.049.i, %.lr.ph.i.i.i ], [ %i.y, %bb.f ], [ %.sroa.020.049.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.043.i = phi ptr [ %.sroa.024.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.024.050.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.041.i = phi ptr [ %.sroa.029.051.i, %.lr.ph.i.i.i ], [ %i.s, %bb.f ], [ %.sroa.029.051.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.045.i, ptr %5, align 8, !tbaa !1674, !noalias !2009
  %.pre = load ptr, ptr %2, align 8, !tbaa !1674
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  br i1 %or.cond79, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.bt = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.bu = getelementptr inbounds i8, ptr %i.s, i64 -4 ; 3 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !287, !noalias !2026
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !287, !noalias !2026
  store i32 0, ptr %i.bt, align 4, !tbaa !287, !noalias !2026
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !287, !noalias !2026
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !287, !noalias !2026
  store i32 0, ptr %i.bs, align 4, !tbaa !287, !noalias !2026
  %i.bx = icmp eq ptr %i.bt, %i.t
  br i1 %i.bx, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.by = phi ptr [ %i.cy, %bb.p ], [ %i.bt, %bb.l ] ; 6 uses
  %.sroa.022.039.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.s, %bb.l ] ; 10 uses
  %.sroa.016.038.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bs, %bb.l ] ; 5 uses
  %i.bz = phi ptr [ %i.cz, %bb.p ], [ %i.bu, %bb.l ]
  %i.ca = icmp eq ptr %.sroa.016.038.i, %i.v
  br i1 %i.ca, label %.lr.ph.i.i.i22.preheader, label %bb.m

.lr.ph.i.i.i22.preheader:                         ; preds = %.lr.ph.i19
  %i.cb = add i64 %i.o, -8
  %8 = shl i64 %indvar, 2
  %9 = add i64 %8, %i.u
  %10 = sub i64 %i.cb, %9                         ; 2 uses
  %11 = lshr i64 %10, 2
  %i.cc = add nuw nsw i64 %11, 1                  ; 2 uses
  %min.iters.check257 = icmp ult i64 %10, 124
  br i1 %min.iters.check257, label %.lr.ph.i.i.i22.preheader295, label %vector.memcheck248

vector.memcheck248:                               ; preds = %.lr.ph.i.i.i22.preheader
  %scevgep249 = getelementptr i8, ptr %.sroa.022.039.i, i64 -4
  %i.cd = add i64 %i.o, -8
  %i.ce = sub i64 %i.cd, %i.u
  %12 = mul i64 %indvar, -4                       ; 2 uses
  %13 = add i64 %12, %i.ce
  %14 = lshr i64 %13, 2
  %15 = mul i64 %14, -4                           ; 2 uses
  %scevgep250 = getelementptr i8, ptr %scevgep249, i64 %15
  %i.cf = getelementptr i8, ptr %.lcssa.i, i64 %12
  %scevgep251 = getelementptr i8, ptr %i.cf, i64 -8
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %15
  %bound0253 = icmp ult ptr %scevgep250, %i.by
  %bound1254 = icmp ult ptr %scevgep252, %.sroa.022.039.i
  %found.conflict255 = and i1 %bound0253, %bound1254
  br i1 %found.conflict255, label %.lr.ph.i.i.i22.preheader295, label %vector.ph258

vector.ph258:                                     ; preds = %vector.memcheck248
  %n.vec259 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec259, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.by, i64 %i.cg
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next266, %vector.body260 ] ; 2 uses
  %i.cj = mul i64 %index261, -4                   ; 2 uses
  %next.gep262 = getelementptr i8, ptr %.sroa.022.039.i, i64 %i.cj ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep263, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep263, i64 -32 ; 2 uses
  %wide.load264 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !287, !alias.scope !2029, !noalias !2032
  %wide.load265 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !287, !alias.scope !2029, !noalias !2032
  %i.cm = getelementptr inbounds i8, ptr %next.gep262, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep262, i64 -32
  store <4 x i32> %wide.load264, ptr %i.cm, align 4, !tbaa !287, !alias.scope !2037, !noalias !2039
  store <4 x i32> %wide.load265, ptr %i.cn, align 4, !tbaa !287, !alias.scope !2037, !noalias !2039
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !287, !alias.scope !2029, !noalias !2032
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !287, !alias.scope !2029, !noalias !2032
  %index.next266 = add nuw i64 %index261, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next266, %n.vec259
  br i1 %i.co, label %middle.block267, label %vector.body260, !llvm.loop !2040

middle.block267:                                  ; preds = %vector.body260
  %cmp.n268 = icmp eq i64 %i.cc, %n.vec259
  br i1 %cmp.n268, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22.preheader295

.lr.ph.i.i.i22.preheader295:                      ; preds = %vector.memcheck248, %.lr.ph.i.i.i22.preheader, %middle.block267
  %.sroa.0.0.i.i23.ph = phi ptr [ %.sroa.022.039.i, %vector.memcheck248 ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22.preheader ], [ %i.ch, %middle.block267 ]
  %.ph = phi ptr [ %i.by, %vector.memcheck248 ], [ %i.by, %.lr.ph.i.i.i22.preheader ], [ %i.ci, %middle.block267 ]
  br label %.lr.ph.i.i.i22

.lr.ph.i.i.i22:                                   ; preds = %.lr.ph.i.i.i22.preheader295, %.lr.ph.i.i.i22
  %.sroa.0.0.i.i23 = phi ptr [ %i.cr, %.lr.ph.i.i.i22 ], [ %.sroa.0.0.i.i23.ph, %.lr.ph.i.i.i22.preheader295 ]
  %i.cp = phi ptr [ %i.cq, %.lr.ph.i.i.i22 ], [ %.ph, %.lr.ph.i.i.i22.preheader295 ]
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -4 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i23, i64 -4 ; 3 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !287, !noalias !2032
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !287, !noalias !2032
  store i32 0, ptr %i.cq, align 4, !tbaa !287, !noalias !2032
  %.not.i.i.i24 = icmp eq ptr %i.cq, %i.t
  br i1 %.not.i.i.i24, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i.i.i22, !llvm.loop !2041

bb.m:                                             ; preds = %.lr.ph.i19
  %i.ct = getelementptr inbounds i8, ptr %.sroa.016.038.i, i64 -4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.022.039.i, i64 -4 ; 4 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !287, !noalias !2026
  %i.cw = load i32, ptr %i.ct, align 4, !tbaa !287, !noalias !2026
  %i.cx = icmp slt i32 %i.cv, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 6 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !287, !noalias !2026
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !287, !noalias !2026
  store i32 0, ptr %i.cy, align 4, !tbaa !287, !noalias !2026
  br i1 %i.cx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.db = load i32, ptr %i.ct, align 4, !tbaa !287, !noalias !2026
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !287, !noalias !2026
  store i32 0, ptr %i.ct, align 4, !tbaa !287, !noalias !2026
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !287, !noalias !2026
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !287, !noalias !2026
  store i32 0, ptr %i.cu, align 4, !tbaa !287, !noalias !2026
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %i.ct, %bb.n ], [ %.sroa.016.038.i, %bb.o ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %.sroa.022.039.i, %bb.n ], [ %i.cu, %bb.o ] ; 2 uses
  %i.dd = icmp eq ptr %i.cy, %i.t
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dd, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit, label %.lr.ph.i19, !llvm.loop !2042

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i22, %middle.block267, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.de = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.t, %bb.e ], [ %i.t, %middle.block267 ], [ %i.t, %bb.k ], [ %i.t, %bb.l ], [ %i.t, %.lr.ph.i.i.i22 ], [ %i.t, %bb.p ]
  %.sroa.056.0 = phi ptr [ %.sroa.056.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %i.ch, %middle.block267 ], [ %i.s, %bb.k ], [ %i.bu, %bb.l ], [ %i.cr, %.lr.ph.i.i.i22 ], [ %i.cz, %bb.p ]
  %.sroa.062.0 = phi ptr [ %.sroa.024.043.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.038.i, %middle.block267 ], [ %i.c, %bb.k ], [ %i.bs, %bb.l ], [ %.sroa.016.038.i, %.lr.ph.i.i.i22 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.072.0 = phi ptr [ %.sroa.029.041.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %.sroa.022.039.i, %middle.block267 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %.sroa.022.039.i, %.lr.ph.i.i.i22 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.de, ptr %1, align 8, !tbaa !1674
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit
  %.sroa.062.1 = phi ptr [ %.sroa.062.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.068.0 = phi ptr [ %.sroa.056.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.072.1 = phi ptr [ %.sroa.072.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_T_SL_RT0_SM_SN_RSK_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.df = load ptr, ptr %4, align 8, !tbaa !1674  ; 3 uses
  %i.dg = load ptr, ptr %1, align 8, !tbaa !1674  ; 4 uses
  %.not.i29 = icmp eq ptr %.sroa.062.1, %i.df
  %.not17.i = icmp eq ptr %.sroa.068.0, %.sroa.072.1
  %or.cond81 = select i1 %.not.i29, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = load ptr, ptr %5, align 8, !tbaa !1674, !noalias !2043
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.036.0 = phi ptr [ %i.dg, %bb.s ], [ %i.do, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.dh, %bb.s ], [ %i.di, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.062.1, %bb.s ], [ %i.dn, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.072.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.di = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.036.1 = phi ptr [ %.sroa.036.0, %.outer.i ], [ %i.dq, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dj, %bb.u ] ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !287, !noalias !2043 ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !287, !noalias !2043 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %.split.i, label %bb.u

.split.i:                                         ; preds = %bb.t
  %i.dn = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.dl, ptr %i.do, align 4, !tbaa !287, !noalias !2043
  store i32 0, ptr %i.di, align 4, !tbaa !287, !noalias !2043
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !287, !noalias !2043
  store i32 %i.dp, ptr %i.di, align 4, !tbaa !287, !noalias !2043
  store i32 0, ptr %i.dn, align 4, !tbaa !287, !noalias !2043
  %.not27.i28 = icmp eq ptr %i.dn, %i.df
  br i1 %.not27.i28, label %.loopexit.i27, label %.outer.i, !llvm.loop !1961

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds i8, ptr %.sroa.036.1, i64 -4 ; 3 uses
  store i32 %i.dk, ptr %i.dq, align 4, !tbaa !287, !noalias !2043
  store i32 0, ptr %i.dj, align 4, !tbaa !287, !noalias !2043
  %.not26.i = icmp eq ptr %i.dj, %.sroa.068.0
  br i1 %.not26.i, label %.loopexit.i27, label %bb.t, !llvm.loop !1961

.loopexit.i27:                                    ; preds = %.split.i, %bb.u
  %.sroa.036.2 = phi ptr [ %i.dq, %bb.u ], [ %i.do, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dj, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dn, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.di, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !1674, !noalias !2043
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond81, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.0.0.ph = phi ptr [ %i.dw, %bb.w ], [ %i.dg, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.dx, %bb.w ], [ %.sroa.062.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.072.1, %bb.v ]
  %i.dr = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.0.0 = phi ptr [ %i.dw, %bb.x ], [ %.sroa.0.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ds, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !287, !noalias !2046 ; 2 uses
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !287, !noalias !2046 ; 2 uses
  %i.dv = icmp slt i32 %i.dt, %i.du
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -4 ; 6 uses
  br i1 %i.dv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i
  %i.dx = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !287, !noalias !2046
  store i32 0, ptr %i.dx, align 4, !tbaa !287, !noalias !2046
  %i.dy = icmp eq ptr %i.dx, %i.df
  br i1 %i.dy, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1871

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !287, !noalias !2046
  store i32 0, ptr %i.ds, align 4, !tbaa !287, !noalias !2046
  %i.dz = icmp eq ptr %i.ds, %.sroa.068.0
  br i1 %i.dz, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !1871

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i27, %bb.r
  %.sroa.043.0 = phi ptr [ %.sroa.036.2, %.loopexit.i27 ], [ %i.dg, %bb.r ], [ %i.dg, %bb.v ], [ %i.dw, %bb.w ], [ %i.dw, %bb.x ]
  %.sroa.062.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i27 ], [ %.sroa.062.1, %bb.r ], [ %.sroa.062.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.dx, %bb.w ]
  %.sroa.072.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i27 ], [ %.sroa.072.1, %bb.r ], [ %.sroa.072.1, %bb.v ], [ %i.ds, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.043.0, ptr %1, align 8, !tbaa !1674
  store ptr %.sroa.072.2, ptr %6, align 8, !tbaa !1674
  store ptr %.sroa.068.0, ptr %7, align 8, !tbaa !1674
  store ptr %.sroa.062.2, ptr %3, align 8, !tbaa !1674
  %i.ea = load ptr, ptr %1, align 8, !tbaa !1674
  store ptr %i.ea, ptr %0, align 8, !tbaa !1674
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef align 8 dead_on_return %4, ptr noundef align 8 dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef align 8 dead_on_return %8) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !1674   ; 3 uses
  %i.b = load ptr, ptr %7, align 8, !tbaa !1674   ; 2 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !1674   ; 7 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !1674   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  %i.e = icmp eq ptr %i.a, %i.b
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_save_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET_SM_SM_RSM_SM_SM_RT0_SP_T1_T2_:bb.a

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit, label %bb.c, !llvm.loop !2052

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ], [ %i.k, %bb.d ] ; 6 uses
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = ptrtoint ptr %.lcssa.i to i64            ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.q ; 10 uses
  store ptr %.lcssa.i, ptr %1, align 8, !tbaa !1674
  %i.s = load ptr, ptr %2, align 8, !tbaa !1674   ; 14 uses
  %i.t = ptrtoaddr ptr %i.s to i64                ; 4 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !1674   ; 3 uses
  %.not.i9 = icmp eq ptr %.lcssa.i, %i.s
  %.not27.i = icmp eq ptr %i.c, %i.u
  %or.cond76 = select i1 %.not.i9, i1 true, i1 %.not27.i ; 2 uses
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %5, align 8, !tbaa !1674, !noalias !2053
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !287, !noalias !2053
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.y, align 4, !tbaa !287, !noalias !2053
  %i.ab = load i32, ptr %i.x, align 4, !tbaa !287, !noalias !2053
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.x, align 4, !tbaa !287, !noalias !2053
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !287, !noalias !2053
  store i32 %i.ac, ptr %i.x, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.w, align 4, !tbaa !287, !noalias !2053
  %.not3549.i = icmp eq ptr %i.y, %i.s
  br i1 %.not3549.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.j
  %i.ad = phi ptr [ %.sink.i, %bb.j ], [ %i.y, %bb.f ] ; 9 uses
  %.sroa.029.052.i = phi ptr [ %.sroa.029.1.i, %bb.j ], [ %i.r, %bb.f ] ; 10 uses
  %.sroa.024.051.i = phi ptr [ %.sroa.024.1.i, %bb.j ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.020.050.i = phi ptr [ %.sroa.020.1.i, %bb.j ], [ %i.x, %bb.f ] ; 4 uses
  %i.ae = phi ptr [ %i.bp, %bb.j ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = icmp eq ptr %.sroa.024.051.i, %i.u
  br i1 %i.af, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i8
  %i.ag = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.ah = add i64 %i.ag, -4
  %i.ai = sub i64 %i.ah, %i.t                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader301, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.029.052.i, i64 -4
  %reass.sub = sub i64 %i.ag, %i.t
  %i.al = add i64 %reass.sub, -4
  %i.am = lshr i64 %i.al, 2
  %i.an = mul i64 %i.am, -4                       ; 2 uses
  %scevgep239 = getelementptr i8, ptr %scevgep, i64 %i.an
  %scevgep240 = getelementptr i8, ptr %i.ad, i64 -4
  %scevgep241 = getelementptr i8, ptr %scevgep240, i64 %i.an
  %bound0 = icmp ult ptr %scevgep239, %i.ad
  %bound1 = icmp ult ptr %scevgep241, %.sroa.029.052.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader301, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, 9223372036854775800     ; 3 uses
  %i.ao = mul i64 %n.vec, -4                      ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.ao ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ad, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.029.052.i, i64 %i.ar ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep242, i64 -16 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %next.gep242, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.as, align 4, !tbaa !287, !alias.scope !2056, !noalias !2059
  %wide.load243 = load <4 x i32>, ptr %i.at, align 4, !tbaa !287, !alias.scope !2056, !noalias !2059
  %i.au = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.au, align 4, !tbaa !287, !alias.scope !2064, !noalias !2066
  store <4 x i32> %wide.load243, ptr %i.av, align 4, !tbaa !287, !alias.scope !2064, !noalias !2066
  store <4 x i32> zeroinitializer, ptr %i.as, align 4, !tbaa !287, !alias.scope !2056, !noalias !2059
  store <4 x i32> zeroinitializer, ptr %i.at, align 4, !tbaa !287, !alias.scope !2056, !noalias !2059
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2067

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i.preheader301

.lr.ph.i.i.i.preheader301:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.sroa.0.0.i.i.ph = phi ptr [ %.sroa.029.052.i, %vector.memcheck ], [ %.sroa.029.052.i, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.ph302 = phi ptr [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.i.i.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader301, %.lr.ph.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.0.0.i.i.ph, %.lr.ph.i.i.i.preheader301 ]
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.ph302, %.lr.ph.i.i.i.preheader301 ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 -4 ; 3 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !287, !noalias !2059
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !287, !noalias !2059
  store i32 0, ptr %i.ay, align 4, !tbaa !287, !noalias !2059
  %.not.i.i.i = icmp eq ptr %i.ay, %i.s
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2068

bb.g:                                             ; preds = %.lr.ph.i8
  %i.bb = getelementptr inbounds i8, ptr %.sroa.020.050.i, i64 -4 ; 5 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.029.052.i, i64 -4 ; 4 uses
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !287, !noalias !2053
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !287, !noalias !2053
  %.not36.i = icmp slt i32 %i.bd, %i.be
  br i1 %.not36.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds i8, ptr %.sroa.024.051.i, i64 -4 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !287, !noalias !2053
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.bg, align 4, !tbaa !287, !noalias !2053
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !287, !noalias !2053
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.bb, align 4, !tbaa !287, !noalias !2053
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !287, !noalias !2053
  store i32 %i.bk, ptr %i.bb, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.bf, align 4, !tbaa !287, !noalias !2053
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds i8, ptr %i.ad, i64 -4 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !287, !noalias !2053
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.bl, align 4, !tbaa !287, !noalias !2053
  %i.bo = load i32, ptr %i.bc, align 4, !tbaa !287, !noalias !2053
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !287, !noalias !2053
  store i32 0, ptr %i.bc, align 4, !tbaa !287, !noalias !2053
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi ptr [ %i.bl, %bb.i ], [ %i.bg, %bb.h ] ; 2 uses
  %i.bp = phi ptr [ %i.bm, %bb.i ], [ %i.bh, %bb.h ] ; 2 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.050.i, %bb.i ], [ %i.bb, %bb.h ] ; 2 uses
  %.sroa.024.1.i = phi ptr [ %.sroa.024.051.i, %bb.i ], [ %i.bf, %bb.h ] ; 2 uses
  %.sroa.029.1.i = phi ptr [ %i.bc, %bb.i ], [ %.sroa.029.052.i, %bb.h ] ; 2 uses
  %.not35.i = icmp eq ptr %.sink.i, %i.s
  br i1 %.not35.i, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, label %.lr.ph.i8, !llvm.loop !2069

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i: ; preds = %bb.j, %.lr.ph.i.i.i, %middle.block, %bb.f
  %.sroa.052.1 = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.z, %bb.f ], [ %i.ap, %middle.block ], [ %i.bp, %bb.j ]
  %.sroa.020.046.i = phi ptr [ %.sroa.020.050.i, %.lr.ph.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.020.050.i, %middle.block ], [ %.sroa.020.1.i, %bb.j ]
  %.sroa.024.044.i = phi ptr [ %.sroa.024.051.i, %.lr.ph.i.i.i ], [ %i.w, %bb.f ], [ %.sroa.024.051.i, %middle.block ], [ %.sroa.024.1.i, %bb.j ]
  %.sroa.029.042.i = phi ptr [ %.sroa.029.052.i, %.lr.ph.i.i.i ], [ %i.r, %bb.f ], [ %.sroa.029.052.i, %middle.block ], [ %.sroa.029.1.i, %bb.j ]
  store ptr %.sroa.020.046.i, ptr %5, align 8, !tbaa !1674, !noalias !2053
  %.pre = load ptr, ptr %2, align 8, !tbaa !1674
  br label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEEEET_SL_SL_RKNS0_15iterator_traitsISL_E10value_typeET0_.exit
  br i1 %or.cond76, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %.lcssa.i, i64 -4 ; 5 uses
  %i.bs = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 3 uses
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !287, !noalias !2070
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !287, !noalias !2070
  store i32 0, ptr %i.br, align 4, !tbaa !287, !noalias !2070
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !287, !noalias !2070
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !287, !noalias !2070
  store i32 0, ptr %i.bq, align 4, !tbaa !287, !noalias !2070
  %i.bv = icmp eq ptr %i.br, %i.s
  br i1 %i.bv, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.l, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %bb.l ] ; 3 uses
  %i.bw = phi ptr [ %i.cv, %bb.p ], [ %i.br, %bb.l ] ; 6 uses
  %.sroa.022.040.i = phi ptr [ %.sroa.022.1.i, %bb.p ], [ %i.r, %bb.l ] ; 10 uses
  %.sroa.016.039.i = phi ptr [ %.sroa.016.1.i, %bb.p ], [ %i.bq, %bb.l ] ; 5 uses
  %i.bx = phi ptr [ %i.cw, %bb.p ], [ %i.bs, %bb.l ]
  %i.by = icmp eq ptr %.sroa.016.039.i, %i.u
  br i1 %i.by, label %.lr.ph.i.i.i13.preheader, label %bb.m

.lr.ph.i.i.i13.preheader:                         ; preds = %.lr.ph.i10
  %i.bz = add i64 %i.n, -8
  %9 = shl i64 %indvar, 2
  %10 = add i64 %9, %i.t
  %11 = sub i64 %i.bz, %10                        ; 2 uses
  %12 = lshr i64 %11, 2
  %i.ca = add nuw nsw i64 %12, 1                  ; 2 uses
  %min.iters.check254 = icmp ult i64 %11, 124
  br i1 %min.iters.check254, label %.lr.ph.i.i.i13.preheader292, label %vector.memcheck245

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i13.preheader
  %scevgep246 = getelementptr i8, ptr %.sroa.022.040.i, i64 -4
  %i.cb = add i64 %i.n, -8
  %i.cc = sub i64 %i.cb, %i.t
  %13 = mul i64 %indvar, -4                       ; 2 uses
  %14 = add i64 %13, %i.cc
  %15 = lshr i64 %14, 2
  %16 = mul i64 %15, -4                           ; 2 uses
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %16
  %i.cd = getelementptr i8, ptr %.lcssa.i, i64 %13
  %scevgep248 = getelementptr i8, ptr %i.cd, i64 -8
  %scevgep249 = getelementptr i8, ptr %scevgep248, i64 %16
  %bound0250 = icmp ult ptr %scevgep247, %i.bw
  %bound1251 = icmp ult ptr %scevgep249, %.sroa.022.040.i
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.i.i13.preheader292, label %vector.ph255

vector.ph255:                                     ; preds = %vector.memcheck245
  %n.vec256 = and i64 %i.ca, 9223372036854775800  ; 3 uses
  %i.ce = mul i64 %n.vec256, -4                   ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bw, i64 %i.ce
  br label %vector.body257

vector.body257:                                   ; preds = %vector.body257, %vector.ph255
  %index258 = phi i64 [ 0, %vector.ph255 ], [ %index.next263, %vector.body257 ] ; 2 uses
  %i.ch = mul i64 %index258, -4                   ; 2 uses
  %next.gep259 = getelementptr i8, ptr %.sroa.022.040.i, i64 %i.ch ; 2 uses
  %next.gep260 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep260, i64 -16 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep260, i64 -32 ; 2 uses
  %wide.load261 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !287, !alias.scope !2073, !noalias !2076
  %wide.load262 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !287, !alias.scope !2073, !noalias !2076
  %i.ck = getelementptr inbounds i8, ptr %next.gep259, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep259, i64 -32
  store <4 x i32> %wide.load261, ptr %i.ck, align 4, !tbaa !287, !alias.scope !2081, !noalias !2083
  store <4 x i32> %wide.load262, ptr %i.cl, align 4, !tbaa !287, !alias.scope !2081, !noalias !2083
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !287, !alias.scope !2073, !noalias !2076
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !287, !alias.scope !2073, !noalias !2076
  %index.next263 = add nuw i64 %index258, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next263, %n.vec256
  br i1 %i.cm, label %middle.block264, label %vector.body257, !llvm.loop !2084

middle.block264:                                  ; preds = %vector.body257
  %cmp.n265 = icmp eq i64 %i.ca, %n.vec256
  br i1 %cmp.n265, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i.i.i13.preheader292

.lr.ph.i.i.i13.preheader292:                      ; preds = %vector.memcheck245, %.lr.ph.i.i.i13.preheader, %middle.block264
  %.sroa.0.0.i.i14.ph = phi ptr [ %.sroa.022.040.i, %vector.memcheck245 ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13.preheader ], [ %i.cf, %middle.block264 ]
  %.ph = phi ptr [ %i.bw, %vector.memcheck245 ], [ %i.bw, %.lr.ph.i.i.i13.preheader ], [ %i.cg, %middle.block264 ]
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13.preheader292, %.lr.ph.i.i.i13
  %.sroa.0.0.i.i14 = phi ptr [ %i.cp, %.lr.ph.i.i.i13 ], [ %.sroa.0.0.i.i14.ph, %.lr.ph.i.i.i13.preheader292 ]
  %i.cn = phi ptr [ %i.co, %.lr.ph.i.i.i13 ], [ %.ph, %.lr.ph.i.i.i13.preheader292 ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 4 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.i.i14, i64 -4 ; 3 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !287, !noalias !2076
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !287, !noalias !2076
  store i32 0, ptr %i.co, align 4, !tbaa !287, !noalias !2076
  %.not.i.i.i15 = icmp eq ptr %i.co, %i.s
  br i1 %.not.i.i.i15, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i.i.i13, !llvm.loop !2085

bb.m:                                             ; preds = %.lr.ph.i10
  %i.cr = getelementptr inbounds i8, ptr %.sroa.016.039.i, i64 -4 ; 4 uses
  %i.cs = getelementptr inbounds i8, ptr %.sroa.022.040.i, i64 -4 ; 4 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !287, !noalias !2070
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !287, !noalias !2070
  %.not28.i = icmp slt i32 %i.ct, %i.cu
  %i.cv = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 6 uses
  %i.cw = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !287, !noalias !2070
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !287, !noalias !2070
  store i32 0, ptr %i.cv, align 4, !tbaa !287, !noalias !2070
  br i1 %.not28.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = load i32, ptr %i.cr, align 4, !tbaa !287, !noalias !2070
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !287, !noalias !2070
  store i32 0, ptr %i.cr, align 4, !tbaa !287, !noalias !2070
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !287, !noalias !2070
  store i32 %i.cz, ptr %i.cv, align 4, !tbaa !287, !noalias !2070
  store i32 0, ptr %i.cs, align 4, !tbaa !287, !noalias !2070
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.016.1.i = phi ptr [ %.sroa.016.039.i, %bb.o ], [ %i.cr, %bb.n ] ; 2 uses
  %.sroa.022.1.i = phi ptr [ %i.cs, %bb.o ], [ %.sroa.022.040.i, %bb.n ] ; 2 uses
  %i.da = icmp eq ptr %i.cv, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.da, label %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit, label %.lr.ph.i10, !llvm.loop !2086

_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit: ; preds = %bb.p, %.lr.ph.i.i.i13, %middle.block264, %bb.k, %bb.l, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i, %bb.e
  %i.db = phi ptr [ %.pre, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.s, %bb.e ], [ %i.s, %middle.block264 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %.lr.ph.i.i.i13 ], [ %i.s, %bb.p ]
  %.sroa.052.0 = phi ptr [ %.sroa.052.1, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.r, %bb.e ], [ %i.cf, %middle.block264 ], [ %i.r, %bb.k ], [ %i.bs, %bb.l ], [ %i.cp, %.lr.ph.i.i.i13 ], [ %i.cw, %bb.p ]
  %.sroa.059.0 = phi ptr [ %.sroa.024.044.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.c, %bb.e ], [ %.sroa.016.039.i, %middle.block264 ], [ %i.c, %bb.k ], [ %i.bq, %bb.l ], [ %.sroa.016.039.i, %.lr.ph.i.i.i13 ], [ %.sroa.016.1.i, %bb.p ]
  %.sroa.069.0 = phi ptr [ %.sroa.029.042.i, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit.i ], [ %i.r, %bb.e ], [ %.sroa.022.040.i, %middle.block264 ], [ %i.r, %bb.k ], [ %i.r, %bb.l ], [ %.sroa.022.040.i, %.lr.ph.i.i.i13 ], [ %.sroa.022.1.i, %bb.p ]
  store ptr %i.db, ptr %1, align 8, !tbaa !1674
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit
  %.sroa.059.1 = phi ptr [ %.sroa.059.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.c, %bb.a ] ; 5 uses
  %.sroa.065.0 = phi ptr [ %.sroa.052.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.b, %bb.a ] ; 4 uses
  %.sroa.069.1 = phi ptr [ %.sroa.069.0, %_ZN5boost7movelib15detail_adaptive55op_buffered_partial_merge_and_swap_to_range1_and_bufferINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_T_SN_RT0_SO_SP_RSM_T2_T3_.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.dc = load ptr, ptr %4, align 8, !tbaa !1674  ; 3 uses
  %i.dd = load ptr, ptr %1, align 8, !tbaa !1674  ; 4 uses
  %.not.i21 = icmp eq ptr %.sroa.059.1, %i.dc
  %.not17.i = icmp eq ptr %.sroa.065.0, %.sroa.069.1
  %or.cond78 = select i1 %.not.i21, i1 true, i1 %.not17.i ; 2 uses
  br i1 %.not, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr %5, align 8, !tbaa !1674, !noalias !2087
  br label %.outer.i

.outer.i:                                         ; preds = %.split.i, %bb.s
  %.sroa.030.0 = phi ptr [ %i.dd, %bb.s ], [ %i.dk, %.split.i ]
  %.sroa.010.0.ph.i = phi ptr [ %i.de, %bb.s ], [ %i.df, %.split.i ] ; 2 uses
  %.sroa.013.0.ph.i = phi ptr [ %.sroa.059.1, %bb.s ], [ %i.dj, %.split.i ] ; 2 uses
  %.sroa.017.0.ph.i = phi ptr [ %.sroa.069.1, %bb.s ], [ %.sroa.017.0.i, %.split.i ]
  %i.df = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i, i64 -4 ; 5 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.outer.i
  %.sroa.030.1 = phi ptr [ %.sroa.030.0, %.outer.i ], [ %i.dm, %bb.u ] ; 2 uses
  %.sroa.017.0.i = phi ptr [ %.sroa.017.0.ph.i, %.outer.i ], [ %i.dg, %bb.u ] ; 3 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 5 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !287, !noalias !2087 ; 2 uses
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !287, !noalias !2087 ; 2 uses
  %.not26.i = icmp slt i32 %i.dh, %i.di
  br i1 %.not26.i, label %bb.u, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.dj = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i, i64 -4 ; 5 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 3 uses
  store i32 %i.dh, ptr %i.dk, align 4, !tbaa !287, !noalias !2087
  store i32 0, ptr %i.df, align 4, !tbaa !287, !noalias !2087
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !287, !noalias !2087
  store i32 %i.dl, ptr %i.df, align 4, !tbaa !287, !noalias !2087
  store i32 0, ptr %i.dj, align 4, !tbaa !287, !noalias !2087
  %.not28.i18 = icmp eq ptr %i.dj, %i.dc
  br i1 %.not28.i18, label %.loopexit.i19, label %.outer.i, !llvm.loop !1965

bb.u:                                             ; preds = %bb.t
  %i.dm = getelementptr inbounds i8, ptr %.sroa.030.1, i64 -4 ; 3 uses
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !287, !noalias !2087
  store i32 0, ptr %i.dg, align 4, !tbaa !287, !noalias !2087
  %.not27.i20 = icmp eq ptr %i.dg, %.sroa.065.0
  br i1 %.not27.i20, label %.loopexit.i19, label %bb.t, !llvm.loop !1965

.loopexit.i19:                                    ; preds = %.split.i, %bb.u
  %.sroa.030.2 = phi ptr [ %i.dm, %bb.u ], [ %i.dk, %.split.i ]
  %.sroa.017.124.i = phi ptr [ %i.dg, %bb.u ], [ %.sroa.017.0.i, %.split.i ]
  %.sroa.013.123.i = phi ptr [ %.sroa.013.0.ph.i, %bb.u ], [ %i.dj, %.split.i ]
  %.sroa.010.122.i = phi ptr [ %.sroa.010.0.ph.i, %bb.u ], [ %i.df, %.split.i ]
  store ptr %.sroa.010.122.i, ptr %5, align 8, !tbaa !1674, !noalias !2087
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit

bb.v:                                             ; preds = %bb.q
  br i1 %or.cond78, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.v, %bb.w
  %.sroa.023.0.ph = phi ptr [ %i.dr, %bb.w ], [ %i.dd, %bb.v ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ds, %bb.w ], [ %.sroa.059.1, %bb.v ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.w ], [ %.sroa.069.1, %bb.v ]
  %i.dn = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.x
  %.sroa.023.0 = phi ptr [ %i.dr, %bb.x ], [ %.sroa.023.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.do, %bb.x ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 5 uses
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !287, !noalias !2090 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !287, !noalias !2090 ; 2 uses
  %.not18.i = icmp slt i32 %i.dp, %i.dq
  %i.dr = getelementptr inbounds i8, ptr %.sroa.023.0, i64 -4 ; 6 uses
  br i1 %.not18.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.ds = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 4 uses
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !287, !noalias !2090
  store i32 0, ptr %i.ds, align 4, !tbaa !287, !noalias !2090
  %i.dt = icmp eq ptr %i.ds, %i.dc
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !1974

bb.x:                                             ; preds = %.preheader.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !287, !noalias !2090
  store i32 0, ptr %i.do, align 4, !tbaa !287, !noalias !2090
  %i.du = icmp eq ptr %i.do, %.sroa.065.0
  br i1 %i.du, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit, label %.preheader.i, !llvm.loop !1974

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEES8_S8_NS0_10antistableINS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEENS0_7move_opEEET1_RT_SN_RT0_SP_SQ_SM_T2_T3_.exit: ; preds = %bb.x, %bb.w, %bb.v, %.loopexit.i19, %bb.r
  %.sroa.037.0 = phi ptr [ %.sroa.030.2, %.loopexit.i19 ], [ %i.dd, %bb.r ], [ %i.dd, %bb.v ], [ %i.dr, %bb.w ], [ %i.dr, %bb.x ]
  %.sroa.059.2 = phi ptr [ %.sroa.013.123.i, %.loopexit.i19 ], [ %.sroa.059.1, %bb.r ], [ %.sroa.059.1, %bb.v ], [ %.sroa.07.0.i.ph, %bb.x ], [ %i.ds, %bb.w ]
  %.sroa.069.2 = phi ptr [ %.sroa.017.124.i, %.loopexit.i19 ], [ %.sroa.069.1, %bb.r ], [ %.sroa.069.1, %bb.v ], [ %i.do, %bb.x ], [ %.sroa.012.0.i, %bb.w ]
  store ptr %.sroa.037.0, ptr %1, align 8, !tbaa !1674
  store ptr %.sroa.069.2, ptr %6, align 8, !tbaa !1674
  store ptr %.sroa.065.0, ptr %7, align 8, !tbaa !1674
  store ptr %.sroa.059.2, ptr %3, align 8, !tbaa !1674
  %i.dv = load ptr, ptr %1, align 8, !tbaa !1674
  store ptr %i.dv, ptr %0, align 8, !tbaa !1674
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test24movable_and_copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7swap_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::reverse_iterator.67") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef align 8 dead_on_return %5, ptr noundef align 8 dead_on_return %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %11) local_unnamed_addr #5 comdat {
bb.a:
  %12 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.67", align 8 ; 2 uses
  %.not98 = icmp eq i64 %8, 0
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12merge_uniqueIPKS3_NS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEENSG_11enable_if_cIXaantsr3dtl17is_input_iteratorIT_EE5valuesr3dtl7is_sameIS3_NS_7movelib15iterator_traitsISL_E10value_typeEEE5valueEvE4typeESL_SL_T0_:bb.a
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !287
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.07.i.i.i32.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !287
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bv = add nuw i64 %.07.i.i.i32.i, 4           ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !329

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i
  %.07.i.i.i32.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i ], [ %i.bv, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.07.i.i.i32.i.epil = phi i64 [ %.07.i.i.i32.i.epil.init, %.epil.preheader ], [ %i.bz, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.07.i.i.i32.i.epil
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !287
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.bz = add nuw i64 %.07.i.i.i32.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i, label %bb.m, !llvm.loop !3210

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.loopexit.unr-lcssa, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bc

_ZN5boost7movelib14adaptive_mergeIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_SE_T0_PNS0_15iterator_traitsISE_E10value_typeENS0_9iter_sizeISE_E4typeE.exit: ; preds = %bb.c, %bb.g, %bb.a, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE24priv_set_difference_backIPKS3_NS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SK_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.15", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator.17", align 8 ; 2 uses
  %5 = alloca %"class.boost::container::vec_iterator.15", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.not38 = icmp eq ptr %1, %2
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !272    ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !285
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.aj, %bb.i ] ; 3 uses
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.ak, %bb.i ] ; 3 uses
  %.042 = phi ptr [ %i.d, %.lr.ph ], [ %.2, %bb.i ] ; 4 uses
  %.02541 = phi ptr [ %i.b, %.lr.ph ], [ %.227, %bb.i ] ; 5 uses
  %.02840 = phi ptr [ %i.b, %.lr.ph ], [ %.230, %bb.i ] ; 4 uses
  %.03139 = phi ptr [ %1, %.lr.ph ], [ %.233, %bb.i ] ; 6 uses
  %i.h = icmp eq ptr %.02541, %.042
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !3211)
  %i.i = load i64, ptr %i.a, align 8, !tbaa !285, !noalias !3211
  %i.j = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.i
  store ptr %i.j, ptr %4, align 8, !tbaa !277, !alias.scope !3211
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %.03139 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_PKS3_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.15") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.n, ptr %.03139)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.o = load i32, ptr %.03139, align 4, !tbaa !287 ; 3 uses
  %i.p = load i32, ptr %.02541, align 4, !tbaa !287 ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.a, align 8, !tbaa !285  ; 4 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !276
  %.not.i = icmp eq i64 %i.r, %i.s
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  store i32 %i.o, ptr %i.t, align 4, !tbaa !287
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.w = add i64 %i.r, 1
  store i64 %i.w, ptr %i.a, align 8, !tbaa !285
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.15") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.x, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %.03139)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pre = load ptr, ptr %0, align 8, !tbaa !272
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit: ; preds = %bb.f, %bb.g
  %i.y = phi ptr [ %i.f, %bb.f ], [ %.pre, %bb.g ] ; 6 uses
  %.not36 = icmp eq ptr %.02840, %i.y             ; 3 uses
  %i.z = ptrtoint ptr %.02541 to i64
  %i.aa = ptrtoint ptr %.02840 to i64             ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  %i.ad = ptrtoint ptr %.042 to i64
  %i.ae = sub i64 %i.ad, %i.aa
  %i.af = getelementptr inbounds i8, ptr %i.y, i64 %i.ae
  %.129 = select i1 %.not36, ptr %.02840, ptr %i.y
  %.126 = select i1 %.not36, ptr %.02541, ptr %i.ac
  %.1 = select i1 %.not36, ptr %.042, ptr %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %.03139, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ah = icmp slt i32 %i.p, %i.o
  %spec.select.idx = select i1 %i.ah, i64 0, i64 4
  %spec.select = getelementptr inbounds nuw i8, ptr %.03139, i64 %spec.select.idx
  %i.ai = getelementptr inbounds nuw i8, ptr %.02541, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit
  %i.aj = phi ptr [ %i.y, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %i.f, %bb.h ]
  %i.ak = phi ptr [ %i.y, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %i.g, %bb.h ]
  %.233 = phi ptr [ %i.ag, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %spec.select, %bb.h ] ; 2 uses
  %.230 = phi ptr [ %.129, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %.02840, %bb.h ]
  %.227 = phi ptr [ %.126, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %i.ai, %bb.h ]
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE12emplace_backIJRKS3_EEERS3_DpOT_.exit ], [ %.042, %bb.h ]
  %.not = icmp eq ptr %.233, %2
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !3214

.loopexit:                                        ; preds = %bb.i, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl31flat_tree_adopt_sequence_uniqueINS0_12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_9allocatorIS5_Lj2ELj0EEEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_OSG_T0_NSC_5bool_ILb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !285  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit

_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit: ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.b, 2
  %i.d = load ptr, ptr %1, align 8, !tbaa !272    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.f = lshr i64 %i.b, 1
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  tail call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef %i.d, ptr noundef nonnull %i.e, i64 noundef %i.h, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !285, !noalias !3215 ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !272, !noalias !3218 ; 6 uses
  %.idx17 = shl i64 %.pre, 2                      ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx17 ; 5 uses
  switch i64 %.pre, label %.lr.ph.i.preheader [
    i64 0, label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
    i64 1, label %.loopexit.i
  ]

.lr.ph.i.preheader:                               ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit
  %.sroa.0.015.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr i8, ptr %i.i, i64 %.idx17
  %scevgep = getelementptr i8, ptr %i.k, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.f ] ; 2 uses
  %i.l = phi ptr [ %i.i, %.lr.ph.i.preheader ], [ %i.ak, %bb.f ] ; 7 uses
  %.sroa.0.017.i = phi ptr [ %.sroa.0.015.i, %.lr.ph.i.preheader ], [ %.sroa.0.0.i, %bb.f ] ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !287, !noalias !3221
  %i.n = load i32, ptr %.sroa.0.017.i, align 4, !tbaa !287, !noalias !3221
  %.not9.i = icmp slt i32 %i.m, %i.n
  br i1 %.not9.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 4 uses
  %.not1018.i = icmp eq ptr %i.o, %i.j
  br i1 %.not1018.i, label %.loopexit.i, label %.lr.ph19.i.preheader

.lr.ph19.i.preheader:                             ; preds = %.preheader.i
  %i.p = add i64 %.idx17, -12                     ; 2 uses
  %2 = shl i64 %indvar, 2                         ; 2 uses
  %i.q = sub i64 %i.p, %2
  %i.r = and i64 %i.q, 4
  %lcmp.mod.not.not = icmp eq i64 %i.r, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph19.i.prol, label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol:                                  ; preds = %.lr.ph19.i.preheader
  %i.s = load i32, ptr %i.l, align 4, !tbaa !287, !noalias !3221
  %i.t = load i32, ptr %i.o, align 4, !tbaa !287, !noalias !3221 ; 2 uses
  %.not11.i.prol = icmp slt i32 %i.s, %i.t
  br i1 %.not11.i.prol, label %bb.b, label %.lr.ph19.i.prol.loopexit.unr-lcssa

bb.b:                                             ; preds = %.lr.ph19.i.prol
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4, !tbaa !287, !noalias !3221
  store i32 0, ptr %i.o, align 4, !tbaa !287, !noalias !3221
  br label %.lr.ph19.i.prol.loopexit.unr-lcssa

.lr.ph19.i.prol.loopexit.unr-lcssa:               ; preds = %bb.b, %.lr.ph19.i.prol
  %i.v = phi ptr [ %i.u, %bb.b ], [ %i.l, %.lr.ph19.i.prol ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8
  br label %.lr.ph19.i.prol.loopexit

.lr.ph19.i.prol.loopexit:                         ; preds = %.lr.ph19.i.prol.loopexit.unr-lcssa, %.lr.ph19.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %i.l, %.lr.ph19.i.preheader ], [ %i.v, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %.unr52 = phi ptr [ %i.o, %.lr.ph19.i.preheader ], [ %i.w, %.lr.ph19.i.prol.loopexit.unr-lcssa ]
  %i.x = icmp eq i64 %i.p, %2
  br i1 %i.x, label %.loopexit.i, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.lr.ph19.i.prol.loopexit, %bb.e
  %i.y = phi ptr [ %i.ai, %bb.e ], [ %.unr, %.lr.ph19.i.prol.loopexit ] ; 3 uses
  %i.z = phi ptr [ %i.aj, %bb.e ], [ %.unr52, %.lr.ph19.i.prol.loopexit ] ; 4 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !287, !noalias !3221
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !287, !noalias !3221 ; 2 uses
  %.not11.i = icmp slt i32 %i.aa, %i.ab
  br i1 %.not11.i, label %bb.c, label %.lr.ph19.i.1

bb.c:                                             ; preds = %.lr.ph19.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !287, !noalias !3221
  store i32 0, ptr %i.z, align 4, !tbaa !287, !noalias !3221
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.c, %.lr.ph19.i
  %i.ad = phi ptr [ %i.ac, %bb.c ], [ %i.y, %.lr.ph19.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !287, !noalias !3221
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !287, !noalias !3221 ; 2 uses
  %.not11.i.1 = icmp slt i32 %i.af, %i.ag
  br i1 %.not11.i.1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph19.i.1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !287, !noalias !3221
  store i32 0, ptr %i.ae, align 4, !tbaa !287, !noalias !3221
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph19.i.1
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ %i.ad, %.lr.ph19.i.1 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.not10.i.1 = icmp eq ptr %i.aj, %i.j
  br i1 %.not10.i.1, label %.loopexit.i, label %.lr.ph19.i, !llvm.loop !3224

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 4 ; 2 uses
  %.not8.i = icmp eq ptr %.sroa.0.0.i, %i.j
  %indvar.next = add i64 %indvar, 1
  br i1 %.not8.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3225

.loopexit.i:                                      ; preds = %bb.f, %.lr.ph19.i.prol.loopexit, %bb.e, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.preheader.i
  %i.al = phi ptr [ %i.ai, %bb.e ], [ %i.l, %.preheader.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ], [ %.lcssa.unr, %.lr.ph19.i.prol.loopexit ], [ %scevgep, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  br label %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit

_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit: ; preds = %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit, %.loopexit.i
  %i.an = phi ptr [ %i.am, %.loopexit.i ], [ %i.i, %_ZN5boost7movelib7pdqsortIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_.exit ] ; 4 uses
  %.not.i10 = icmp eq ptr %i.an, %i.j
  br i1 %.not.i10, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit
  %i.ao = ptrtoint ptr %i.j to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 5 uses
  %xtraiter53 = and i64 %i.ar, 3                  ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %.lr.ph.i8.i.prol
  %.05.i.i.prol = phi i64 [ %i.as, %.lr.ph.i8.i.prol ], [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.av, %.lr.ph.i8.i.prol ], [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i8.i.prol ], [ 0, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  %i.as = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !287, !noalias !3226
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter53
  br i1 %prol.iter.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !3229

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %.05.i.i.unr = phi i64 [ %i.ar, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.as, %.lr.ph.i8.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.an, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.av, %.lr.ph.i8.i.prol ]
  %i.aw = icmp ult i64 %i.ar, 4
  br i1 %i.aw, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.05.i.i = phi i64 [ %i.be, %.lr.ph.i8.i ], [ %.05.i.i.unr, %.lr.ph.i8.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.bg, %.lr.ph.i8.i ], [ %storemerge4.i.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !287, !noalias !3226
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226 ; 4 uses
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !287, !noalias !3226
  %i.ba = add i32 %i.ax, -2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.bb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.bb, align 4, !tbaa !287, !noalias !3226
  %i.bc = add i32 %i.ax, -3
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.bd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.be = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !287, !noalias !3226
  %i.bf = add i32 %i.ax, -4
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289, !noalias !3226
  %i.bg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i9.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i9.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i8.i, !llvm.loop !293

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i8.i, %.lr.ph.i8.i.prol.loopexit
  %i.bh = sub i64 %.pre, %i.ar
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !275, !noalias !3226
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %bb.a, %_ZN5boost7movelib6uniqueINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEENS0_6negateINS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEEET_SI_SI_T0_.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %.not.i.i.i = icmp eq ptr %1, %0
  br i1 %.not.i.i.i, label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_9allocatorIS3_Lj2ELj0EEEvEaSEOS6_.exit, label %bb.g, !prof !35

bb.g:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit
  tail call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE32priv_move_assign_steal_or_assignIS7_EEvONS1_IS3_T_vEENS_11move_detail17integral_constantIbLb0EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  br label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_9allocatorIS3_Lj2ELj0EEEvEaSEOS6_.exit

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_9allocatorIS3_Lj2ELj0EEEvEaSEOS6_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_NS0_9iter_sizeISF_E4typeEb(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 24
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -4 ; 9 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8 ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -12 ; 6 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.3, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.0.lcssa, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173.thread, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %._crit_edge, %bb.d
  %.037.i = phi ptr [ %.0.i, %bb.d ], [ %.034.i, %._crit_edge ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.i = load i32, ptr %.037.i, align 4, !tbaa !287 ; 3 uses
  %i.j = load i32, ptr %.pn36.i, align 4, !tbaa !287
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !287
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.n = load i32, ptr %.pn36.i, align 4, !tbaa !287
  store i32 %i.n, ptr %.037.i, align 4, !tbaa !287
  store i32 0, ptr %.pn36.i, align 4, !tbaa !287
  %.not2729.i = icmp eq ptr %.pn36.i, %.0.lcssa
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.02231.i = phi ptr [ %i.o, %bb.c ], [ %.pn36.i, %bb.b ] ; 3 uses
  %i.o = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !287  ; 2 uses
  %i.q = icmp slt i32 %i.i, %i.p
  br i1 %i.q, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.022.lcssa.i = phi ptr [ %.0.lcssa, %bb.b ], [ %.02231.i, %.lr.ph.i ], [ %.0.lcssa, %bb.c ]
  store i32 %i.i, ptr %.022.lcssa.i, align 4, !tbaa !287
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  %i.s = add i32 %i.r, -1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !289
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.p, ptr %.02231.i, align 4, !tbaa !287
  store i32 0, ptr %i.o, align 4, !tbaa !287
  %.not27.i = icmp eq ptr %i.o, %.0.lcssa
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1401

bb.d:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEbT_SF_T0_.exit173.thread, label %.lr.ph38.i, !llvm.loop !1402

bb.e:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit
  %i.t = phi i64 [ %i.d, %.lr.ph ], [ %.pre-phi226, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ] ; 3 uses
  %i.u = phi i64 [ %i.b, %.lr.ph ], [ %.pre-phi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ]
  %.0204 = phi ptr [ %0, %.lr.ph ], [ %.3, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ] ; 50 uses
  %.0102203 = phi i64 [ %2, %.lr.ph ], [ %.4, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ] ; 5 uses
  %.0106202 = phi i1 [ %3, %.lr.ph ], [ false, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit ] ; 2 uses
  %i.v = lshr i64 %i.t, 1
  %i.w = icmp ugt i64 %i.t, 128
end_hunk_4
