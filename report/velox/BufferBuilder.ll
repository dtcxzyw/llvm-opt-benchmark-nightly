inline.NumInlined: 1494
inline.NumDeleted: 769
begin_hunk_0
@_ZTVN4geos6noding18NodedSegmentStringE = external unnamed_addr constant { [9 x ptr] }, align 8
@_ZTVN4geos6noding17IntersectionAdderE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE = linkonce_odr unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED2Ev, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEED0Ev, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE6insertEPKNS_4geom8EnvelopeEPv, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE5queryEPKNS_4geom8EnvelopeERSt6vectorIPvSaISE_EE, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE5queryEPKNS_4geom8EnvelopeERNS0_11ItemVisitorE, ptr @_ZN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEE6removeEPKNS_4geom8EnvelopeEPv] }, comdat, align 8
@_ZTIN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE, i32 0, i32 2, ptr @_ZTIN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE, i64 2050, ptr @_ZTIN4geos5index12SpatialIndexE, i64 2 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE = linkonce_odr constant [90 x i8] c"N4geos5index7strtree15TemplateSTRtreeIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE\00", comdat, align 1
@_ZTIN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE }, comdat, align 8
@_ZTSN4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE = linkonce_odr constant [94 x i8] c"N4geos5index7strtree19TemplateSTRtreeImplIPKNS0_5chain13MonotoneChainENS1_14EnvelopeTraitsEEE\00", comdat, align 1
@_ZTIN4geos5index12SpatialIndexE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos5index12SpatialIndexE }, comdat, align 8
@_ZTSN4geos5index12SpatialIndexE = linkonce_odr constant [28 x i8] c"N4geos5index12SpatialIndexE\00", comdat, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

@_ZN4geos9operation6buffer13BufferBuilderD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4geos9operation6buffer13BufferBuilderD2Ev

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK4geos6noding12MCIndexNoder18getNodedSubstringsEv(ptr noundef nonnull align 8 dereferenceable(161) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef ptr @_ZN4geos6noding18NodedSegmentString18getNodedSubstringsERKSt6vectorIPNS0_13SegmentStringESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  ret ptr %i.c
}

declare noundef ptr @_ZN4geos6noding18NodedSegmentString18getNodedSubstringsERKSt6vectorIPNS0_13SegmentStringESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZN4geos9operation6buffer13BufferBuilder10depthDeltaERKNS_9geomgraph5LabelE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(8) %0) local_unnamed_addr #2 align 2 {
_ZNK4geos9geomgraph5Label11getLocationEjj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1, !tbaa !32    ; 2 uses
  %i.c = icmp ugt i8 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %.0.i.i = select i1 %i.c, i8 %i.e, i8 -1        ; 2 uses
  %i.f = icmp ugt i8 %i.b, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %.0.i.i9 = select i1 %i.f, i8 %i.h, i8 -1       ; 2 uses
  %i.i = icmp eq i8 %.0.i.i, 0
  %i.j = icmp eq i8 %.0.i.i9, 2
  %or.cond = and i1 %i.i, %i.j
  %i.k = icmp eq i8 %.0.i.i, 2
  %i.l = icmp eq i8 %.0.i.i9, 0
  %or.cond3 = and i1 %i.k, %i.l
  %. = sext i1 %or.cond3 to i32
  %.0 = select i1 %or.cond, i32 1, i32 %.
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4geos9operation6buffer13BufferBuilderD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(161) dereferenceable(161) initializes((48, 56)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #21
  br label %_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9geomgraph8EdgeListE, i64 16), ptr %i.l, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66   ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i ], [ %i.o, %_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #21, !inline_history !68
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt6vectorIPN4geos9geomgraph5LabelESaIS3_EED2Ev.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !72
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.t, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.u) #21, !inline_history !68
  br label %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit.i

_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit.i: ; preds = %bb.g, %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN4geos9geomgraph8EdgeListD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #21, !inline_history !68
  br label %_ZN4geos9geomgraph8EdgeListD2Ev.exit

_ZN4geos9geomgraph8EdgeListD2Ev.exit:             ; preds = %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos9geomgraph8EdgeListD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9geomgraph8EdgeListE, i64 16), ptr %0, align 8, !tbaa !63
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #21
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !69

_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #21
  br label %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit

_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4geos6noding23OrientedCoordinateArrayESt4pairIKS2_PNS0_9geomgraph4EdgeEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS2_ENS2_8HashCodeENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #21
  br label %_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos9geomgraph4EdgeESaIS3_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapIN4geos6noding23OrientedCoordinateArrayEPNS0_9geomgraph4EdgeENS2_8HashCodeESt8equal_toIS2_ESaISt4pairIKS2_S5_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(161) %1, ptr noundef %2, double noundef %3, i1 noundef zeroext %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.geos::operation::overlay::snap::SnapOverlayOp", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.35", align 1 ; 5 uses
  %8 = alloca %"class.geos::operation::buffer::BufferParameters", align 8 ; 8 uses
  %9 = alloca %"class.geos::operation::buffer::BufferBuilder", align 8 ; 16 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %11 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %12 = alloca %"class.geos::operation::buffer::OffsetCurveBuilder", align 8 ; 7 uses
  %13 = alloca %"class.std::vector.47", align 8   ; 10 uses
  %14 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %15 = alloca %"class.std::vector.5", align 8    ; 14 uses
  %16 = alloca %"class.std::unique_ptr.39", align 8 ; 8 uses
  %17 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %18 = alloca %"class.geos::operation::linemerge::LineMerger", align 8 ; 8 uses
  %19 = alloca %"class.std::vector.85", align 8   ; 10 uses
  %20 = alloca %"class.std::unique_ptr.39", align 8 ; 27 uses
  %21 = alloca %"class.std::unique_ptr.39", align 8 ; 9 uses
  %22 = alloca %"class.std::unique_ptr.95", align 8 ; 5 uses
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %2, ptr nonnull @_ZTIN4geos4geom8GeometryE, ptr nonnull @_ZTIN4geos4geom10LineStringE, i64 0) #22 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.a, %bb.b
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %.thread
  invoke void @_ZN4geos4util24IllegalArgumentExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4geos4util24IllegalArgumentExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.eg unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0146 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0146, label %bb.f, label %bb.ef

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.0146, label %bb.f, label %bb.ef

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn330 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #22
  br label %bb.ef

bb.g:                                             ; preds = %bb.b
  %i.i = fcmp oeq double %3, 0.000000e+00
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.j = load ptr, ptr %2, align 8, !tbaa !63, !noalias !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 416
  %i.l = load ptr, ptr %i.k, align 8, !noalias !78
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(40) %2), !noalias !78, !inline_history !81
  store ptr %i.m, ptr %0, align 8, !tbaa !82, !alias.scope !78
  br label %bb.ee

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84   ; 2 uses
  %.not187 = icmp eq ptr %i.o, null
  br i1 %.not187, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef ptr @_ZNK4geos4geom8Geometry17getPrecisionModelEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0152 = phi ptr [ %i.o, %bb.i ], [ %i.p, %bb.j ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 7 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.t = load ptr, ptr %1, align 8, !tbaa !95, !nonnull !96, !align !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !tbaa.struct !98
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 2, ptr %i.u, align 4, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.v, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %8, ptr %9, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, i8 0, i64 40, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4geos9geomgraph8EdgeListE, i64 16), ptr %i.x, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i8 0, i64 64, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 1, ptr %i.ab, align 8, !tbaa !72
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ae, i8 0, i64 41, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN4geos9operation6buffer13BufferBuilder6bufferEPKNS_4geom8GeometryEd(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %10, ptr noundef nonnull align 8 dereferenceable(161) %9, ptr noundef nonnull %i.b, double noundef %3)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.af = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(40) %i.af)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store double 0.000000e+00, ptr %12, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.0152, ptr %i.aj, align 8, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %8, ptr %i.ak, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.al = load ptr, ptr %2, align 8, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.39") align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %14, align 8, !tbaa !113
  %i.ap = xor i1 %4, true
  invoke void @_ZN4geos9operation6buffer18OffsetCurveBuilder23getSingleSidedLineCurveEPKNS_4geom18CoordinateSequenceEdRSt6vectorIPS4_SaIS8_EEbb(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %i.ao, double noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext %4, i1 noundef zeroext %i.ap)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %14, align 8, !tbaa !113  ; 3 uses
  store ptr null, ptr %14, align 8, !tbaa !113
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.o
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !63
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #22, !inline_history !115
  %.pr = load ptr, ptr %14, align 8, !tbaa !113   ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr) #22, !inline_history !116
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.o, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !117 ; 3 uses
  %i.az = load ptr, ptr %13, align 8, !tbaa !120  ; 3 uses
  %.not412 = icmp eq ptr %i.ay, %i.az
  br i1 %.not412, label %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %bb.x

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE9push_backERKS3_.exit
  %i.bc = icmp eq ptr %i.dq, %i.dp
  br i1 %i.bc, label %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4geos4geom18CoordinateSequenceES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4geos4geom18CoordinateSequenceES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.dp, ptr %i.ax, align 8, !tbaa !117
  br label %_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN4geos4geom18CoordinateSequenceESaIS3_EE5clearEv.exit: ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %._crit_edge, %_ZSt8_DestroyIPPN4geos4geom18CoordinateSequenceES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !121 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer13BufferBuilder21bufferLineSingleSidedEPKNS_4geom8GeometryEdb:bb.a
