inline.NumInlined: 39742
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder21BuildStoreTaggedFieldEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE:bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i64 2
}

declare noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef20IsInternalizedStringEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder37BuildCheckNumericalValueOrByReferenceEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::ObjectRef", align 8 ; 5 uses
  store ptr %2, ptr %4, align 8
  %i.a = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapNumberEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  %i.d = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildCheckValueByReferenceEPNS1_9ValueNodeENS0_8compiler13HeapObjectRefENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %i.c, i8 noundef zeroext %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8
  %i.e = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder24BuildCheckNumericalValueEPNS1_9ValueNodeENS0_8compiler9ObjectRefENS0_16DeoptimizeReasonE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %.sroa.0.0.copyload, i8 noundef zeroext %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.05.0 = phi i64 [ %i.e, %bb.d ], [ %i.d, %bb.c ]
  ret i64 %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder35BuildStoreTaggedFieldNoWriteBarrierEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  store i32 %3, ptr %i.a, align 4
  store i8 %4, ptr %i.b, align 1
  %.not = icmp eq i8 %4, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder36TryBuildStoreTaggedFieldToAllocationEPNS1_9ValueNodeES4_i(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_30StoreTaggedFieldNoWriteBarrierEJRiRNS1_15StoreTaggedModeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.c, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %.not9 = icmp eq ptr %5, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i64 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder11EnsureInt32EPNS1_9ValueNodeEb(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE8GetInt32EPNS1_9ValueNodeEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i1 noundef zeroext %2) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 1, 3) i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16BuildCheckNumberEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %select.unfold.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.l, %1                    ; 2 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.j
  br i1 %i.n, label %select.unfold.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %1, %i.p
  br i1 %i.q, label %select.unfold.i.i, label %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i

select.unfold.i.i:                                ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i.i.i, %bb.a
  %i.r = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.g) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i, i64 40
  %i.t = load i32, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 65535
  %i.x = icmp ne i64 %i.w, 142
  %.not15.i.i = icmp eq ptr %1, null
  %.not.i.i = or i1 %.not15.i.i, %i.x
  br i1 %.not.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, %i.t
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit: ; preds = %select.unfold.i.i, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i, %bb.b
  %.0.i.i = phi i32 [ %i.r, %select.unfold.i.i ], [ %i.aa, %bb.b ], [ %i.t, %_ZNK2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i.i ]
  %i.ab = and i32 %.0.i.i, 3
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 39, ptr %i.a, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder11FinishBlockINS1_5DeoptEJRNS0_16DeoptimizeReasonEEEEPNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr null, i64 0, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.d:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder7GetTypeEPNS1_9ValueNodeE.exit
  %i.aj = load ptr, ptr %i.d, align 8
  %i.ak = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.al = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.ak) #33
  %i.am = icmp ult i32 %i.al, 4
  br i1 %i.am, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.aj, ptr noundef %i.ak, ptr noundef nonnull %1) ; 3 uses
  %.pre.i.i = load i32, ptr %i.an, align 8        ; 2 uses
  %i.ao = icmp ult i32 %.pre.i.i, 4
  br i1 %i.ao, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = and i32 %.pre.i.i, 3                    ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 65535
  %.not29.i.i = icmp eq i64 %i.as, 142
  br i1 %.not29.i.i, label %bb.g, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.an, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.aw = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_11CheckNumberEJNS0_6Object10ConversionEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.d, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, %bb.c
  %.sroa.04.0 = phi i64 [ 1, %bb.c ], [ 2, %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit ], [ 2, %bb.d ], [ 2, %bb.e ]
  ret i64 %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder24StoreAndCacheContextSlotEPNS1_9ValueNodeEiS4_NS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %5 = alloca %"class.std::tuple.462", align 8    ; 10 uses
  store ptr %3, ptr %i.a, align 8
  %i.c = shl nsw i32 %2, 3
  %i.d = add nsw i32 %i.c, 16                     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8
  %i.e = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 167), align 1, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 168), align 8, !range !10, !noundef !11
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = icmp eq i32 %4, 1
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.d, label %.thread63

