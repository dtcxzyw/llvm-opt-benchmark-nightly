Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uloc?download=true
inline.NumInlined: 709
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode:bb.a
          to label %"_ZZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i" unwind label %bb.e

"_ZZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i": ; preds = %bb.c
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !74
  br label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !74
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #17
  resume { ptr, i32 } %.pn.i

"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit": ; preds = %bb.a, %"_ZZ22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::CharString") align 8 %0, i64 %1, ptr %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.a = load i32, ptr %3, align 4, !tbaa !11, !noalias !77
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15, !alias.scope !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.d, align 8, !tbaa !16, !alias.scope !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.e, align 4, !tbaa !17, !alias.scope !77
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !77
  store i8 0, ptr %i.c, align 1, !tbaa !20, !alias.scope !77
  br i1 %i.b, label %bb.b, label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !77
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkES5_S5_S5_PPKcR10UErrorCode(i64 %1, ptr %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %"_ZZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i" unwind label %bb.e

"_ZZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i": ; preds = %bb.c
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !77
  br label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !77
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #17
  resume { ptr, i32 } %.pn.i

"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit": ; preds = %bb.a, %"_ZZ20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::CharString") align 8 %0, i64 %1, ptr %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = load i32, ptr %3, align 4, !tbaa !11, !noalias !80
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15, !alias.scope !80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.d, align 8, !tbaa !16, !alias.scope !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.e, align 4, !tbaa !17, !alias.scope !80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !80
  store i8 0, ptr %i.c, align 1, !tbaa !20, !alias.scope !80
  br i1 %i.b, label %bb.b, label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !80
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkES5_S5_S5_PPKcR10UErrorCode(i64 %1, ptr %2, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %"_ZZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i" unwind label %bb.e

"_ZZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i": ; preds = %bb.c
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !80
  br label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !80
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #17
  resume { ptr, i32 } %.pn.i

"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit": ; preds = %bb.a, %"_ZZ20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::CharString") align 8 %0, i64 %1, ptr %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::CharStringByteSink", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.a = load i32, ptr %3, align 4, !tbaa !11, !noalias !83
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !15, !alias.scope !83
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.d, align 8, !tbaa !16, !alias.scope !83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.e, align 4, !tbaa !17, !alias.scope !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !19, !alias.scope !83
  store i8 0, ptr %i.c, align 1, !tbaa !20, !alias.scope !83
  br i1 %i.b, label %bb.b, label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !83
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkES5_S5_S5_PPKcR10UErrorCode(i64 %1, ptr %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %"_ZZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i" unwind label %bb.e

"_ZZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i": ; preds = %bb.c
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !83
  br label %"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit"

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !83
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) #17
  resume { ptr, i32 } %.pn.i

"_ZN6icu_7812ByteSinkUtil23viaByteSinkToCharStringIZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeE3$_0vEENS_10CharStringEOT_S7_.exit": ; preds = %bb.a, %"_ZZ21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCodeENK3$_0clERN6icu_788ByteSinkES4_.exit.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_7810CharStringES5_S5_S5_PPKcR10UErrorCode(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::optional.6", align 8   ; 8 uses
  %9 = alloca %"class.std::optional.6", align 8   ; 9 uses
  %10 = alloca %"class.std::optional.6", align 8  ; 9 uses
  %11 = alloca %"class.std::optional.6", align 8  ; 9 uses
  %i.a = load i32, ptr %7, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store i8 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store i8 0, ptr %i.d, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store i8 0, ptr %i.e, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store i8 0, ptr %i.f, align 8, !tbaa !85
  %.not6 = icmp eq ptr %2, null
  br i1 %.not6, label %bb.h, label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i

_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i: ; preds = %bb.b
  store i8 0, ptr %i.c, align 8, !tbaa !85
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2)
          to label %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit unwind label %bb.c

_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit: ; preds = %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i
  store i8 1, ptr %i.c, align 8, !tbaa !85
  br label %bb.h

bb.c:                                             ; preds = %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i17, %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i15, %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i13, %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i, %bb.q
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load i8, ptr %i.f, align 8, !tbaa !85, !range !31, !noundef !32
  %i.i = trunc nuw i8 %i.h to i1
  store i8 0, ptr %i.f, align 8, !tbaa !85
  br i1 %i.i, label %bb.d, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %11) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.j = load i8, ptr %i.e, align 8, !tbaa !85, !range !31, !noundef !32
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.e, align 8, !tbaa !85
  br i1 %i.k, label %bb.e, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit10

