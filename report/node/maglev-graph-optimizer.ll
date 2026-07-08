inline.NumInlined: 4234
inline.NumDeleted: 1712
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_20CheckedNumberToInt32EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %.lr.ph37.2, label %._crit_edge38, !prof !112

.lr.ph37.2:                                       ; preds = %.lr.ph37.1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, 7696581394432
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph37.3, label %._crit_edge38, !prof !112

.lr.ph37.3:                                       ; preds = %.lr.ph37.2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.ck, %i.b
  br i1 %.not.3, label %._crit_edge, label %.lr.ph52

.critedge.i:                                      ; preds = %bb.c, %bb.e, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.d, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = sub i64 %i.co, %i.cq
  %i.cs = icmp ult i64 %i.cr, 80
  br i1 %i.cs, label %bb.f, label %_ZN2v88internal6maglev8NodeBase3NewINS1_20CheckedNumberToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !5

bb.f:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 noundef 80) #18
  %.pre.i.i.i = load i64, ptr %i.cp, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_20CheckedNumberToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_20CheckedNumberToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.f
  %i.ct = phi i64 [ %.pre.i.i.i, %bb.f ], [ %i.cq, %.critedge.i ] ; 2 uses
  %i.cu = add i64 %i.ct, 80
  store i64 %i.cu, ptr %i.cp, align 8
  %i.cv = add i64 %i.ct, 56
  %i.cw = inttoptr i64 %i.cv to ptr               ; 6 uses
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 9904194650298, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store i32 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 8
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = and i64 %i.da, 7696581394432
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_20CheckedNumberToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.g, !prof !107

bb.g:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_20CheckedNumberToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #17
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_20CheckedNumberToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_20CheckedNumberToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.dd = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 16 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.de, align 8
  store ptr %storemerge31.lcssa, ptr %i.dd, align 8
  %i.dh = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ao, ptr %i.a, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.cw, ptr %4, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.dj, align 8
  %i.dk = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dl = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE28AttachExtraInfoAndAddToGraphINS1_20CheckedNumberToInt32EEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cw)
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_20CheckedNumberToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_20CheckedNumberToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_20CheckedNumberToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.dl, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_20CheckedNumberToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.bb, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE28AttachExtraInfoAndAddToGraphINS1_20CheckedNumberToInt32EEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE20AttachEagerDeoptInfoINS1_20CheckedNumberToInt32EEEvPT_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE20AttachEagerDeoptInfoINS1_20CheckedNumberToInt32EEEvPT_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = lshr i64 %i.g, 32
  %i.i = trunc i64 %i.h to i16                    ; 2 uses
  %i.j = and i16 %i.i, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.j, 0
  %.neg.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 0, i64 -48
  %i.k = and i16 %i.i, 6
  %i.l = icmp eq i16 %i.k, 4
  %.neg2.i.i.i.i = select i1 %i.l, i64 -56, i64 0
  %.neg3.i.i.i.i = add nsw i64 %.neg.i.i.i.i, %.neg2.i.i.i.i
  %i.m = trunc i64 %i.g to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 -8
  %narrow.i.i.i.i.i = sub nsw i32 1, %i.n
  %i.p = sext i32 %narrow.i.i.i.i.i to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.p
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = add i64 %.neg3.i.i.i.i, %i.r
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.y to i16                    ; 2 uses
  %i.aa = and i16 %i.z, 2
  %.not.i.i.i.i2.i = icmp eq i16 %i.aa, 0
  %.neg.i.i.i3.i = select i1 %.not.i.i.i.i2.i, i64 0, i64 -48
  %i.ab = and i16 %i.z, 6
  %i.ac = icmp eq i16 %i.ab, 4
  %.neg2.i.i.i4.i = select i1 %i.ac, i64 -56, i64 0
  %.neg3.i.i.i5.i = add nsw i64 %.neg.i.i.i3.i, %.neg2.i.i.i4.i
  %i.ad = trunc i64 %i.x to i32
  %i.ae = lshr i32 %i.ad, 16
  %i.af = getelementptr inbounds i8, ptr %1, i64 -8
  %narrow.i.i.i.i6.i = sub nsw i32 1, %i.ae
  %i.ag = sext i32 %narrow.i.i.i.i6.i to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %.neg3.i.i.i5.i, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  tail call void @_ZN2v88internal6maglev9DeoptInfoC2EPNS0_4ZoneEPNS1_10DeoptFrameENS0_8compiler14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(45) %i.ak, ptr noundef %i.e, ptr noundef %i.u, ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i) #18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 62, ptr %i.al, align 4
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1)
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.d) #18 ; 2 uses
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.e, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = xor i32 %2, -1                           ; 2 uses
  %i.g = and i32 %i.e, %i.f
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.b, ptr noundef %i.d, ptr noundef nonnull %1) ; 4 uses
  %.pre.i = load i32, ptr %i.i, align 8           ; 3 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %.pre.i, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = and i32 %.pre.i, %i.f
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %.pre.i, %2                      ; 2 uses
  store i32 %i.l, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 65535
  %.not29.i = icmp eq i64 %i.o, 142
  br i1 %.not29.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, %i.l
  store i32 %i.r, ptr %i.i, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %4 = lshr i32 %2, 6
  %i.s = and i32 %4, 31
  %switch.shifted = lshr i32 -2147483517, %i.s
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i8 1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store i8 1, ptr %i.u, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit

_ZN2v88internal6maglev16KnownNodeAspects10EnsureTypeEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeENS1_8NodeTypeEPS8_.exit: ; preds = %bb.i, %bb.c, %bb.f, %bb.j
  %.1.i = phi i1 [ true, %bb.c ], [ true, %bb.f ], [ false, %bb.j ], [ false, %bb.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_14UnsafeSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !93, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_14UnsafeSmiUntagEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_14UnsafeSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #18
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_14UnsafeSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_14UnsafeSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = or i64 %i.r, 9895604650136
  store ptr null, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not.i10 = icmp eq i64 %2, 0
  br i1 %.not.i10, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_14UnsafeSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14UnsafeSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.011.i11 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.x = load ptr, ptr %.011.i11, align 8         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 7696581394432
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.x, i32 noundef 0), !inline_history !114
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.x, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8
  %i.ag = sub nsw i64 0, %indvars.iv
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ag
  store ptr %.0.i, ptr %i.ah, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i11, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, %i.v
  br i1 %.not.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_14UnsafeSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_14UnsafeSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %_ZN2v88internal6maglev8NodeBase3NewINS1_14UnsafeSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.q)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_14UnsafeSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.q, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_14UnsafeSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !93, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_15CheckedSmiUntagEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 72                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #18
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.f, 48
  %i.p = add i64 %i.n, %i.g
  store i64 %i.p, ptr %i.j, align 8
  %i.q = add i64 %i.o, %i.n
  %i.r = inttoptr i64 %i.q to ptr                 ; 5 uses
  %i.s = shl i64 %2, 16
  %i.t = or i64 %i.s, 9904194584727
  store ptr null, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i32 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not.i10 = icmp eq i64 %2, 0
  br i1 %.not.i10, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.011.i11 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.y = load ptr, ptr %.011.i11, align 8         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 7696581394432
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14GetTaggedValueEPNS1_9ValueNodeENS1_20UseReprHintRecordingE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.y, i32 noundef 0), !inline_history !115
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi ptr [ %i.y, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8
  %i.ah = sub nsw i64 0, %indvars.iv
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ah
  store ptr %.0.i, ptr %i.ai, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i11, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, %i.w
  br i1 %.not.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %bb.e

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, %_ZN2v88internal6maglev8NodeBase3NewINS1_15CheckedSmiUntagEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.ak = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE28AttachExtraInfoAndAddToGraphINS1_15CheckedSmiUntagEEEPT_S8_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.r)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.ak, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_15CheckedSmiUntagESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_14UnsafeSmiUntagEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.v8::internal::maglev::KnownNodeAspects::AvailableExpression", align 8 ; 5 uses
  %.fr = freeze i64 %3                            ; 3 uses
  %.idx = shl i64 %.fr, 3                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %.not33 = icmp eq i64 %.fr, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit
  %.02435.us = phi ptr [ %i.i, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ], [ %2, %.lr.ph ] ; 2 uses
  %i.c = load ptr, ptr %.02435.us, align 8        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 7696581394432
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %.19.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !100

_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i, %i.al
  br i1 %i.ap, label %.critedge.i, label %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i