bb.c:                                             ; preds = %bb.a
  %.old1 = icmp eq i32 %4, 1
  br i1 %.old1, label %bb.d, label %.thread63

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder29TrySpecializeStoreContextSlotEPNS1_9ValueNodeEiS4_PPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %i.b) ; 2 uses
  %i.k = and i64 %i.j, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %.thread.thread67

bb.f:                                             ; preds = %bb.e
  %.not70 = icmp eq i64 %i.k, 3
  br i1 %.not70, label %.thread63, label %bb.ag

.thread63:                                        ; preds = %bb.b, %bb.f, %bb.c
  %i.n = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder21BuildStoreTaggedFieldEPNS1_9ValueNodeES4_iNS1_15StoreTaggedModeEPPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr noundef %3, i32 noundef %i.d, i8 noundef zeroext 0, ptr noundef nonnull %i.b)
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.ag, label %.thread.thread67

.thread.thread67:                                 ; preds = %bb.e, %.thread63
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !10, !noundef !11
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.thread.thread67
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 103
  %i.w = load i8, ptr %i.v, align 1, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %.critedge, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.22, i64 noundef 33) #33 ; 0 uses
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) #33 ; 0 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.d) #33 ; 2 uses
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.21, i64 noundef 3) #33 ; 0 uses
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #33, !inline_history !12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.thread.thread67, %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load ptr, ptr %i.al, align 8
  call void @_ZN2v88internal6maglev16KnownNodeAspects29UpdateMayHaveAliasingContextsEPNS0_8compiler12JSHeapBrokerEPNS0_12LocalIsolateEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.ae, ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %1) #33
  %.pre = load ptr, ptr %i.ad, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.an = phi ptr [ %.pre, %bb.i ], [ %i.ae, %.critedge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 281
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 3
  br i1 %i.aq, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call ptr @_ZN2v88internal6maglev5Graph15TryGetScopeInfoEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(976) %i.as, ptr noundef %1) #33 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 184 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.042.074 = phi ptr [ %i.av, %.lr.ph ], [ %i.bx, %bb.s ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.042.074, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp eq i32 %i.bb, %i.d
  br i1 %i.bc, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.042.074, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %.not30 = icmp eq ptr %i.be, %1
  br i1 %.not30, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.042.074, i64 48 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %.not31 = icmp eq ptr %i.bg, %3
  br i1 %.not31, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !10, !noundef !11
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %.critedge33

bb.p:                                             ; preds = %bb.o
  %i.bj = load ptr, ptr %i.ay, align 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 103
  %i.bm = load i8, ptr %i.bl, align 1, !range !10, !noundef !11
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.q, label %.critedge33, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.23, i64 noundef 37) #33 ; 0 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) #33 ; 0 uses
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %i.d) #33 ; 2 uses
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull @.str.21, i64 noundef 3) #33 ; 0 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #33, !inline_history !12 ; 0 uses
  br label %.critedge33

.critedge33:                                      ; preds = %bb.o, %bb.q, %bb.p
  store ptr null, ptr %i.bf, align 8
  %i.bt = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.bt, null
  br i1 %.not71, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge33
  %i.bu = call { ptr, i8 } @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES6_St9_IdentityIS6_ESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.ba) ; 0 uses
  %i.bv = load ptr, ptr %i.az, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 225
  store i8 1, ptr %i.bw, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r, %.critedge33, %bb.m, %bb.l
  %i.bx = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.042.074) #34 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aw
  br i1 %i.by, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.s, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i32 %i.d, ptr %5, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.bz, align 8
  %i.ca = call { ptr, i8 } @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_S5_ESt10_Select1stIS9_ESt4lessIS6_ENS2_13ZoneAllocatorIS9_EEE17_M_emplace_uniqueIJRS6_RS5_EEES7_ISt17_Rb_tree_iteratorIS9_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ca, 1
  %i.cb = trunc i8 %.fca.1.extract to i1
  br i1 %i.cb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.loopexit
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not73 = icmp eq ptr %i.cd, null
  br i1 %.not73, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = call { ptr, i8 } @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES6_St9_IdentityIS6_ESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cf = load ptr, ptr %i.b, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS7_PNS4_4NodeEENS3_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS9_(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %5)
  store ptr %i.cf, ptr %i.ch, align 8
  br label %bb.af