bb.e:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %10) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit10

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit10: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.l = load i8, ptr %i.d, align 8, !tbaa !85, !range !31, !noundef !32
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.d, align 8, !tbaa !85
  br i1 %i.m, label %bb.f, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit11

bb.f:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit10
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %9) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit11

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit11: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit10, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.n = load i8, ptr %i.c, align 8, !tbaa !85, !range !31, !noundef !32
  %i.o = trunc nuw i8 %i.n to i1
  store i8 0, ptr %i.c, align 8, !tbaa !85
  br i1 %i.o, label %bb.g, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit12

bb.g:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit11
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %8) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit12

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit12: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit11, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %i.g

bb.h:                                             ; preds = %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit, %bb.b
  %.not7 = icmp eq ptr %3, null
  br i1 %.not7, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i8, ptr %i.d, align 8, !tbaa !85, !range !31, !noundef !32
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.d, align 8, !tbaa !85
  br i1 %i.q, label %bb.j, label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i13

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %9) #17
  br label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i13

_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i13: ; preds = %bb.j, %bb.i
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %3)
          to label %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit14 unwind label %bb.c

_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit14: ; preds = %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i13
  store i8 1, ptr %i.d, align 8, !tbaa !85
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit14, %bb.h
  %.not8 = icmp eq ptr %4, null
  br i1 %.not8, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = load i8, ptr %i.e, align 8, !tbaa !85, !range !31, !noundef !32
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.e, align 8, !tbaa !85
  br i1 %i.s, label %bb.m, label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i15

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %10) #17
  br label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i15

_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i15: ; preds = %bb.m, %bb.l
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %4)
          to label %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit16 unwind label %bb.c

_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit16: ; preds = %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i15
  store i8 1, ptr %i.e, align 8, !tbaa !85
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit16, %bb.k
  %.not9 = icmp eq ptr %5, null
  %.pre = load i8, ptr %i.f, align 8, !tbaa !85, !range !31 ; 2 uses
  br i1 %.not9, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.t = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.f, align 8, !tbaa !85
  br i1 %i.t, label %bb.p, label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i17

bb.p:                                             ; preds = %bb.o
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %11) #17
  br label %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i17

_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i17: ; preds = %bb.p, %bb.o
  invoke void @_ZN6icu_7818CharStringByteSinkC1EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %5)
          to label %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit18 unwind label %bb.c

_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit18: ; preds = %_ZNSt19_Optional_base_implIN6icu_7818CharStringByteSinkESt14_Optional_baseIS1_Lb0ELb0EEE8_M_resetEv.exit.i17
  store i8 1, ptr %i.f, align 8, !tbaa !85
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit18, %bb.n
  %i.u = phi i8 [ 1, %_ZNSt8optionalIN6icu_7818CharStringByteSinkEE7emplaceIJRPNS0_10CharStringEEEENSt9enable_ifIX18is_constructible_vIS1_DpT_EERS1_E4typeEDpOS8_.exit18 ], [ %.pre, %bb.n ]
  %i.v = load i8, ptr %i.c, align 8, !tbaa !85, !range !31, !noundef !32
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select = select i1 %i.w, ptr %8, ptr null
  %i.x = load i8, ptr %i.d, align 8, !tbaa !85, !range !31, !noundef !32
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = select i1 %i.y, ptr %9, ptr null
  %i.aa = load i8, ptr %i.e, align 8, !tbaa !85, !range !31, !noundef !32
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = select i1 %i.ab, ptr %10, ptr null
  %i.ad = trunc nuw i8 %i.u to i1
  %i.ae = select i1 %i.ad, ptr %11, ptr null
  invoke void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkES5_S5_S5_PPKcR10UErrorCode(i64 %0, ptr %1, ptr noundef %spec.select, ptr noundef %i.z, ptr noundef %i.ac, ptr noundef %i.ae, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %bb.q
  %i.af = load i8, ptr %i.f, align 8, !tbaa !85, !range !31, !noundef !32
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.f, align 8, !tbaa !85
  br i1 %i.ag, label %bb.s, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit19

bb.s:                                             ; preds = %bb.r
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %11) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit19

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit19: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ah = load i8, ptr %i.e, align 8, !tbaa !85, !range !31, !noundef !32
  %i.ai = trunc nuw i8 %i.ah to i1
  store i8 0, ptr %i.e, align 8, !tbaa !85
  br i1 %i.ai, label %bb.t, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit20