_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp ult i32 %i.ah, %i.ar
  br i1 %i.as, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %trunc.i = trunc i64 %i.aw to i16
  switch i16 %trunc.i, label %.critedge.i [
    i16 67, label %bb.c
    i16 168, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.al) #18 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 424 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, -1
  store i64 %i.ba, ptr %i.ay, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.bb = and i64 %i.aw, 4294901760
  %i.bc = icmp eq i64 %i.bb, 65536
  br i1 %i.bc, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.d
  %i.bd = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8
  %.not32.i = icmp eq ptr %storemerge31.lcssa, %i.be
  br i1 %.not32.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

.lr.ph55.new:                                     ; preds = %.prol.loopexit, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1
  %i.bf = phi ptr [ %i.br, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1 ], [ %.unr, %.prol.loopexit ] ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %sum.shift = lshr i64 %i.bi, 40
  %i.bj = trunc i64 %sum.shift to i8
  %i.bk = and i8 %i.bj, 7
  %.off = add nsw i8 %i.bk, -3
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, label %._crit_edge40, !prof !104

._crit_edge40:                                    ; preds = %.prol.preheader, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread, %.lr.ph55.new, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #17
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread: ; preds = %.lr.ph55.new
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i64, ptr %i.bn, align 8
  %sum.shift.1 = lshr i64 %i.bo, 40
  %i.bp = trunc i64 %sum.shift.1 to i8
  %i.bq = and i8 %i.bp, 7
  %.off.1 = add nsw i8 %i.bq, -3
  %switch.1 = icmp ult i8 %.off.1, 2
  br i1 %switch.1, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1, label %._crit_edge40, !prof !104

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.1: ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.br, %i.b
  br i1 %.not.1, label %._crit_edge, label %.lr.ph55.new

.critedge.i:                                      ; preds = %bb.b, %bb.d, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.c, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = icmp ult i64 %i.by, 32
  br i1 %i.bz, label %bb.e, label %_ZN2v88internal6maglev8NodeBase3NewINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !5

bb.e:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, i64 noundef 32) #18
  %.pre.i.i.i = load i64, ptr %i.bw, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.e
  %i.ca = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.bx, %.critedge.i ] ; 2 uses
  %i.cb = add i64 %i.ca, 32
  store i64 %i.cb, ptr %i.bw, align 8
  %i.cc = add i64 %i.ca, 8
  %i.cd = inttoptr i64 %i.cc to ptr               ; 7 uses
  store ptr null, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 1099511693480, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 0, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %sum.shift.i = lshr i64 %i.ch, 40
  %i.ci = trunc i64 %sum.shift.i to i8
  %i.cj = and i8 %i.ci, 7
  %.off.i = add nsw i8 %i.cj, -3
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_27TruncateHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.f, !prof !94

bb.f:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12) #17
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_27TruncateHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.ck = getelementptr inbounds i8, ptr %i.cd, i64 -8
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 16 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 8
  store ptr %storemerge31.lcssa, ptr %i.ck, align 8
  %i.co = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ah, ptr %i.a, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 376
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %i.cd, ptr %4, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.cq, align 8
  %i.cr = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cd)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 894
  store i8 1, ptr %i.cu, align 2
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_27TruncateHoleyFloat64ToInt32EJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_27TruncateHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.cd, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25SetNodeInputsNoConversionINS1_27TruncateHoleyFloat64ToInt32ESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.au, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.g = icmp ult i32 %2, 4
  %i.h = and i32 %2, -20
  %i.i = icmp eq i32 %i.h, 0
  %..i = select i1 %i.i, i8 2, i8 3
  %.0.i = select i1 %i.g, i8 0, i8 %..i
  store i8 %.0.i, ptr %i.c, align 1
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.l) #18 ; 2 uses
  %i.n = xor i32 %2, -1                           ; 2 uses
  %i.o = and i32 %i.m, %i.n
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.r = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.q, ptr noundef %i.l, ptr noundef nonnull %1) ; 4 uses
  %.pre.i.i = load i32, ptr %i.r, align 8         ; 3 uses
  %i.s = and i32 %.pre.i.i, %i.n
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %.pre.i.i, %2                    ; 2 uses
  store i32 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 65535
  %.not29.i.i = icmp eq i64 %i.x, 142
  br i1 %.not29.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, %i.u
  store i32 %i.aa, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %3 = lshr i32 %2, 6
  %i.ab = and i32 %3, 31
  switch i32 %i.ab, label %bb.f [
    i32 0, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 1, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 7, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
    i32 31, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i8 1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 432
  store i8 1, ptr %i.ad, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit

bb.g:                                             ; preds = %bb.a, %bb.b
  %.017.ph = phi i32 [ %.pre.i.i, %bb.b ], [ %i.m, %bb.a ]
  %i.ae = icmp eq i32 %.017.ph, 1
  br i1 %i.ae, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %0, align 8               ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 464
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 456 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.h ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp ult ptr %i.al, %1                  ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.am, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.am, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !16

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.an = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.aj
  br i1 %i.an, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp ult ptr %1, %i.ap
  br i1 %i.aq, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.h
  %i.ar = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.ag) #18
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 40
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, 65535
  %.not = icmp eq i64 %i.aw, 142
  br i1 %.not, label %bb.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit

bb.i:                                             ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = and i32 %i.ay, %i.at
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.i
  %.0.i.i = phi i32 [ %i.ar, %select.unfold.i.i ], [ %i.az, %bb.i ], [ %i.at, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.ba = icmp eq i32 %.0.i.i, 0
  br i1 %i.ba, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit
  %i.bb = load ptr, ptr %0, align 8
  %i.bc = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.bd = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.bc) #18
  %i.be = icmp ult i32 %i.bd, 2
  br i1 %i.be, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 152
  %i.bg = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.bf, ptr noundef %i.bc, ptr noundef nonnull %1) ; 3 uses
  %.pre.i.i13 = load i32, ptr %i.bg, align 8      ; 2 uses
  %i.bh = icmp ult i32 %.pre.i.i13, 2
  br i1 %i.bh, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = and i32 %.pre.i.i13, 1                  ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = and i64 %i.bk, 65535
  %.not29.i.i14 = icmp eq i64 %i.bl, 142
  br i1 %.not29.i.i14, label %bb.m, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, %i.bi
  store i32 %i.bo, ptr %i.bg, align 8
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16

bb.n:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %1, ptr %i.a, align 8
  %i.bp = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_14UnsafeSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.a, i64 1), !inline_history !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16: ; preds = %bb.m, %bb.l, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE7GetTypeEPNS1_9ValueNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %1, ptr %i.b, align 8
  %i.bq = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_15CheckedSmiUntagEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.b, i64 1), !inline_history !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13BuildSmiUntagEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13BuildSmiUntagEPNS1_9ValueNodeE.exit: ; preds = %bb.n, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16
  %.0.i12 = phi ptr [ %i.bq, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit16 ], [ %i.bp, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr %.0.i12, ptr %i.d, align 8
  %i.br = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.d, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %1, ptr %i.e, align 8
  %i.bs = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_33UncheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.p

_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit: ; preds = %bb.f, %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %1, ptr %i.f, align 8
  %i.bt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_31CheckedNumberOrOddballToFloat64EJRNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.f, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit, %bb.o, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13BuildSmiUntagEPNS1_9ValueNodeE.exit
  %.0 = phi ptr [ %i.br, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13BuildSmiUntagEPNS1_9ValueNodeE.exit ], [ %i.bs, %bb.o ], [ %i.bt, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS7_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 132), align 4, !range !93, !noundef !21
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE25AddNewNodeOrGetEquivalentINS1_20ChangeInt32ToFloat64EJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext true, ptr %1, i64 %2)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = shl i64 %2, 3                            ; 3 uses
  %i.g = add i64 %i.f, 24                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %i.g) #18
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = add i64 %i.n, %i.g
  store i64 %i.o, ptr %i.j, align 8
  %i.p = add i64 %i.n, %i.f
  %i.q = inttoptr i64 %i.p to ptr                 ; 6 uses
  %i.r = shl i64 %2, 16
  %i.s = or i64 %i.r, 12094627905698
  store ptr null, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %.not.i10 = icmp eq i64 %2, 0
  br i1 %.not.i10, label %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE13SetNodeInputsINS1_20ChangeInt32ToFloat64ESt16initializer_listIPNS1_9ValueNodeEEEEvPT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_20ChangeInt32ToFloat64EJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %.011.i11 = phi ptr [ %1, %.lr.ph ], [ %i.ai, %_ZN2v88internal6maglev13MaglevReducerINS1_20MaglevGraphOptimizerEE14ConvertInputToILNS1_20UseReprHintRecordingE0EEEPNS1_9ValueNodeES8_NS1_19ValueRepresentationE.exit ] ; 2 uses
  %i.x = load ptr, ptr %.011.i11, align 8         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = and i64 %i.z, 7696581394432
  %i.ab = icmp eq i64 %i.aa, 1099511627776
end_hunk_1