bb.w:                                             ; preds = %.loopexit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ca, 0
  %i.ci = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 48 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not28 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not28, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.ck, ptr %i.ci, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.cm, null
  br i1 %.not72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = call { ptr, i8 } @_ZNSt8_Rb_treeISt5tupleIJPN2v88internal6maglev9ValueNodeEiEES6_St9_IdentityIS6_ESt4lessIS6_ENS2_13ZoneAllocatorIS6_EEE16_M_insert_uniqueIRKS6_EESt4pairISt17_Rb_tree_iteratorIS6_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.co = load ptr, ptr %i.ad, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 281
  %i.cq = load i8, ptr %i.cp, align 1
  %.not29 = icmp eq i8 %i.cq, 3
  br i1 %.not29, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.cs = call ptr @_ZNSt10_HashtableISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS6_PNS3_4NodeEENS2_13ZoneAllocatorISB_EENSt8__detail10_Select1stESt8equal_toIS6_ENS1_4base4hashIS6_EENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS8_(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 24 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.cy = and i64 %i.cx, 4294901760
  %.not.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder12MarkNodeDeadEPNS1_4NodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v88internal6maglev5Input5clearEv.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal6maglev5Input5clearEv.exit.i ] ; 2 uses
  %i.da = sub nsw i64 0, %indvars.iv.i
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8            ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = and i64 %i.dh, 65535
  %.not.i.i.i.i = icmp eq i64 %i.di, 99
  br i1 %.not.i.i.i.i, label %bb.ad, label %_ZN2v88internal6maglev5Input5clearEv.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 36 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = call i32 @llvm.smax.i32(i32 %i.dk, i32 1)
  %.sroa.speculated.i.i.i.i.i = add nsw i32 %i.dl, -1
  store i32 %.sroa.speculated.i.i.i.i.i, ptr %i.dj, align 4
  br label %_ZN2v88internal6maglev5Input5clearEv.exit.i

_ZN2v88internal6maglev5Input5clearEv.exit.i:      ; preds = %bb.ad, %bb.ac
  store ptr null, ptr %i.db, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dm = load i64, ptr %i.cw, align 8            ; 2 uses
  %i.dn = lshr i64 %i.dm, 16
  %i.do = and i64 %i.dn, 65535
  %i.dp = icmp samesign ult i64 %indvars.iv.next.i, %i.do
  br i1 %i.dp, label %bb.ac, label %_ZN2v88internal6maglev18MaglevGraphBuilder12MarkNodeDeadEPNS1_4NodeE.exit, !llvm.loop !72

_ZN2v88internal6maglev18MaglevGraphBuilder12MarkNodeDeadEPNS1_4NodeE.exit: ; preds = %_ZN2v88internal6maglev5Input5clearEv.exit.i, %bb.ab
  %.lcssa.i = phi i64 [ %i.cx, %bb.ab ], [ %i.dm, %_ZN2v88internal6maglev5Input5clearEv.exit.i ]
  %i.dq = and i64 %.lcssa.i, -281470681808896
  %i.dr = or disjoint i64 %i.dq, 6597069766688
  store i64 %i.dr, ptr %i.cw, align 8
  %i.ds = load ptr, ptr %i.b, align 8
  store ptr %i.ds, ptr %i.cu, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.dt = load ptr, ptr %i.b, align 8
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseISt5tupleIJPN2v88internal6maglev9ValueNodeEiEESt4pairIKS7_PNS4_4NodeEENS3_13ZoneAllocatorISC_EENS_10_Select1stESt8equal_toIS7_ENS2_4base4hashIS7_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS9_(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %5)
  store ptr %i.dt, ptr %i.du, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder12MarkNodeDeadEPNS1_4NodeE.exit, %bb.ae, %bb.z, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.ag

bb.ag:                                            ; preds = %bb.f, %.thread63, %bb.d, %bb.af
  %.sroa.025.1 = phi i64 [ 2, %bb.af ], [ 1, %.thread63 ], [ 1, %bb.d ], [ %i.j, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  ret i64 %.sroa.025.1
}