_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.eq, ptr %i.eh, align 8, !tbaa !145
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !148
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  store ptr %i.es, ptr %i.ep, align 8, !tbaa !149
  %.pre447 = load ptr, ptr %i.ei, align 8, !tbaa !139 ; 2 uses
  %.pre448 = load ptr, ptr %i.eg, align 8, !tbaa !142 ; 3 uses
  %.pre460 = ptrtoint ptr %.pre447 to i64
  %.pre461 = ptrtoint ptr %.pre448 to i64
  %.pre463 = sub i64 %.pre460, %.pre461
  %i.et = ashr exact i64 %.pre463, 3
  %i.eu = icmp eq ptr %.pre447, %.pre448
  %i.ev = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  br i1 %i.eu, label %._crit_edge405, label %.lr.ph404

.lr.ph404:                                        ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  br label %bb.am

bb.aj:                                            ; preds = %bb.s, %.noexc, %bb.r, %_ZN4geos9operation6buffer13BufferBuilder8getNoderEPKNS_4geom14PrecisionModelE.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

bb.ak:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIPN4geos4geom8GeometryESaIS3_EE11_M_allocateEm.exit.i, %bb.ah, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

bb.am:                                            ; preds = %.lr.ph404, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit
  %.0177403 = phi i64 [ 0, %.lr.ph404 ], [ %i.gn, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.fa = load ptr, ptr %i.eg, align 8, !tbaa !142
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0177403
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !137 ; 4 uses
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !63
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = invoke noundef ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.fc)
          to label %bb.an unwind label %bb.av     ; 2 uses

bb.an:                                            ; preds = %bb.am
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !63
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.39") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.fh)
          to label %bb.ao unwind label %bb.av

bb.ao:                                            ; preds = %bb.an
  %i.fl = load ptr, ptr %16, align 8, !tbaa !113
  store ptr null, ptr %16, align 8, !tbaa !113
  %i.fm = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory16createLineStringEPNS0_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(45) %i.fd, ptr noundef %i.fl)
          to label %bb.ap unwind label %bb.aw     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load ptr, ptr %16, align 8, !tbaa !113  ; 3 uses
  %.not.i231 = icmp eq ptr %i.fn, null
  br i1 %.not.i231, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit233, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i232

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i232: ; preds = %bb.ap
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !63
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fn) #22, !inline_history !116
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit233

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit233: ; preds = %bb.ap, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i232
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fr = load ptr, ptr %i.fc, align 8, !tbaa !63
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fc) #22
  %i.fu = load ptr, ptr %i.ew, align 8, !tbaa !148 ; 4 uses
  %i.fv = load ptr, ptr %i.ep, align 8, !tbaa !149
  %.not.i234 = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.i234, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit233
  store ptr %i.fm, ptr %i.fu, align 8, !tbaa !82
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fw, ptr %i.ew, align 8, !tbaa !148
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit233
  %i.fx = load ptr, ptr %i.eh, align 8, !tbaa !145 ; 4 uses
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 5 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.as, label %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %.noexc238 unwind label %.loopexit.split-lp352

.noexc238:                                        ; preds = %bb.as
  unreachable

_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ar
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i.i235 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i.i235, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i.i236 = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i.i236)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #24
          to label %.noexc239 unwind label %.loopexit351 ; 4 uses

.noexc239:                                        ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.ga ; 2 uses
  store ptr %i.fm, ptr %i.gj, align 8, !tbaa !82
  %i.gk = icmp sgt i64 %i.ga, 0
  br i1 %i.gk, label %bb.at, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.at:                                            ; preds = %.noexc239
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr align 8 %i.fx, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.at, %.noexc239
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.not.i17.i.i237 = icmp eq ptr %i.fx, null
  br i1 %.not.i17.i.i237, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fx) #21
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.au, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.gi, ptr %i.eh, align 8, !tbaa !145
  store ptr %i.gl, ptr %i.ew, align 8, !tbaa !148
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.gm, ptr %i.ep, align 8, !tbaa !149
  br label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.aq
  %i.gn = add nuw i64 %.0177403, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gn, %i.ev
  br i1 %exitcond.not, label %._crit_edge405.loopexit, label %bb.am, !llvm.loop !150