bb.t:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit19
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %10) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit20

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit20: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit19, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  %i.aj = load i8, ptr %i.d, align 8, !tbaa !85, !range !31, !noundef !32
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.d, align 8, !tbaa !85
  br i1 %i.ak, label %bb.u, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit21

bb.u:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit20
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %9) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit21

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit21: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit20, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.al = load i8, ptr %i.c, align 8, !tbaa !85, !range !31, !noundef !32
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.c, align 8, !tbaa !85
  br i1 %i.am, label %bb.v, label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit22

bb.v:                                             ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit21
  call void @_ZN6icu_7818CharStringByteSinkD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %8) #17
  br label %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit22

_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit22: ; preds = %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit21, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.a, %_ZNSt14_Optional_baseIN6icu_7818CharStringByteSinkELb0ELb0EED2Ev.exit22
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z21ulocimp_getSubtags_78St17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkES5_S5_S5_PPKcR10UErrorCode(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %7) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [10 x i8], align 1                ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 4 uses
  %i.e = load i32, ptr %7, align 4, !tbaa !11
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %.not103 = icmp eq ptr %6, null                 ; 8 uses
  br i1 %.not103, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %1, ptr %6, align 8, !tbaa !29
  switch i64 %0, label %bb.g [
    i64 0, label %.critedge
    i64 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.b
  %i.g = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.h = insertelement <4 x ptr> %i.g, ptr %3, i64 1
  %i.i = insertelement <4 x ptr> %i.h, ptr %4, i64 2
  %i.j = insertelement <4 x ptr> %i.i, ptr %5, i64 3
  %i.k = icmp ne <4 x ptr> %i.j, splat (ptr null)
  %i.l = bitcast <4 x i1> %i.k to i4
  %i.m = icmp eq i4 %i.l, 0
  %i.n = icmp eq i64 %0, 0
  %or.cond212 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond212, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %0, 4
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.p = tail call i32 @uprv_strnicmp_78(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 4)
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.critedge.thread.i, label %.thread61.i

bb.g:                                             ; preds = %bb.c, %bb.e
  %i.r = icmp ugt i64 %0, 2
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @uprv_strnicmp_78(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef 3)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %.thread63.i

.thread61.i:                                      ; preds = %bb.f
  %i.u = tail call i32 @uprv_strnicmp_78(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef 3)
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread62.i, label %.thread63.i

bb.i:                                             ; preds = %bb.h
  %i.w = icmp eq i64 %0, 3
  br i1 %i.w, label %bb.j, label %.thread62.i

.thread62.i:                                      ; preds = %bb.i, %.thread61.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  switch i8 %i.y, label %.thread63.i [
    i8 45, label %bb.j
    i8 95, label %bb.j
    i8 64, label %bb.j
  ]

bb.j:                                             ; preds = %.thread62.i, %.thread62.i, %.thread62.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.aa = add i64 %0, -3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.11.0.i = phi ptr [ %1, %bb.g ], [ %i.z, %bb.j ] ; 2 uses
  %.sroa.043.0.i = phi i64 [ %0, %bb.g ], [ %i.aa, %bb.j ] ; 3 uses
  %.040.i = phi i64 [ 0, %bb.g ], [ 3, %bb.j ]    ; 2 uses
  %i.ab = icmp ugt i64 %.sroa.043.0.i, 1
  br i1 %i.ab, label %.thread63.i, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

.thread63.i:                                      ; preds = %bb.k, %.thread62.i, %.thread61.i, %bb.h
  %.04072.i = phi i64 [ %.040.i, %bb.k ], [ 0, %.thread62.i ], [ 0, %bb.h ], [ 0, %.thread61.i ] ; 2 uses
  %.sroa.043.070.i = phi i64 [ %.sroa.043.0.i, %bb.k ], [ %0, %.thread62.i ], [ %0, %bb.h ], [ 4, %.thread61.i ] ; 2 uses
  %.sroa.11.067.i = phi ptr [ %.sroa.11.0.i, %bb.k ], [ %1, %.thread62.i ], [ %1, %bb.h ], [ %1, %.thread61.i ] ; 4 uses
  %i.ac = load i8, ptr %.sroa.11.067.i, align 1, !tbaa !20
  switch i8 %i.ac, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i [
    i8 120, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
    i8 105, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
    i8 88, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
    i8 73, label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  ]

_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.thread63.i, %.thread63.i, %.thread63.i, %.thread63.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.11.067.i, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !20  ; 2 uses
  %i.af = icmp eq i8 %i.ae, 95
  %i.ag = icmp eq i8 %i.ae, 45
  %i.ah = or i1 %i.af, %i.ag
  %cond.fr.i = freeze i1 %i.ah
  %spec.select.i = select i1 %cond.fr.i, i64 2, i64 0
  br label %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i

_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %.thread63.i, %bb.k
  %.sroa.11.06884.i = phi ptr [ %.sroa.11.0.i, %bb.k ], [ %.sroa.11.067.i, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ %.sroa.11.067.i, %.thread63.i ] ; 3 uses
  %.sroa.043.06983.i = phi i64 [ %.sroa.043.0.i, %bb.k ], [ %.sroa.043.070.i, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ %.sroa.043.070.i, %.thread63.i ] ; 3 uses
  %.0407182.i = phi i64 [ %.040.i, %bb.k ], [ %.04072.i, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ %.04072.i, %.thread63.i ] ; 2 uses
  %i.ai = phi i1 [ false, %bb.k ], [ true, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ true, %.thread63.i ]
  %i.aj = phi i64 [ 0, %bb.k ], [ %spec.select.i, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ], [ 0, %.thread63.i ] ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.sroa.043.06983.i
  br i1 %i.ak, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i, %bb.m
  %.04198.i = phi i64 [ %i.ao, %bb.m ], [ %i.aj, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ] ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.11.06884.i, i64 %.04198.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !20
  switch i8 %i.am, label %bb.l [
    i8 64, label %.critedge.i
    i8 46, label %.critedge.i
    i8 95, label %.critedge.i
    i8 45, label %.critedge.i
  ]

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = icmp eq i64 %.04198.i, 11
  br i1 %i.an, label %_ZN12_GLOBAL__N_112_getLanguageESt17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkER10UErrorCode.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = add nuw nsw i64 %.04198.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %.sroa.043.06983.i
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !86

.critedge.i:                                      ; preds = %bb.m, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i
  %.041.lcssa.i = phi i64 [ %i.aj, %_ZN12_GLOBAL__N_111_isIDPrefixESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i ], [ %.04198.i, %.lr.ph.i ], [ %.sroa.043.06983.i, %bb.m ], [ %.04198.i, %.lr.ph.i ], [ %.04198.i, %.lr.ph.i ], [ %.04198.i, %.lr.ph.i ] ; 6 uses
  %i.ap = icmp eq ptr %2, null
  %i.aq = icmp eq i64 %.041.lcssa.i, 0
  %or.cond.i = or i1 %i.ap, %i.aq
  br i1 %or.cond.i, label %.critedge.thread.i, label %bb.n

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.f
  %.041.lcssa129.i = phi i64 [ %.041.lcssa.i, %.critedge.i ], [ 0, %bb.f ]
  %.0407182123128.i = phi i64 [ %.0407182.i, %.critedge.i ], [ 4, %bb.f ]
  %i.ar = add i64 %.0407182123128.i, %.041.lcssa129.i
  br label %_ZN12_GLOBAL__N_112_getLanguageESt17basic_string_viewIcSt11char_traitsIcEEPN6icu_788ByteSinkER10UErrorCode.exit

bb.n:                                             ; preds = %.critedge.i
  %i.as = trunc i64 %.041.lcssa.i to i32          ; 2 uses
  %i.at = tail call i32 @uprv_max_78(i32 noundef %i.as, i32 noundef 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !28
  %i.au = load ptr, ptr %2, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.at, i32 noundef %i.at, ptr noundef nonnull %i.a, i32 noundef 11, ptr noundef nonnull %i.b), !inline_history !87 ; 6 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  br i1 %i.ai, label %bb.q, label %bb.s

bb.p:                                             ; preds = %bb.p, %bb.n
  %.038107.i = phi i64 [ 0, %bb.n ], [ %i.bc, %bb.p ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.11.06884.i, i64 %.038107.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.ba = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.038107.i
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !20
  %i.bc = add nuw i64 %.038107.i, 1               ; 2 uses
  %exitcond111.not.i = icmp eq i64 %i.bc, %.041.lcssa.i
  br i1 %exitcond111.not.i, label %bb.o, label %bb.p, !llvm.loop !88

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.11.06884.i, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !20
  switch i8 %i.be, label %bb.s [
    i8 95, label %bb.r
    i8 45, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store i8 45, ptr %i.bf, align 1, !tbaa !20
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.bg = icmp eq i64 %.041.lcssa.i, 3
  br i1 %i.bg, label %bb.t, label %.thread92.i

end_hunk_0
