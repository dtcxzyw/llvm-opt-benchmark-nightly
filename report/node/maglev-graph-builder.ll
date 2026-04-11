inline.NumInlined: 39732
inline.NumDeleted: 11729
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %1 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %2 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 9 uses
  %3 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %4 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 26 uses
  %5 = alloca %"class.std::optional.2650", align 4 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a

.lr.ph162:                                        ; preds = %bb.az
  %i.lg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  %.not15.i.i = icmp eq ptr %i.ao, null
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %wide.trip.count = and i64 %i.la, 2147483647
  %34 = insertelement <2 x ptr> poison, ptr %i.lg, i64 0
  %35 = insertelement <2 x ptr> %34, ptr %i.lj, i64 1
  br label %bb.ba

._crit_edge163:                                   ; preds = %._crit_edge156, %bb.az
end_hunk_2
begin_hunk_3_@_ZN2v88internal6maglev18MaglevGraphBuilder30VisitGetNamedPropertyFromSuperEv:bb.a
  %i.mi = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.mg, ptr noundef %i.mh, ptr noundef %i.ao) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.mj = load i64, ptr %1, align 8
  store ptr %i.lj, ptr %i.li, align 16
  store i64 %i.mj, ptr %i.lg, align 8
  store <2 x ptr> %35, ptr %2, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.mk = load ptr, ptr %i.x, align 8
  %i.ml = load ptr, ptr %i.ah, align 8
  %i.mm = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.ml) #34
  %i.mn = load ptr, ptr %2, align 16              ; 2 uses
  %i.mo = load ptr, ptr %i.lh, align 8
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mn to i64
end_hunk_3
begin_hunk_4_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 9 uses
  %5 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 31 uses
  %7 = alloca %"class.std::optional.636", align 8 ; 15 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %i.lz = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.me = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
  %.not15.i.i.i = icmp eq ptr %i.q, null
  %i.mk = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count.i = and i64 %i.lt, 2147483647
  %32 = insertelement <2 x ptr> poison, ptr %i.mb, i64 0
  %33 = insertelement <2 x ptr> %32, ptr %i.me, i64 1
  br label %bb.bb

._crit_edge214.i:                                 ; preds = %._crit_edge.i, %bb.ba
end_hunk_6
begin_hunk_7_@_ZN2v88internal6maglev18MaglevGraphBuilder21VisitSetNamedPropertyEv:bb.a
_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit.i: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i.i, %bb.bh, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit.i, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.pl = load i64, ptr %3, align 8
  store ptr %i.me, ptr %i.md, align 16
  store i64 %i.pl, ptr %i.mb, align 8
  store <2 x ptr> %33, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.pm = load ptr, ptr %i.r, align 8
  %i.pn = load ptr, ptr %i.ab, align 8
  %i.po = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.pn) #34, !inline_history !138
  %i.pp = load ptr, ptr %4, align 16              ; 2 uses
  %i.pq = load ptr, ptr %i.mc, align 8
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = ptrtoint ptr %i.pp to i64
end_hunk_7
begin_hunk_8_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %4 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 10 uses
  %5 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %6 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 31 uses
  %7 = alloca %"class.std::optional.636", align 8 ; 15 uses
end_hunk_8
begin_hunk_9_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a

.lr.ph154:                                        ; preds = %bb.au
  %i.kb = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a
  %i.kl = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %wide.trip.count = and i64 %i.jv, 2147483647
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 32
  %30 = insertelement <2 x ptr> poison, ptr %i.kb, i64 0
  %31 = insertelement <2 x ptr> %30, ptr %i.km, i64 1
  br label %bb.av

