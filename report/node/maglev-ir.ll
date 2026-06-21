inline.NumInlined: 20439
inline.NumDeleted: 7868
begin_hunk_0_@_ZNK2v88internal6maglev5Deopt11PrintParamsERSo:bb.a
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %1, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = or i32 %i.m, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.k, i32 noundef %i.n) #28
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #28
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.g, i64 noundef %i.o) #28 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev20BranchIfRootConstant11PrintParamsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(42) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i16, ptr %i.b, align 8
  %i.d = zext i16 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal10RootsTable11root_names_E, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = or i32 %i.l, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m) #28
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #28
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef %i.n) #28 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev22BranchIfFloat64Compare11PrintParamsERSo(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9Operation(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev20BranchIfInt32Compare11PrintParamsERSo(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9Operation(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev21BranchIfUint32Compare11PrintParamsERSo(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK9Operation(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev14BranchIfTypeOf11PrintParamsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN2v88internal11interpreter15TestTypeOfFlags8ToStringENS2_11LiteralFlagE(i8 noundef zeroext %i.c) #28 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k) #28
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef %i.l) #28 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal6maglev28ExtendPropertiesBackingStore11PrintParamsERSo(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) #28 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c) #28
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.3, i64 noundef 1) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev8NodeBase23ClearElementsPropertiesEbRNS1_16KnownNodeAspectsE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(352) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %_ZN2v88internal6maglev16KnownNodeAspects27ClearLoadedPropertiesForKeyENS2_20LoadedPropertyMapKeyE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
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
    i32 0, label %bb.t
    i32 1, label %bb.t
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
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ne ptr %i.ai, %i.j
  %or.cond.not = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit"