bb.av:                                            ; preds = %bb.an, %bb.am
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit242

bb.aw:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %16, align 8, !tbaa !113  ; 3 uses
  %.not.i240 = icmp eq ptr %i.gq, null
  br i1 %.not.i240, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit242, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i241

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i241: ; preds = %bb.aw
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !63
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gq) #22, !inline_history !116
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit242

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit242: ; preds = %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i241, %bb.aw, %bb.av
  %.pn205 = phi { ptr, i32 } [ %i.go, %bb.av ], [ %i.gp, %bb.aw ], [ %i.gp, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

.loopexit351:                                     ; preds = %_ZNKSt6vectorIPN4geos4geom8GeometryESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

.loopexit.split-lp352:                            ; preds = %bb.as
  %lpad.loopexit.split-lp354 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN4geos4geom8GeometryESt14default_deleteIS2_EED2Ev.exit306

._crit_edge405.loopexit:                          ; preds = %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backERKS3_.exit
  %.pre449 = load ptr, ptr %i.eg, align 8, !tbaa !142
  br label %._crit_edge405

._crit_edge405:                                   ; preds = %bb.ai, %._crit_edge405.loopexit, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit
  %i.gu = phi ptr [ %.pre449, %._crit_edge405.loopexit ], [ %.pre448, %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE7reserveEm.exit ], [ %i.ek, %bb.ai ] ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i243, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge405
  call void @_ZdlPv(ptr noundef nonnull %i.gu) #21
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit: ; preds = %._crit_edge405, %bb.ax
  call void @_ZdlPv(ptr noundef nonnull %i.eg) #21
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !139 ; 2 uses
  %i.gx = load ptr, ptr %15, align 8, !tbaa !142  ; 2 uses
  %.not414 = icmp eq ptr %i.gw, %i.gx
  br i1 %.not414, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE5clearEv.exit, label %.lr.ph407.preheader

.lr.ph407.preheader:                              ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = ashr exact i64 %i.ha, 3
  br label %.lr.ph407

._crit_edge408:                                   ; preds = %bb.az
  %.pre450 = load ptr, ptr %15, align 8, !tbaa !142 ; 2 uses
  %.pre451 = load ptr, ptr %i.gv, align 8, !tbaa !139
  %i.hc = icmp eq ptr %.pre451, %.pre450
  br i1 %i.hc, label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPPN4geos6noding13SegmentStringES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN4geos6noding13SegmentStringES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %._crit_edge408
  store ptr %.pre450, ptr %i.gv, align 8, !tbaa !139
  br label %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE5clearEv.exit

_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EED2Ev.exit, %._crit_edge408, %_ZSt8_DestroyIPPN4geos6noding13SegmentStringES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.hd = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.he = invoke noundef ptr @_ZNK4geos4geom15GeometryFactory21createMultiLineStringEPSt6vectorIPNS0_8GeometryESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(45) %i.hd, ptr noundef nonnull %i.eh)
          to label %bb.ba unwind label %bb.bu     ; 15 uses

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %bb.az
  %.0178406 = phi i64 [ %i.hl, %bb.az ], [ 0, %.lr.ph407.preheader ] ; 2 uses
  %23 = load ptr, ptr %15, align 8, !tbaa !142
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %23, i64 %.0178406
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !137 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph407
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !63
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8
  call void %i.hk(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hg) #22
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph407, %bb.ay
  %i.hl = add nuw i64 %.0178406, 1                ; 2 uses
  %exitcond432.not = icmp eq i64 %i.hl, %i.hb
  br i1 %exitcond432.not, label %._crit_edge408, label %.lr.ph407, !llvm.loop !151

bb.ba:                                            ; preds = %_ZNSt6vectorIPN4geos6noding13SegmentStringESaIS3_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hm = load ptr, ptr %11, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !152
  store ptr %i.he, ptr %5, align 8, !tbaa !82, !noalias !152
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !82, !noalias !152
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr null, ptr %i.ho, align 8, !tbaa !155, !noalias !152
  invoke void @_ZN4geos9operation7overlay4snap13SnapOverlayOp20computeSnapToleranceEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN4geos9operation7overlay4snap13SnapOverlayOpC2ERKNS_4geom8GeometryES7_.exit.i unwind label %bb.bb, !noalias !152

