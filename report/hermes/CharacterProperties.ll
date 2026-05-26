inline.NumInlined: 252
inline.NumDeleted: 137
begin_hunk_0_@_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb:bb.a
  br label %_ZN6hermes12CodePointSet3addEj.exit.i66

_ZN6hermes12CodePointSet3addEj.exit.i66:          ; preds = %_ZSt13move_backwardIPN6hermes14CodePointRangeES2_ET0_T_S4_S3_.exit.i, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes14CodePointRangeELb1EE9push_backERKS2_.exit.i, %_ZN4llvh15SmallVectorImplIN6hermes14CodePointRangeEE5eraseEPKS2_S5_.exit.i.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN6hermes12CodePointSet3addEj.exit.i66, %bb.y
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.mq = icmp samesign ult i64 %indvars.iv.next.i, %i.hk
  br i1 %i.mq, label %bb.y, label %.loopexit.i, !llvm.loop !24

.loopexit.i:                                      ; preds = %bb.aq, %bb.x
  %i.mr = getelementptr inbounds nuw i8, ptr %.053.i, i64 8 ; 2 uses
  %.not.i40 = icmp eq ptr %i.mr, %i.an
  br i1 %.not.i40, label %_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit, label %bb.x, !llvm.loop !25

_ZN6hermesL25addPrecanonicalCharactersENS_14CodePointRangeEPNS_12CodePointSetEb.exit: ; preds = %.loopexit.i, %bb.w
  %i.ms = getelementptr inbounds nuw i8, ptr %.019121, i64 8 ; 2 uses
  %.not20 = icmp eq ptr %i.ms, %i.am
  br i1 %.not20, label %._crit_edge123.loopexit, label %bb.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZN6hermes12canonicalizeEjb(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = select i1 %1, ptr @_ZN6hermesL13UNICODE_FOLDSE, ptr @_ZN6hermesL13LEGACY_CANONSE ; 3 uses
  %i.b = select i1 %1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13UNICODE_FOLDSE, i64 1608), ptr getelementptr inbounds nuw (i8, ptr @_ZN6hermesL13LEGACY_CANONSE, i64 1400) ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit

_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi ptr [ %.1.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.01116.i.i = phi i64 [ %.112.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.01116.i.i, 1                  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.017.i.i, i64 %i.h ; 2 uses
  %.val.i.i.i = load i64, ptr %i.i, align 4
  %i.j = trunc i64 %.val.i.i.i to i32             ; 2 uses
  %i.k = and i32 %i.j, 16777215
  %i.l = lshr i32 %i.j, 24
  %i.m = add nuw nsw i32 %i.k, %i.l
  %.not.i.i = icmp ugt i32 %i.m, %0               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = xor i64 %i.h, -1
  %i.p = add nsw i64 %.01116.i.i, %i.o
  %.112.i.i = select i1 %.not.i.i, i64 %i.h, i64 %i.p ; 2 uses
  %.1.i.i = select i1 %.not.i.i, ptr %.017.i.i, ptr %i.n ; 2 uses
  %i.q = icmp sgt i64 %.112.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit, !llvm.loop !14

_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit: ; preds = %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.a, %bb.a ], [ %.1.i.i, %_ZSt9__advanceIPKN6hermes21UnicodeTransformRangeElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %.0.lcssa.i.i, %i.b
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit
  %i.r = load i64, ptr %.0.lcssa.i.i, align 4     ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = and i32 %i.s, 16777215                   ; 3 uses
  %.not13 = icmp ugt i32 %i.t, %0
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = lshr i32 %i.s, 24
  %i.v = add nuw nsw i32 %i.t, %i.u
  %i.w = icmp ult i32 %0, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = sub nsw i32 %0, %i.t
  %i.y = lshr i64 %i.r, 56
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = urem i32 %i.x, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = shl i64 %i.r, 8
  %i.ad = ashr i64 %i.ac, 40
  %i.ae = trunc nsw i64 %i.ad to i32
  %i.af = select i1 %i.ab, i32 %i.ae, i32 0
  %.0.i = add nsw i32 %i.af, %0
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %.0.i, %bb.d ], [ %0, %bb.c ], [ %0, %bb.b ], [ %0, %_ZSt11lower_boundIPKN6hermes21UnicodeTransformRangeEjET_S4_S4_RKT0_.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN6hermes21unicodePropertyRangesESt17basic_string_viewIcSt11char_traitsIcEES3_(i64 %0, ptr readonly captures(none) %1, i64 %2, ptr readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL39canonicalPropertyNameMap_BinaryPropertyE, i64 99, i64 %0, ptr %1) ; 2 uses
  %.not48 = icmp eq ptr %i.b, null
  br i1 %.not48, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL40canonicalPropertyNameMap_GeneralCategoryE, i64 80, i64 %0, ptr %1) ; 2 uses
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %.critedge4, label %bb.e

bb.d:                                             ; preds = %bb.a
  switch i64 %0, label %.critedge4 [
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
    i64 17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %i.d = load i128, ptr %1, align 1
  %i.e = icmp ne i128 %i.d, 161430768871213215975044779250010711367
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61: ; preds = %bb.d
  %bcmp.i62 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.1, i64 %0)
  %i.h = icmp eq i32 %bcmp.i62, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.i = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL40canonicalPropertyNameMap_GeneralCategoryE, i64 80, i64 %2, ptr %3) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.e