._crit_edge155:                                   ; preds = %._crit_edge148, %bb.au
end_hunk_10
begin_hunk_11_@_ZN2v88internal6maglev18MaglevGraphBuilder27VisitDefineNamedOwnPropertyEv:bb.a
  %i.ld = call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.lb, ptr noundef %i.lc, ptr noundef %i.q), !inline_history !149 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.le = load i64, ptr %3, align 8
  store ptr %i.ke, ptr %i.kd, align 16
  store i64 %i.le, ptr %i.kb, align 8
  store <2 x ptr> %31, ptr %4, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.lf = load ptr, ptr %i.r, align 8
  %i.lg = load ptr, ptr %i.ab, align 8
  %i.lh = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.lg) #34, !inline_history !149
  %i.li = load ptr, ptr %4, align 16              ; 2 uses
  %i.lj = load ptr, ptr %i.kc, align 8
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
end_hunk_11
begin_hunk_12_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 9 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
end_hunk_12
begin_hunk_13_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
end_hunk_13
begin_hunk_14_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %.not15.i.i = icmp eq ptr %2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  %17 = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %i.ad, i64 1
  br label %bb.b

._crit_edge219:                                   ; preds = %._crit_edge, %bb.a
end_hunk_14
begin_hunk_15_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_25TryBuildLoadNamedPropertyEPNS1_9ValueNodeENS0_8compiler7NameRefERNS6_14FeedbackSourceEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, %bb.h, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.dl = load i64, ptr %8, align 8
  store ptr %i.ad, ptr %i.ac, align 16
  store i64 %i.dl, ptr %i.aa, align 8
  store <2 x ptr> %18, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.dm = load ptr, ptr %i.x, align 8
  %i.dn = load ptr, ptr %i.ae, align 8
  %i.do = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.dn) #34
  %i.dp = load ptr, ptr %9, align 16              ; 2 uses
  %i.dq = load ptr, ptr %i.ab, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
end_hunk_15
begin_hunk_16_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 6 uses
  %9 = alloca %"class.v8::base::SmallVector.2648", align 16 ; 9 uses
  %10 = alloca %"class.v8::internal::maglev::(anonymous namespace)::KnownMapsMerger", align 8 ; 10 uses
  %11 = alloca %"class.v8::internal::maglev::MaglevGraphBuilder::MaglevSubGraphBuilder", align 8 ; 37 uses
  %12 = alloca %"class.std::optional.636", align 8 ; 17 uses
end_hunk_16
begin_hunk_17_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
end_hunk_17
begin_hunk_18_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
  %.not15.i.i = icmp eq ptr %2, null
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.trip.count = and i64 %i.q, 2147483647
  %17 = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %18 = insertelement <2 x ptr> %17, ptr %i.ad, i64 1
  br label %bb.b

._crit_edge215:                                   ; preds = %._crit_edge, %bb.a
end_hunk_18
begin_hunk_19_@"_ZN2v88internal6maglev18MaglevGraphBuilder33TryBuildPolymorphicPropertyAccessIRZNS2_21BuildGetKeyedPropertyEPNS1_9ValueNodeERKNS0_8compiler14FeedbackSourceERKNS6_17ProcessedFeedbackEE3$_0EENS1_17MaybeReduceResultES5_S5_RKNS6_19NamedAccessFeedbackENS6_10AccessModeERKNS0_10ZoneVectorINS6_18PropertyAccessInfoEEEOT_":bb.a
_ZN2v84base11SmallVectorINS_8internal8compiler6MapRefELm1ESaIS4_EEC2ESt16initializer_listIS4_ERKS5_.exit: ; preds = %_ZNK2v88internal6maglev13VirtualObject3mapEv.exit.i, %bb.h, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS4_S7_EEES5_ISt17_Rb_tree_iteratorIS8_EbEDpOT_.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.dl = load i64, ptr %8, align 8
  store ptr %i.ad, ptr %i.ac, align 16
  store i64 %i.dl, ptr %i.aa, align 8
  store <2 x ptr> %18, ptr %9, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  %i.dm = load ptr, ptr %i.x, align 8
  %i.dn = load ptr, ptr %i.ae, align 8
  %i.do = call noundef ptr @_ZNK2v88internal6maglev21MaglevCompilationUnit4zoneEv(ptr noundef nonnull align 8 dereferenceable(52) %i.dn) #34
  %i.dp = load ptr, ptr %9, align 16              ; 2 uses
  %i.dq = load ptr, ptr %i.ab, align 8
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
end_hunk_19