.lr.ph.i:                                         ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14, %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"
  %.sroa.01.04.i = phi ptr [ %i.bj, %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i" ], [ %i.ai, %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 44 ; 3 uses
  %i.am = load i8, ptr %i.al, align 4, !range !21, !noundef !16
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.d, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

bb.d:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 48 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ao, align 8 ; 3 uses
  %i.ap = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, 1
  br i1 %i.ap, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = and i64 %.sroa.01.0.copyload.i.i.i.i.i, 3
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.critedge.preheader.i.i, label %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i

_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i: ; preds = %bb.e
  %i.as = add i64 %.sroa.01.0.copyload.i.i.i.i.i, -2
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %.not12.i.i = icmp eq i64 %i.av, 0
  br i1 %.not12.i.i, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i, %bb.e
  %.0.i.i19.i.i = phi i64 [ %i.av, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i ], [ 1, %bb.e ]
  br label %.critedge.i.i

bb.f:                                             ; preds = %.critedge.i.i
  %i.aw = add nuw i64 %.sroa.5.013.i.i, 1         ; 2 uses
  %.not.i.i = icmp eq i64 %i.aw, %.0.i.i19.i.i
  br i1 %.not.i.i, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.f, %.critedge.preheader.i.i
  %.sroa.5.013.i.i = phi i64 [ %i.aw, %bb.f ], [ 0, %.critedge.preheader.i.i ] ; 2 uses
  %i.ax = call ptr @_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE2atEm(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i64 noundef %.sroa.5.013.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ax, ptr %3, align 8
  %i.ay = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef6equalsES2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.ay, label %bb.g, label %bb.f

bb.g:                                             ; preds = %.critedge.i.i
  %i.az = load i8, ptr %i.al, align 4, !range !21, !noundef !16
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.h, label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.ao, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i, i64 45
  store i8 0, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.ak, align 8            ; 8 uses
  %i.bd = lshr i32 %i.bc, 6
  %i.be = and i32 %i.bd, 31
  switch i32 %i.be, label %bb.i [
    i32 0, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 1, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 7, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
    i32 31, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bf = and i32 %i.bc, 1536
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bh = or i32 %i.bc, 448
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bi = or i32 %i.bc, 1984
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i

_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.h, %bb.h, %bb.h
  %.0.i.i7.i.i = phi i32 [ %i.bi, %bb.k ], [ %i.bh, %bb.j ], [ %i.bc, %bb.h ], [ %i.bc, %bb.h ], [ %i.bc, %bb.h ], [ %i.bc, %bb.h ]
  store i32 %.0.i.i7.i.i, ptr %i.ak, align 8
  store i8 0, ptr %i.al, align 4
  br label %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i"

"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i": ; preds = %bb.f, %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i.i, %bb.g, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE3endEv.exit.i.i, %bb.d, %.lr.ph.i
  %i.bj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.04.i) #34 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.j
  br i1 %i.bk, label %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit", label %.lr.ph.i

"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit": ; preds = %"_ZN2v88internal6maglev8NodeInfo22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRNS1_16KnownNodeAspectsEE3$_0EEvRKT_.exit.i", %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit14
  %i.bl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !21, !noundef !16
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = and i1 %1, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !11

bb.l:                                             ; preds = %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit"
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.406, i64 noundef 36) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bp = call ptr @_ZNK2v88internal8compiler6MapRef6objectEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %5, align 8
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoRKNS0_5BriefE(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #28, !inline_history !199 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.m

bb.m:                                             ; preds = %"_ZN2v88internal6maglev16KnownNodeAspects22ClearUnstableMapsIfAnyIZNS1_8StoreMap24ClearUnstableNodeAspectsEbRS2_E3$_0EEvRKT_.exit", %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.t

.thread:                                          ; preds = %_ZNK2v88internal6maglev8NodeInfo13possible_mapsEv.exit, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i, %bb.b, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i, %_ZNK2v88internal14ZoneCompactSetINS0_8compiler6MapRefEE4sizeEv.exit, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit, %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8, !range !21, !noundef !16
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.n, label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

bb.n:                                             ; preds = %.thread
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %._crit_edge.i, label %.lr.ph.i15

._crit_edge.i:                                    ; preds = %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i, %bb.n
  store i8 0, ptr %i.bt, align 8
  br label %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit

.lr.ph.i15:                                       ; preds = %bb.n, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i
  %.sroa.04.07.i = phi ptr [ %i.cn, %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i ], [ %i.bx, %bb.n ] ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 44 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !range !21, !noundef !16
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.o, label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

bb.o:                                             ; preds = %.lr.ph.i15
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 48
  store i64 1, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 45
  store i8 0, ptr %i.cf, align 1
  %i.cg = load i32, ptr %i.ca, align 8            ; 8 uses
  %i.ch = lshr i32 %i.cg, 6
  %i.ci = and i32 %i.ch, 31
  switch i32 %i.ci, label %bb.p [
    i32 0, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 1, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 7, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
    i32 31, label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.cj = and i32 %i.cg, 1536
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = or i32 %i.cg, 448
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.cm = or i32 %i.cg, 1984
  br label %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i

_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o, %bb.o, %bb.o, %bb.o
  %.0.i.i.i = phi i32 [ %i.cm, %bb.r ], [ %i.cl, %bb.q ], [ %i.cg, %bb.o ], [ %i.cg, %bb.o ], [ %i.cg, %bb.o ], [ %i.cg, %bb.o ]
  store i32 %.0.i.i.i, ptr %i.ca, align 8
  store i8 0, ptr %i.cb, align 4
  br label %_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i

_ZN2v88internal6maglev8NodeInfo17ClearUnstableMapsEv.exit.i: ; preds = %_ZN2v88internal6maglev14MakeTypeStableENS1_8NodeTypeE.exit.i.i, %.lr.ph.i15
  %i.cn = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.07.i) #34 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.by
  br i1 %i.co, label %._crit_edge.i, label %.lr.ph.i15

_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit: ; preds = %.thread, %._crit_edge.i
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 158), align 2, !range !21, !noundef !16
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = and i1 %1, %i.cq
  br i1 %i.cr, label %bb.s, label %bb.t, !prof !11

bb.s:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit
  %i.cs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.407, i64 noundef 36) #28 ; 0 uses
  %i.ct = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout) #28, !inline_history !199 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.a, %bb.a, %bb.s, %_ZN2v88internal6maglev16KnownNodeAspects17ClearUnstableMapsEv.exit
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
  %i.l = trunc nuw i64 %i.k to i32
  br label %.critedge14

.critedge:                                        ; preds = %bb.a
  %i.m = icmp ne i64 %i.h, 222
  %.not12 = or i1 %.not20, %i.m
  br i1 %.not12, label %.critedge14, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.o = load i32, ptr %i.n, align 4
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge, %bb.c, %bb.b
  %.sroa.018.0 = phi i32 [ %i.l, %bb.b ], [ %i.o, %bb.c ], [ undef, %.critedge ]
  %.sroa.3.0 = phi i64 [ 4294967296, %bb.b ], [ 4294967296, %bb.c ], [ 0, %.critedge ]
  %.sroa.018.0.insert.ext = zext i32 %.sroa.018.0 to i64
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.3.0, %.sroa.018.0.insert.ext
  ret i64 %.sroa.018.0.insert.insert
}
end_hunk_0