.critedge:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  switch i64 %0, label %.critedge4 [
    i64 6, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
    i64 2, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65: ; preds = %bb.d, %.critedge
  %bcmp.i66 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.2, i64 %0)
  %i.j = icmp eq i32 %bcmp.i66, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i61, %.critedge
  %bcmp.i70 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.3, i64 %0)
  %i.k = icmp eq i32 %bcmp.i70, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, label %.critedge4

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65
  %i.l = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL31canonicalPropertyNameMap_ScriptE, i64 322, i64 %2, ptr %3) ; 2 uses
  %.not46 = icmp eq ptr %i.l, null
  br i1 %.not46, label %.critedge2, label %bb.e

.critedge2:                                       ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68
  %cond = icmp eq i64 %0, 3
  br i1 %cond, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73: ; preds = %bb.d
  %bcmp.i74 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.4, i64 %0)
  %i.m = icmp eq i32 %bcmp.i74, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77: ; preds = %.critedge2, %.critedge, %bb.d
  %bcmp.i78 = tail call i32 @bcmp(ptr %1, ptr nonnull @.str.5, i64 %0)
  %i.n = icmp eq i32 %bcmp.i78, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76, label %.critedge4

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73
  %i.o = tail call fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr nonnull @_ZN6hermesL31canonicalPropertyNameMap_ScriptE, i64 322, i64 %2, ptr %3) ; 2 uses
  %.not47 = icmp eq ptr %i.o, null
  br i1 %.not47, label %.critedge4, label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68, %bb.b, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76
  %.sroa.9.0.ph = phi i64 [ 68, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ 38, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ 164, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ 53, %bb.b ], [ 38, %bb.c ] ; 2 uses
  %.sroa.0110.0.ph = phi ptr [ @_ZN6hermesL40unicodePropertyRangeMap_ScriptExtensionsE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ @_ZN6hermesL39unicodePropertyRangeMap_GeneralCategoryE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ @_ZN6hermesL30unicodePropertyRangeMap_ScriptE, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ @_ZN6hermesL38unicodePropertyRangeMap_BinaryPropertyE, %bb.b ], [ @_ZN6hermesL39unicodePropertyRangeMap_GeneralCategoryE, %bb.c ] ; 2 uses
  %.0.ph = phi ptr [ %i.o, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ %i.i, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ], [ %i.l, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit68 ], [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.ph, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !26   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i16 %i.q, 3012
  br i1 %i.s, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.r, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.0.ph, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !30
  %i.v = zext i16 %i.u to i64
  %i.w = sub nuw nsw i64 3012, %i.r
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.v) ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0110.0.ph, i64 %.sroa.9.0.ph
  %i.z = trunc nuw nsw i64 %.sroa.speculated.i to i32
  br label %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i ], [ %.sroa.0110.0.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 2 uses
  %.0115.i.i.i = phi i64 [ %.112.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i ], [ %.sroa.9.0.ph, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ] ; 2 uses
  %i.aa = lshr i64 %.0115.i.i.i, 1                ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.06.i.i.i, i64 %i.aa ; 3 uses
  %.val.i.i.i = load i16, ptr %i.ab, align 2, !tbaa !31 ; 2 uses
  %i.ac = zext i16 %.val.i.i.i to i64             ; 3 uses
  %i.ad = icmp ugt i16 %.val.i.i.i, 3012
  br i1 %i.ad, label %bb.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.ac, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %i.ae = getelementptr i8, ptr %i.ab, i64 2
  %.val13.i.i.i = load i16, ptr %i.ae, align 2, !tbaa !33
  %i.af = zext i16 %.val13.i.i.i to i64
  %i.ag = sub nuw nsw i64 3012, %i.ac
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.af) ; 2 uses
  %.sroa.speculated.i4.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i, i64 %.sroa.speculated.i.i.i.i.i.i.i) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i4.i.i.i.i.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.ac
  %i.aj = tail call i32 @memcmp(ptr noundef nonnull %i.ai, ptr noundef nonnull readonly %i.x, i64 noundef %.sroa.speculated.i4.i.i.i.i.i.i) #10 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i.i
  %i.al = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i.i.i.i to i32
  %i.am = sub nsw i32 %i.al, %i.z
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.am, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ %i.aj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %i.an = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ap = xor i64 %i.aa, -1
  %i.aq = add nsw i64 %.0115.i.i.i, %i.ap
  %.112.i.i.i = select i1 %i.an, i64 %i.aq, i64 %i.aa ; 2 uses
  %.1.i.i.i = select i1 %i.an, ptr %i.ao, ptr %.06.i.i.i ; 6 uses
  %i.ar = icmp sgt i64 %.112.i.i.i, 0
  br i1 %i.ar, label %_ZSt9__advanceIPKN6hermes13RangeMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i, !llvm.loop !34