bb.bb:                                            ; preds = %bb.ba
  %i.hp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN4geos9precision17CommonBitsRemoverESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ho) #22, !noalias !152
  br label %.body

_ZN4geos9operation7overlay4snap13SnapOverlayOpC2ERKNS_4geom8GeometryES7_.exit.i: ; preds = %bb.ba
  invoke void @_ZN4geos9operation7overlay4snap13SnapOverlayOp17getResultGeometryENS1_9OverlayOp6OpCodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 1)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %_ZN4geos9operation7overlay4snap13SnapOverlayOpC2ERKNS_4geom8GeometryES7_.exit.i
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !158, !noalias !152 ; 3 uses
  %.not.i.i.i245 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i245, label %bb.be, label %_ZNKSt14default_deleteIN4geos9precision17CommonBitsRemoverEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4geos9precision17CommonBitsRemoverEEclEPS2_.exit.i.i.i: ; preds = %bb.bc
  call void @_ZN4geos9precision17CommonBitsRemoverD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.hq) #22
  call void @_ZdlPv(ptr noundef nonnull %i.hq) #21
  br label %bb.be

bb.bd:                                            ; preds = %_ZN4geos9operation7overlay4snap13SnapOverlayOpC2ERKNS_4geom8GeometryES7_.exit.i
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4geos9operation7overlay4snap13SnapOverlayOpD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !152
  br label %.body

bb.be:                                            ; preds = %_ZNKSt14default_deleteIN4geos9precision17CommonBitsRemoverEEclEPS2_.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !152
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN4geos9operation9linemerge10LineMergerC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %18)
          to label %bb.bf unwind label %bb.bv

bb.bf:                                            ; preds = %bb.be
  %i.hs = load ptr, ptr %17, align 8, !tbaa !82
  invoke void @_ZN4geos9operation9linemerge10LineMerger3addEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(240) %18, ptr noundef %i.hs)
          to label %bb.bg unwind label %bb.bw

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN4geos9operation9linemerge10LineMerger20getMergedLineStringsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.85") align 8 %19, ptr noundef nonnull align 8 dereferenceable(240) %18)
          to label %bb.bh unwind label %bb.bx

bb.bh:                                            ; preds = %bb.bg
  %i.ht = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.bi unwind label %bb.by     ; 10 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, i8 0, i64 24, i1 false)
  %i.hu = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.bj unwind label %bb.bz     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !63
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.hx(ptr noundef nonnull align 8 dereferenceable(8) %i.hu, i64 noundef 0)
          to label %_ZNK4geos4geom18CoordinateSequence5frontEv.exit unwind label %bb.bz, !inline_history !159 ; 2 uses

_ZNK4geos4geom18CoordinateSequence5frontEv.exit:  ; preds = %bb.bj
  %i.hz = invoke noundef ptr @_ZNK4geos4geom10LineString16getCoordinatesROEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.bk unwind label %bb.ca     ; 4 uses

bb.bk:                                            ; preds = %_ZNK4geos4geom18CoordinateSequence5frontEv.exit
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !63
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8
  %i.id = invoke noundef i64 %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hz)
          to label %.noexc247 unwind label %bb.ca, !inline_history !160

.noexc247:                                        ; preds = %bb.bk
  %i.ie = add i64 %i.id, -1
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, i64 noundef %i.ie)
          to label %_ZNK4geos4geom18CoordinateSequence4backEv.exit.preheader unwind label %bb.ca, !inline_history !160 ; 2 uses

_ZNK4geos4geom18CoordinateSequence4backEv.exit.preheader: ; preds = %.noexc247
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.ik = load ptr, ptr %19, align 8, !tbaa !161
  %i.il = load ptr, ptr %i.ij, align 8, !tbaa !161 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNK4geos4geom18CoordinateSequence4backEv.exit._crit_edge, label %.lr.ph410

