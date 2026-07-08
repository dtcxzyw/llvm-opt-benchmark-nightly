inline.NumInlined: 20439
inline.NumDeleted: 7868
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN2v88internal6maglev8NodeBase23ClearElementsPropertiesEbRNS1_16KnownNodeAspectsE:bb.a
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 9 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !197

_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread, label %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE4findERSE_.exit.i

_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE4findERSE_.exit.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE4findERSE_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_S4_ESt10_Select1stIS7_ESt4lessIS4_ENS1_13ZoneAllocatorIS7_EEE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56 ; 2 uses
  store ptr null, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 72
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 80
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 88
  store i64 0, ptr %i.q, align 8
  %i.r = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !21, !noundef !16
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = and i1 %1, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.405, i64 noundef 43) #28 ; 0 uses
  br label %_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread

_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread: ; preds = %_ZNSt8_Rb_treeIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyESt4pairIKS4_NS1_7ZoneMapIPNS2_9ValueNodeES9_St4lessIS9_EEEESt10_Select1stISD_ESA_IS4_ENS1_13ZoneAllocatorISD_EEE14_M_lower_boundEPSt13_Rb_tree_nodeISD_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i, %bb.a, %_ZNSt3mapIN2v88internal6maglev16KnownNodeAspects20LoadedPropertyMapKeyENS1_7ZoneMapIPNS2_9ValueNodeES7_St4lessIS7_EEES8_IS4_ENS1_13ZoneAllocatorISt4pairIKS4_SA_EEEE4findERSE_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev8NodeBase24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(352) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal6maglev16KnownNodeAspects24ClearUnstableNodeAspectsEb(ptr noundef nonnull align 8 dereferenceable(352) %2, i1 noundef zeroext %1) #28
  ret void
}

declare void @_ZN2v88internal6maglev16KnownNodeAspects24ClearUnstableNodeAspectsEb(ptr noundef nonnull align 8 dereferenceable(352), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(352) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::compiler::MapRef", align 8 ; 4 uses
  %5 = alloca %"struct.v8::internal::Brief", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = lshr i64 %i.b, 53
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 7
  switch i32 %i.e, label %.thread [
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 312
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.l, %i.g                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !198

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.n, label %.thread, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ult ptr %i.g, %i.p
  br i1 %i.q, label %.thread, label %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 45
  %i.s = load i8, ptr %i.r, align 1, !range !21, !noundef !16
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit, label %.thread

_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 48 ; 2 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.u, align 8 ; 3 uses
  %i.v = icmp eq i64 %.sroa.01.0.copyload.i.i, 1
  br i1 %i.v, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit
  %i.w = and i64 %.sroa.01.0.copyload.i.i, 3
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit: ; preds = %bb.c
  %i.y = add i64 %.sroa.01.0.copyload.i.i, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14, label %.thread

_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14: ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ad = tail call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.af = load i8, ptr %i.ae, align 8, !range !21, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.d, label %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit"

bb.d:                                             ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.j
  br i1 %i.aj, label %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"
  %.sroa.01.04.i = phi ptr [ %i.bi, %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i" ], [ %i.ai, %bb.d ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 44 ; 3 uses
  %i.am = load i8, ptr %i.al, align 4, !range !21, !noundef !16
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.e, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

bb.e:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 48 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ao, align 8 ; 3 uses
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, 1
  br i1 %i.ap, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = and i64 %.sroa.01.0.copyload.i.i.i.i.i, 3
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge.preheader.i.i, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i: ; preds = %bb.f
  %i.as = add i64 %.sroa.01.0.copyload.i.i.i.i.i, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.not12.i.i = icmp eq i64 %i.av, 0
  br i1 %.not12.i.i, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i, %bb.f
  %.0.i.i19.i.i = phi i64 [ %i.av, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i ], [ 1, %bb.f ]
  br label %.critedge.i.i

bb.g:                                             ; preds = %.critedge.i.i
  %i.aw = add nuw i64 %.sroa.5.013.i.i, 1         ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, %.0.i.i19.i.i
  br i1 %.not.i.i, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.critedge.preheader.i.i
  %.sroa.5.013.i.i = phi i64 [ %i.aw, %bb.g ], [ 0, %.critedge.preheader.i.i ] ; 2 uses
  %i.ax = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %.sroa.5.013.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ax, ptr %3, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef6equalsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.ay, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.critedge.i.i
  %i.az = load i8, ptr %i.al, align 4, !range !21, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.i, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

bb.i:                                             ; preds = %bb.h
  store i64 1, ptr %i.ao, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 45
  store i8 0, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.ak, align 8            ; 8 uses
  %i.bd = and i32 %i.bc, 1984
  switch i32 %i.bd, label %bb.j [
    i32 0, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 64, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 448, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 1984, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.be = and i32 %i.bc, 1536
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = or i32 %i.bc, 448
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bh = or i32 %i.bc, 1984
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i

_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i: ; preds = %bb.l, %bb.k, %bb.i, %bb.i, %bb.i, %bb.i
  %.0.i.i7.i.i = phi i32 [ %i.bh, %bb.l ], [ %i.bg, %bb.k ], [ %i.bc, %bb.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.i ], [ %i.bc, %bb.i ]
  store i32 %.0.i.i7.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.al, align 4
  br label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i": ; preds = %bb.g, %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i, %bb.h, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i, %bb.e, %.lr.ph.i
  %i.bi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i) #34 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.j
  br i1 %i.bj, label %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit", label %.lr.ph.i

"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit": ; preds = %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14, %bb.d
  %i.bk = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !21, !noundef !16
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = and i1 %1, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !11

bb.m:                                             ; preds = %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit"
  %i.bn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.406, i64 noundef 36) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bo = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.bp = load i64, ptr %i.bo, align 8
  store i64 %i.bp, ptr %5, align 8
  %i.bq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq) #28, !inline_history !199 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.n

bb.n:                                             ; preds = %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.u

.thread:                                          ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %bb.b, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit, %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !range !21, !noundef !16
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

bb.o:                                             ; preds = %.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %._crit_edge.i, label %.lr.ph.i15

._crit_edge.i:                                    ; preds = %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i, %bb.o
  store i8 0, ptr %i.bs, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

.lr.ph.i15:                                       ; preds = %bb.o, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i
  %.sroa.04.07.i = phi ptr [ %i.cl, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i ], [ %i.bw, %bb.o ] ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 44 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 4, !range !21, !noundef !16
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

bb.p:                                             ; preds = %.lr.ph.i15
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 48
  store i64 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 45
  store i8 0, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.bz, align 8            ; 8 uses
  %i.cg = and i32 %i.cf, 1984
  switch i32 %i.cg, label %bb.q [
    i32 0, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 64, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 448, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 1984, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.ch = and i32 %i.cf, 1536
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = or i32 %i.cf, 448
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.ck = or i32 %i.cf, 1984
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i: ; preds = %bb.s, %bb.r, %bb.p, %bb.p, %bb.p, %bb.p
  %.0.i.i.i = phi i32 [ %i.ck, %bb.s ], [ %i.cj, %bb.r ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ], [ %i.cf, %bb.p ]
  store i32 %.0.i.i.i, ptr %i.bz, align 8
  store i8 0, ptr %i.ca, align 4
  br label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i: ; preds = %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i, %.lr.ph.i15
  %i.cl = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.07.i) #34 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bx
  br i1 %i.cm, label %._crit_edge.i, label %.lr.ph.i15

_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit: ; preds = %.thread, %._crit_edge.i
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !21, !noundef !16
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = and i1 %1, %i.co
  br i1 %i.cp, label %bb.t, label %bb.u, !prof !11

bb.t:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.407, i64 noundef 36) #28 ; 0 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #28, !inline_history !199 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.a, %bb.a, %bb.t, %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal6maglev22CheckMapsWithMigration24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(352) %2) local_unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal6maglev18MigrateMapIfNeeded24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(352) %2) local_unnamed_addr #4 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN2v88internal6maglev8NodeBase24TryGetInt32ConstantInputEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = sext i32 %1 to i64
  %i.c = sub nsw i64 0, %i.b
  %i.d = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = and i64 %i.g, 65535                      ; 2 uses
  %i.i = icmp ne i64 %i.h, 226
  %.not20 = icmp eq ptr %i.e, null                ; 2 uses
  %.not = or i1 %.not20, %i.i
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8
  %i.k = lshr i64 %.sroa.0.0.copyload.i, 32
  br label %.critedge14