declare ptr @_ZN2v88internal6maglev5Graph15TryGetScopeInfoEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(976), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadContextSlotEPNS1_9ValueNodeEmiNS1_21ContextSlotMutabilityENS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder17GetContextAtDepthEPNS1_9ValueNodeEm(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i64 noundef %2) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 126
  %i.f = load i8, ptr %i.e, align 2, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN2v88internal6maglev18MaglevGraphBuilder45TrySpecializeLoadContextSlotToFunctionContextEPNS1_9ValueNodeEiNS1_21ContextSlotMutabilityE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.a, i32 noundef %3, i32 noundef %4)
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.j = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder23LoadAndCacheContextSlotEPNS1_9ValueNodeEiNS1_21ContextSlotMutabilityENS0_11ContextModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.a, i32 noundef %3, i32 noundef 1, i32 noundef %5)
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -64
  store ptr %i.j, ptr %i.l, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_26LoadTaggedFieldForPropertyEJNS0_8compiler9StringRefEEEEPNS1_9ValueNodeES8_jDpOT0_:bb.a
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN2v88internal6maglev18MaglevGraphBuilder21CanTrackObjectChangesEPNS1_9ValueNodeENS2_15TrackObjectModeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, i32 noundef 0)
  br i1 %i.f, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 37
  %i.j = load i8, ptr %i.i, align 1, !range !10, !noundef !11
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 344
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.08.014.i.i.in = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.n, %bb.d ]
  %.sroa.08.014.i.i = load ptr, ptr %.sroa.08.014.i.i.in, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i.i, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.p, %1
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i.i, i64 80
  br i1 %.not.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit, label %.lr.ph.i.i

_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit: ; preds = %.lr.ph.i.i, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.08.014.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 36
  %i.s = load i8, ptr %i.r, align 4
  switch i8 %i.s, label %bb.h [
    i8 1, label %bb.e
    i8 0, label %bb.f
  ], !prof !17

bb.e:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.225) #32
  unreachable

bb.f:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit
  %i.t = add i32 %2, -8
  %i.u = lshr i32 %i.t, 3                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp ult i32 %i.u, %i.w
  br i1 %i.x, label %_ZNK2v88internal6maglev13VirtualObject3getEj.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.163) #32
  unreachable

_ZNK2v88internal6maglev13VirtualObject3getEj.exit: ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = zext nneg i32 %i.u to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder23GetObjectFromAllocationEPNS1_17InlinedAllocationE.exit
  %i.ad = icmp eq i32 %2, 8
  br i1 %i.ad, label %bb.j, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.226) #32
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.af, ptr %i.a, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 272 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ak, %bb.j ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp slt i32 %i.an, %i.af               ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.ao, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ap = icmp eq ptr %.19.i.i.i.i.i.i, %i.al
  br i1 %i.ap, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp slt i32 %i.af, %i.ar
  br i1 %i.as, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i, label %bb.k

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.at = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.at, ptr %i.b, align 8
  %i.au = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRiRS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit

bb.k:                                             ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit

_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i, %bb.k
  %.0.i.i.i = phi ptr [ %i.av, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i ], [ %i.ax, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit, %_ZNK2v88internal6maglev13VirtualObject3getEj.exit
  %.014 = phi ptr [ %i.ac, %_ZNK2v88internal6maglev13VirtualObject3getEj.exit ], [ %.0.i.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder16GetInt32ConstantEi.exit ] ; 2 uses
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 623), align 1, !range !10, !noundef !11
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.227, i64 noundef 36) #33 ; 0 uses
  %i.bb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.20, i64 noundef 1) #33 ; 0 uses
  %i.bc = zext i32 %2 to i64
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %i.bc) #33 ; 4 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.21, i64 noundef 3) #33 ; 0 uses
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 240
  %i.bk = load ptr, ptr %i.bj, align 8            ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #32
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load i8, ptr %i.bl, align 8
  %.not.i1.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 67
  %i.bo = load i8, ptr %i.bn, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bk) #33
  %i.bp = load ptr, ptr %i.bk, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(570) %i.bk, i8 noundef signext 10) #33, !inline_history !65
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i15 = phi i8 [ %i.bo, %bb.o ], [ %i.bs, %bb.p ]
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i15) #33
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #33 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %1, ptr %i.e, align 8
  %i.bv = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_26LoadTaggedFieldForPropertyEJRjNS0_8compiler9StringRefEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.e, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.q
  %.0 = phi ptr [ %i.bv, %bb.q ], [ %.014, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %.014, %bb.l ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder19RecordKnownPropertyEPNS1_9ValueNodeENS1_16KnownNodeAspects20LoadedPropertyMapKeyES4_bNS0_8compiler10AccessModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0, ptr noundef %1, i64 %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.1580", align 8   ; 4 uses
  %7 = alloca %"class.std::tuple.1583", align 8   ; 4 uses
  %8 = alloca %"class.v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.v8::internal::maglev::KnownNodeAspects::LoadedPropertyMapKey", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %10 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::compiler::NameRef", align 8 ; 4 uses
  store i64 %2, ptr %9, align 8
  store ptr %1, ptr %i.b, align 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.g) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %8, align 8
  store ptr %i.h, ptr %i.a, align 8
  %.idx.i = select i1 %4, i64 0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i.i.i.i, label %.critedge.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.l, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ult i64 %i.n, %2                    ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE11lower_boundERSE_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !92

_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE11lower_boundERSE_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i.i, %i.l
  br i1 %i.p, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE11lower_boundERSE_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp ult i64 %2, %i.r
  br i1 %i.s, label %.critedge.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects25GetLoadedPropertiesForKeyEPNS0_4ZoneEbNS2_20LoadedPropertyMapKeyE.exit

.critedge.i.i:                                    ; preds = %bb.b, %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE11lower_boundERSE_.exit.i.i, %bb.a
  %.08.lcssa.i.i.i14.i.i = phi ptr [ %.19.i.i.i.i.i, %bb.b ], [ %.19.i.i.i.i.i, %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE11lower_boundERSE_.exit.i.i ], [ %i.l, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store ptr %8, ptr %6, align 8, !alias.scope !93
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store ptr %i.a, ptr %7, align 8, !alias.scope !96
  %i.t = call ptr @_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS6_EESO_IJRPNS1_4ZoneEEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr %.08.lcssa.i.i.i14.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZN2v88internal6maglev16KnownNodeAspects25GetLoadedPropertiesForKeyEPNS0_4ZoneEbNS2_20LoadedPropertyMapKeyE.exit

_ZN2v88internal6maglev16KnownNodeAspects25GetLoadedPropertiesForKeyEPNS0_4ZoneEbNS2_20LoadedPropertyMapKeyE.exit: ; preds = %bb.b, %.critedge.i.i
  %.sroa.012.0.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %.19.i.i.i.i.i, %bb.b ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 40 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %4, label %bb.o, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects25GetLoadedPropertiesForKeyEPNS0_4ZoneEbNS2_20LoadedPropertyMapKeyE.exit
  switch i8 %5, label %bb.o [
    i8 4, label %bb.d
    i8 2, label %bb.d
    i8 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.w, null
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %9) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !10, !noundef !11
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.f, align 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 103
  %i.ae = load i8, ptr %i.ad, align 1, !range !10, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %.critedge, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.38, i64 noundef 37) #33 ; 0 uses
  %i.ah = load i64, ptr %9, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 3
  switch i32 %i.aj, label %default.unreachable47 [
    i32 0, label %bb.i
    i32 1, label %bb.k
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.39, i64 noundef 21) #33 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.al = load i64, ptr %9, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit, !prof !6

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit: ; preds = %bb.i
  %i.am = inttoptr i64 %i.al to ptr
  store ptr %i.am, ptr %10, align 8
  %i.an = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #33
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %i.ao) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.40, i64 noundef 8) #33 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 17) #33 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 13) #33 ; 0 uses
  br label %bb.n