.lr.ph410:                                        ; preds = %_ZNK4geos4geom18CoordinateSequence4backEv.exit.preheader
  %i.in = fmul double %3, f0x3FEF5C28F5C28F5C     ; 2 uses
  %i.io = fmul double %3, 1.020000e+00            ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph410, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit275
  %i.ir = phi ptr [ %i.il, %.lr.ph410 ], [ %i.rv, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit275 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.is = getelementptr inbounds i8, ptr %i.ir, i64 -8
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !163 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !63
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 40
  %i.iw = load ptr, ptr %i.iv, align 8
  invoke void %i.iw(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.39") align 8 %20, ptr noundef nonnull align 8 dereferenceable(48) %i.it)
          to label %bb.bm unwind label %bb.cb

bb.bm:                                            ; preds = %bb.bl
  %i.ix = load ptr, ptr %20, align 8, !tbaa !113
  %.not338 = icmp eq ptr %i.ix, null
  br i1 %.not338, label %_ZNSt6vectorIPN4geos4geom8GeometryESaIS3_EE9push_backEOS3_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iy = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 376
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = invoke noundef double %i.ja(ptr noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %bb.bo unwind label %bb.cc

bb.bo:                                            ; preds = %bb.bn
  %i.jc = fmul double %i.jb, 1.000000e-01
  %i.jd = fsub double %3, %i.jc                   ; 2 uses
  %i.je = fcmp olt double %i.jd, %i.in
  %.sroa.speculated = select i1 %i.je, double %i.in, double %i.jd ; 4 uses
  %i.jf = load ptr, ptr %20, align 8, !tbaa !113  ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = invoke noundef i64 %i.ji(ptr noundef nonnull align 8 dereferenceable(8) %i.jf)
          to label %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit unwind label %bb.cd, !inline_history !165 ; 4 uses

_ZNK4geos4geom18CoordinateSequence4sizeEv.exit:   ; preds = %bb.bo
  %i.jk = add i64 %i.jj, -1                       ; 2 uses
  %i.jl = icmp ne i64 %i.jj, 0
  %umin = zext i1 %i.jl to i64                    ; 3 uses
  %i.jm = sub i64 %i.jj, %umin                    ; 4 uses
  %exitcond433.not550 = icmp eq i64 %i.jm, 0
  br i1 %exitcond433.not550, label %.critedge, label %.lr.ph553

bb.bp:                                            ; preds = %bb.bt
  %i.jn = add i64 %.0153552, -1
  %exitcond433.not = icmp eq i64 %i.kf, %i.jm
  br i1 %exitcond433.not, label %.critedge, label %.lr.ph553

.lr.ph553:                                        ; preds = %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit, %bb.bp
  %.0153552 = phi i64 [ %i.jn, %bb.bp ], [ %i.jj, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ] ; 3 uses
  %.0170551 = phi i64 [ %i.kf, %bb.bp ], [ 0, %_ZNK4geos4geom18CoordinateSequence4sizeEv.exit ] ; 5 uses
  %i.jo = load ptr, ptr %20, align 8, !tbaa !113  ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !63
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %i.jo, i64 noundef %.0170551)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bq:                                            ; preds = %.lr.ph553
  %i.jt = load <2 x double>, ptr %i.js, align 8, !tbaa !103
  %i.ju = load <2 x double>, ptr %i.hy, align 8, !tbaa !103
  %i.jv = fsub <2 x double> %i.jt, %i.ju          ; 2 uses
  %i.jw = fmul <2 x double> %i.jv, %i.jv          ; 2 uses
  %shift = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.jw, %shift
  %i.jx = extractelement <2 x double> %foldExtExtBinop, i64 0
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.jx)
  %i.jy = fcmp olt double %sqrt.i, %.sroa.speculated
  br i1 %i.jy, label %bb.br, label %.critedge

bb.br:                                            ; preds = %bb.bq
  %i.jz = load ptr, ptr %20, align 8, !tbaa !113  ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !63
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, i64 noundef %.0170551)
          to label %bb.bs unwind label %bb.ce

bb.bs:                                            ; preds = %bb.br
  %i.ke = load ptr, ptr %20, align 8, !tbaa !113  ; 2 uses
  %i.kf = add nuw i64 %.0170551, 1                ; 3 uses
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !63
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.ke, i64 noundef %i.kf)
          to label %bb.bt unwind label %bb.ce

bb.bt:                                            ; preds = %bb.bs
  %i.kk = load <2 x double>, ptr %i.kd, align 8, !tbaa !103
  %i.kl = load <2 x double>, ptr %i.kj, align 8, !tbaa !103
  %i.km = fsub <2 x double> %i.kk, %i.kl          ; 2 uses
  %i.kn = fmul <2 x double> %i.km, %i.km          ; 2 uses
end_hunk_1