.critedge:                                        ; preds = %bb.a
  %i.l = icmp ne i64 %i.h, 222
  %.not12 = or i1 %.not20, %i.l
  br i1 %.not12, label %.critedge14, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = zext i32 %i.n to i64
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge, %bb.c, %bb.b
  %.sroa.018.0 = phi i64 [ %i.k, %bb.b ], [ %i.o, %bb.c ], [ 0, %.critedge ]
  %.sroa.3.0 = phi i64 [ 4294967296, %bb.b ], [ 4294967296, %bb.c ], [ 0, %.critedge ]
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.018.0
  ret i64 %.sroa.018.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2v88internal6maglev9ValueNode8GetRangeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.v8::internal::maglev::RangeType") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, 65535
  %i.d = icmp eq i64 %i.c, 221
  br i1 %i.d, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr6.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %tailrecurse ]
  %i.e = getelementptr inbounds nuw i8, ptr %.tr6.lcssa, i64 24
  %.sroa.0.0.copyload.i5 = load double, ptr %i.e, align 8 ; 4 uses
  %i.f = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload.i5) ; 2 uses
  %i.g = fcmp one double %i.f, +inf
  %i.h = tail call double @llvm.trunc.f64(double %.sroa.0.0.copyload.i5)
  %i.i = fcmp oeq double %.sroa.0.0.copyload.i5, %i.h
  %or.cond.not.i = and i1 %i.g, %i.i
  %i.j = fcmp ole double %i.f, f0x433FFFFFFFFFFFFF
  %spec.select.i = and i1 %i.j, %or.cond.not.i
  br i1 %spec.select.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %tailrecurse._crit_edge
  %i.k = fptosi double %.sroa.0.0.copyload.i5 to i64 ; 2 uses
  store i8 1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %i.m, align 8
  br label %bb.m

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.n = phi i64 [ %i.s, %tailrecurse ], [ %i.b, %bb.a ] ; 3 uses
  %.tr69 = phi ptr [ %i.q, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %i.o = and i64 %i.n, 8796093022208
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.d, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph
  %i.p = getelementptr inbounds i8, ptr %.tr69, i64 -8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = and i64 %i.s, 65535
  %i.u = icmp eq i64 %i.t, 221
  br i1 %i.u, label %tailrecurse._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %sum.shift.i = lshr i64 %i.n, 40
  %i.v = trunc i64 %sum.shift.i to i8
  %i.w = and i8 %i.v, 7
  switch i8 %i.w, label %bb.l [
    i8 1, label %bb.e
    i8 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2147483648, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2147483647, ptr %i.y, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.z = trunc i64 %i.n to i16
  switch i16 %i.z, label %bb.k [
    i16 253, label %bb.g
    i16 254, label %bb.h
    i16 255, label %bb.i
    i16 256, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr69, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.m

end_hunk_0