default.unreachable47:                            ; preds = %bb.q, %bb.h
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #33, !inline_history !12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.n, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  call void @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 56 ; 2 uses
  store ptr null, ptr %i.au, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 72
  store ptr %i.aw, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 80
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 88
  store i64 0, ptr %i.az, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %.critedge, %_ZN2v88internal6maglev16KnownNodeAspects25GetLoadedPropertiesForKeyEPNS0_4ZoneEbNS2_20LoadedPropertyMapKeyE.exit
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !10, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.p, label %.critedge22

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 103
  %i.bf = load i8, ptr %i.be, align 1, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %.critedge22, !prof !6

bb.q:                                             ; preds = %bb.p
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.43, i64 noundef 14) #33 ; 0 uses
  %i.bi = select i1 %4, ptr @.str.44, ptr @.str.45
  %i.bj = select i1 %4, i64 8, i64 12
  %i.bk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.bi, i64 noundef %i.bj) #33 ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.46, i64 noundef 16) #33 ; 0 uses
  %i.bm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.37, i64 noundef 2) #33 ; 0 uses
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.47, i64 noundef 2) #33 ; 0 uses
  %i.bo = load i64, ptr %9, align 8               ; 3 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 3
  switch i32 %i.bq, label %default.unreachable47 [
    i32 0, label %bb.r
    i32 1, label %bb.t
    i32 2, label %bb.u
    i32 3, label %bb.v
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %.not.i.i.i.i23 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i.i23, label %bb.s, label %_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit24, !prof !6

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.173) #32
  unreachable

_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit24: ; preds = %bb.r
  %i.br = inttoptr i64 %i.bo to ptr
  store ptr %i.br, ptr %11, align 8
  %i.bs = call ptr @_ZNK2v88internal8compiler7NameRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #33
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 %i.bt) #33 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.w

bb.t:                                             ; preds = %bb.q
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.40, i64 noundef 8) #33 ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.41, i64 noundef 17) #33 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.42, i64 noundef 13) #33 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %_ZN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKey4nameEv.exit24
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.48, i64 noundef 4) #33 ; 0 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.37, i64 noundef 2) #33 ; 0 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #33, !inline_history !12 ; 0 uses
  br label %.critedge22

.critedge22:                                      ; preds = %bb.o, %bb.w, %bb.p
  %i.cb = add i8 %5, -3
  %or.cond.i25 = icmp ult i8 %i.cb, -2
  %i.cc = icmp ne i8 %5, 4
  %spec.select.i26.not = and i1 %i.cc, %or.cond.i25
  %or.cond = or i1 %4, %spec.select.i26.not
  br i1 %or.cond, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.critedge22
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %.not = icmp eq ptr %i.ce, null
  br i1 %.not, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRS4_SG_EEES5_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.cf, 1
  %i.cg = trunc i8 %.fca.1.extract to i1
  br i1 %i.cg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ch = load ptr, ptr %i.cd, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ci, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %.fca.0.extract = extractvalue { ptr, i8 } %i.cf, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 40 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not20 = icmp eq ptr %i.cl, %i.cm
  br i1 %.not20, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cm, ptr %i.ck, align 8
  %i.cn = load ptr, ptr %i.cd, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x, %.critedge22
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPN2v88internal6maglev9ValueNodeES4_St4lessIS4_ENS1_13ZoneAllocatorISt4pairIKS4_S4_EEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  store ptr %3, ptr %i.cq, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ab, %bb.aa, %bb.ac
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder31BuildLoadJSFunctionFeedbackCellEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::HeapObjectRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::HeapObjectRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal6maglev9ValueNode14TryGetConstantEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.b) #33 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit

_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.c, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.c, ptr %4, align 8
  %i.e = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call ptr @_ZNK2v88internal8compiler13JSFunctionRef17raw_feedback_cellEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.i, ptr %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.f

bb.c:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 65535
  %i.n = icmp eq i64 %i.m, 94
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.q, ptr %.sroa.0.0.copyload.i) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.s = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %1, i32 noundef 48)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.2 = phi ptr [ %i.s, %bb.e ], [ %i.r, %bb.d ], [ %i.j, %bb.b ]
  ret ptr %.2
}