_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i.i
  %i.as = icmp eq ptr %.1.i.i.i, %i.y
  br i1 %i.as, label %.critedge4, label %bb.h

bb.h:                                             ; preds = %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i
  %i.at = load i16, ptr %.1.i.i.i, align 2, !tbaa !31 ; 2 uses
  %i.au = zext i16 %i.at to i64                   ; 3 uses
  %i.av = icmp ugt i16 %i.at, 3012
  br i1 %i.av, label %bb.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.au, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i: ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !33
  %i.ay = zext i16 %i.ax to i64
  %i.az = sub nuw nsw i64 3012, %i.au
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 3 uses
  %.sroa.speculated.i4.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i, i64 %.sroa.speculated.i.i.i) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i4.i.i, 0
  br i1 %i.ba, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.au
  %bcmp.i81 = tail call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull readonly %i.x, i64 %.sroa.speculated.i4.i.i)
  %4 = icmp eq i32 %bcmp.i81, 0
  %i.bc = icmp eq i64 %.sroa.speculated.i.i.i, %.sroa.speculated.i
  %or.cond = select i1 %4, i1 %i.bc, i1 false
  br i1 %or.cond, label %_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.critedge4

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i, %.sroa.speculated.i
  br i1 %i.bd, label %_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.critedge4