declare ptr @_ZNK2v88internal8compiler13JSFunctionRef17raw_feedback_cellEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadJSFunctionContextEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::HeapObjectRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::JSFunctionRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::OptionalRef<v8::internal::compiler::HeapObjectRef>::ArrowOperatorHelper", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v88internal6maglev9ValueNode14TryGetConstantEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef %i.b) #33 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit

_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.c, ptr %2, align 8
  %i.d = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.c, ptr %4, align 8
  %i.e = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsJSFunctionEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call ptr @_ZNK2v88internal8compiler13JSFunctionRef7contextEPNS1_12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.f) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef ptr @_ZN2v88internal6maglev5Graph11GetConstantENS0_8compiler9ObjectRefE(ptr noundef nonnull align 8 dereferenceable(976) %i.i, ptr %i.g) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

bb.c:                                             ; preds = %_ZNK2v88internal8compiler11OptionalRefINS1_13HeapObjectRefEEptEv.exit, %bb.a
  %i.k = call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder20BuildLoadTaggedFieldINS1_15LoadTaggedFieldEJEEEPNS1_9ValueNodeES6_jDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef nonnull %1, i32 noundef 40) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.k, ptr noundef %i.n) #33
  %i.p = and i32 %i.o, -2049
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.m, ptr noundef %i.n, ptr noundef nonnull %i.k) ; 3 uses
  %.pre.i.i = load i32, ptr %i.r, align 8         ; 2 uses
  %i.s = and i32 %.pre.i.i, -2049
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = and i32 %.pre.i.i, 2048                  ; 2 uses
  store i32 %i.u, ptr %i.r, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.w = load i64, ptr %i.v, align 8
  %i.x = and i64 %i.w, 65535
  %.not29.i.i = icmp eq i64 %i.x, 142
  br i1 %.not29.i.i, label %bb.f, label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, %i.u
  store i32 %i.aa, ptr %i.r, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit

_ZN2v88internal6maglev18MaglevGraphBuilder10EnsureTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.c ], [ %i.k, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal6maglev18MaglevGraphBuilder13BuildStoreMapEPNS1_9ValueNodeENS0_8compiler6MapRefENS1_8StoreMap4KindE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  store ptr %2, ptr %6, align 8
  store i32 %3, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %1, ptr %i.b, align 8
  %i.c = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_8StoreMapEJRNS0_8compiler6MapRefERNS6_4KindEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %.sroa.04.0.copyload = load ptr, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef i32 @_ZN2v88internal6maglev16StaticTypeForMapENS0_8compiler6MapRefEPNS2_12JSHeapBrokerE(ptr %.sroa.04.0.copyload, ptr noundef %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.h, ptr noundef %i.i, ptr noundef %1) ; 7 uses
  %i.k = call noundef zeroext i1 @_ZNK2v88internal8compiler6MapRef9is_stableEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #33
  %.sroa.02.0.copyload = load ptr, ptr %6, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.02.0.copyload, ptr %5, align 8
  %i.o = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.p = ptrtoint ptr %i.o to i64
  store i64 %i.p, ptr %i.l, align 8
  store i8 1, ptr %i.m, align 1
  store i8 0, ptr %i.n, align 4
  %i.q = load i32, ptr %i.j, align 8
  %i.r = and i32 %i.q, %i.f
  store i32 %i.r, ptr %i.j, align 8
  %i.s = load ptr, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8544
  %i.u = load ptr, ptr %i.t, align 8
  %.sroa.01.0.copyload = load ptr, ptr %6, align 8
  call void @_ZN2v88internal8compiler23CompilationDependencies17DependOnStableMapENS1_6MapRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.u, ptr %.sroa.01.0.copyload) #33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.02.0.copyload, ptr %4, align 8
  %i.v = call noundef ptr @_ZNK2v88internal8compiler9ObjectRef4dataEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.w = ptrtoint ptr %i.v to i64
  store i64 %i.w, ptr %i.l, align 8
  store i8 1, ptr %i.m, align 1
  store i8 1, ptr %i.n, align 4
  %i.x = load i32, ptr %i.j, align 8
  %i.y = and i32 %i.x, %i.f
  store i32 %i.y, ptr %i.j, align 8
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 280
end_hunk_1