_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !35
  %i.bg = zext i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZN6hermesL24UNICODE_RANGE_ARRAY_POOLE, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 6
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !36
  %i.bk = zext i16 %i.bj to i64
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.d, %.critedge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i, %bb.c, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77, %_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %.sroa.8.0 = phi i64 [ 0, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ 0, %bb.c ], [ %i.bk, %_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73 ], [ 0, %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ 0, %.critedge2 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 0, %.critedge ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65 ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69 ]
  %.sroa.0115.0 = phi ptr [ null, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit76 ], [ null, %bb.c ], [ %i.bh, %_ZN6hermesL12findMapEntryINS_13RangeMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i77 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i73 ], [ null, %_ZSt11lower_boundIPKN6hermes13RangeMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit.i ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ null, %.critedge2 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ null, %.critedge ], [ null, %bb.d ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i65 ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i69 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0115.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN6hermesL12findMapEntryINS_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS2_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr readonly captures(address, ret: address, provenance) %.0.val, i64 %.8.val, i64 %0, ptr readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.8.val
  %i.b = icmp sgt i64 %.8.val, 0
  br i1 %i.b, label %_ZSt9__advanceIPKN6hermes12NameMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit

_ZSt9__advanceIPKN6hermes12NameMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i
  %.06.i.i = phi ptr [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i ], [ %.0.val, %bb.a ] ; 2 uses
  %.0115.i.i = phi i64 [ %.112.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i ], [ %.8.val, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.0115.i.i, 1                   ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.06.i.i, i64 %i.c ; 3 uses
  %.val.i.i = load i16, ptr %i.d, align 2, !tbaa !37 ; 2 uses
  %i.e = zext i16 %.val.i.i to i64                ; 3 uses
  %i.f = icmp ugt i16 %.val.i.i, 3012
  br i1 %i.f, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i

bb.b:                                             ; preds = %_ZSt9__advanceIPKN6hermes12NameMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.e, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKN6hermes12NameMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 2
  %.val13.i.i = load i16, ptr %i.g, align 2, !tbaa !38
  %i.h = zext i16 %.val13.i.i to i64
  %i.i = sub nuw nsw i64 3012, %i.e
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.h) ; 2 uses
  %.sroa.speculated.i4.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %0, i64 %.sroa.speculated.i.i.i.i.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i4.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.e
  %i.l = tail call i32 @memcmp(ptr noundef nonnull %i.k, ptr noundef readonly %1, i64 noundef %.sroa.speculated.i4.i.i.i.i.i) #10 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i.i.i
  %i.n = sub i64 %.sroa.speculated.i.i.i.i.i.i, %0
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ], [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = xor i64 %i.c, -1
  %i.r = add nsw i64 %.0115.i.i, %i.q
  %.112.i.i = select i1 %i.o, i64 %i.r, i64 %i.c  ; 2 uses
  %.1.i.i = select i1 %i.o, ptr %i.p, ptr %.06.i.i ; 2 uses
  %i.s = icmp sgt i64 %.112.i.i, 0
  br i1 %i.s, label %_ZSt9__advanceIPKN6hermes12NameMapEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit, !llvm.loop !39

_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %.0.val, %bb.a ], [ %.1.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermesL12findMapEntryINS2_12NameMapEntryEEEPKT_RKN4llvh8ArrayRefIS5_EESt17basic_string_viewIcSt11char_traitsIcEEEUlRKS4_SG_E_EclIPSH_KSG_EEbS5_RT0_.exit.i.i ] ; 4 uses
  %i.t = icmp eq ptr %.0.lcssa.i.i, %i.a
  br i1 %i.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit
  %i.u = load i16, ptr %.0.lcssa.i.i, align 2, !tbaa !37 ; 2 uses
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = icmp ugt i16 %i.u, 3012
  br i1 %i.w, label %bb.d, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i64 noundef %i.v, i64 noundef 3012) #11
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !38
  %i.z = zext i16 %i.y to i64
  %i.aa = sub nuw nsw i64 3012, %i.v
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 2 uses
  %.sroa.speculated.i4.i = tail call i64 @llvm.umin.i64(i64 %0, i64 %.sroa.speculated.i.i) ; 2 uses
  %i.ab = icmp eq i64 %.sroa.speculated.i4.i, 0
  br i1 %i.ab, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.v
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.ac, ptr %1, i64 %.sroa.speculated.i4.i)
  %i.ad = icmp eq i32 %bcmp, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ae = icmp eq i64 %.sroa.speculated.i.i, %0
  %i.af = select i1 %i.ae, ptr %.0.lcssa.i.i, ptr null
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE7compareEmmS2_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit
  %.0 = phi ptr [ null, %_ZSt11lower_boundIPKN6hermes12NameMapEntryESt17basic_string_viewIcSt11char_traitsIcEEZNS0_L12findMapEntryIS1_EEPKT_RKN4llvh8ArrayRefIS9_EES7_EUlRS2_S7_E_ES9_S9_S9_RKT0_T1_.exit ], [ %i.af, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ], [ null, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes26addRangeArrayPoolToBracketEPNS_12CodePointSetEN4llvh8ArrayRefINS_19UnicodeRangePoolRefEEEb(ptr noundef %0, ptr readonly captures(address) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"struct.hermes::CodePointRange", align 8 ; 6 uses
  %5 = alloca %"struct.hermes::CodePointRange", align 8 ; 7 uses
  %6 = alloca %"struct.hermes::CodePointRange", align 8 ; 6 uses
  %.idx = shl nuw nsw i64 %2, 2
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not168 = icmp eq i64 %2, 0
  br i1 %.not168, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.b

._crit_edge172:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph171, %.loopexit
  %.0169 = phi ptr [ %1, %.lr.ph171 ], [ %i.kp, %.loopexit ] ; 3 uses
  %.sroa.024.0.copyload = load i16, ptr %.0169, align 2, !tbaa !40
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0169, i64 2
  %.sroa.425.0.copyload = load i16, ptr %.sroa.425.0..sroa_idx, align 2, !tbaa !40 ; 2 uses
  %i.f = zext i16 %.sroa.024.0.copyload to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermesL18UNICODE_RANGE_POOLE, i64 %i.f ; 3 uses
  %i.h = zext i16 %.sroa.425.0.copyload to i64
  %.idx174 = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx174 ; 2 uses
  %.not40164 = icmp eq i16 %.sroa.425.0.copyload, 0 ; 2 uses
  br i1 %3, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b
  br i1 %.not40164, label %._crit_edge.thread, label %.lr.ph167

._crit_edge:                                      ; preds = %_ZN6hermes12CodePointSet3addENS_14CodePointRangeE.exit
  %i.j = icmp ult i32 %i.ed, 1114111
  br i1 %i.j, label %._crit_edge.thread, label %.loopexit

.lr.ph167:                                        ; preds = %bb.c, %_ZN6hermes12CodePointSet3addENS_14CodePointRangeE.exit
  %.036166 = phi i32 [ %i.ed, %_ZN6hermes12CodePointSet3addENS_14CodePointRangeE.exit ], [ 0, %bb.c ] ; 15 uses
  %.037165 = phi ptr [ %i.ee, %_ZN6hermes12CodePointSet3addENS_14CodePointRangeE.exit ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.012.0.copyload = load i32, ptr %.037165, align 4, !tbaa !3 ; 10 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.037165, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %i.k = sub i32 %.sroa.012.0.copyload, %.036166
  %.sroa.211.0.insert.ext = zext i32 %i.k to i64
  %.sroa.211.0.insert.shift = shl nuw i64 %.sroa.211.0.insert.ext, 32
  %.sroa.010.0.insert.ext = zext i32 %.036166 to i64
  %.sroa.010.0.insert.insert = or disjoint i64 %.sroa.211.0.insert.shift, %.sroa.010.0.insert.ext ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.010.0.insert.insert, ptr %6, align 8
  %i.l = icmp eq i32 %.sroa.012.0.copyload, %.036166
  br i1 %i.l, label %_ZN6hermes12CodePointSet3addENS_14CodePointRangeE.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph167
  %i.m = load ptr, ptr %0, align 8, !tbaa !9      ; 7 uses
  %i.n = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = ptrtoint ptr %i.m to i64
  %.not148 = icmp eq i32 %i.n, 0
  br i1 %.not148, label %_ZSt13__equal_rangeIPN6hermes14CodePointRangeES1_N9__gnu_cxx5__ops14_Iter_comp_valIZNS0_12CodePointSet3addES1_EUlS1_S1_E_EENS4_14_Val_comp_iterIS7_EEESt4pairIT_SC_ESC_SC_RKT0_T1_T2_.exit.thread, label %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.d, %bb.h
  %.01368.i = phi i64 [ %.2.i, %bb.h ], [ %i.o, %bb.d ] ; 3 uses
  %.067.i = phi ptr [ %.1.i, %bb.h ], [ %i.m, %bb.d ] ; 4 uses
  %i.r = lshr i64 %.01368.i, 1                    ; 5 uses
  %.idx248 = shl nuw nsw i64 %i.r, 3              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.067.i, i64 %.idx248 ; 3 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.s, align 4 ; 2 uses
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %.sroa.01.0.copyload.i.i to i32 ; 6 uses
  %.sroa.47.0.extract.shift.i.i.i = lshr i64 %.sroa.01.0.copyload.i.i, 32
  %.sroa.47.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.47.0.extract.shift.i.i.i to i32
  %i.t = icmp ugt i32 %.sroa.012.0.copyload, %.sroa.04.0.extract.trunc.i.i.i ; 2 uses
  %i.u = add i32 %.sroa.47.0.extract.trunc.i.i.i, %.sroa.04.0.extract.trunc.i.i.i ; 3 uses
  %i.v = icmp ugt i32 %i.u, %.036166              ; 2 uses
  %i.w = select i1 %i.t, i1 %i.v, i1 false
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN6hermes12CodePointSet3addENS2_14CodePointRangeEEUlS4_S4_E_EclIPS4_KS4_EEbT_RT0_.exit.i: ; preds = %_ZSt9__advanceIPN6hermes14CodePointRangeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.x = icmp ne i32 %.sroa.012.0.copyload, %.sroa.04.0.extract.trunc.i.i.i
  %i.y = icmp ne i32 %i.u, %.036166
  %.not10.i.i.i = select i1 %i.x, i1 %i.y, i1 false
  %i.z = icmp ugt i32 %.036166, %.sroa.04.0.extract.trunc.i.i.i
end_hunk_0
