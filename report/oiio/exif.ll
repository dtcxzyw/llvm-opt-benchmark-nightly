inline.NumInlined: 1716
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEEZN11OpenImageIO4v3_111encode_exifERKNS9_9ImageSpecERS4_IcSaIcEENS9_6endianEE3$_0EvT_SI_T0_":bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i26.i.i)
  %.sroa.5.0..sroa_idx.i.i39.i.i = getelementptr inbounds nuw i8, ptr %.pn22.i34.i.i, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i26.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx.i.i39.i.i, i64 10, i1 false), !tbaa.struct !167
  %.val3.i12.i.i40.i.i = load i16, ptr %.pn22.i34.i.i, align 4, !tbaa !103 ; 2 uses
  %i.am = tail call i16 @llvm.bswap.i16(i16 %.val3.i12.i.i40.i.i)
  %.0.i.i13.i.i41.i.i = select i1 %.not.i.i.i32.i.i, i16 %.val3.i12.i.i40.i.i, i16 %i.am
  %i.an = icmp ult i16 %.011.i.i.i37.i.i, %.0.i.i13.i.i41.i.i
  br i1 %i.an, label %.lr.ph.i.i47.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i"

.lr.ph.i.i47.i.i:                                 ; preds = %bb.n
  br i1 %.not.i.i.i32.i.i, label %.lr.ph.split.us.i.i53.i.i, label %.lr.ph.split.i.i48.i.i

.lr.ph.split.us.i.i53.i.i:                        ; preds = %.lr.ph.i.i47.i.i, %.lr.ph.split.us.i.i53.i.i
  %.sroa.0.015.us.i.i54.i.i = phi ptr [ %.sroa.0.0.us.i.i56.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.pn22.i34.i.i, %.lr.ph.i.i47.i.i ] ; 4 uses
  %.sroa.08.014.us.i.i55.i.i = phi ptr [ %.sroa.0.015.us.i.i54.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.sroa.0.023.i33.i.i, %.lr.ph.i.i47.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.us.i.i55.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.us.i.i54.i.i, i64 12, i1 false), !tbaa.struct !128
  %.sroa.0.0.us.i.i56.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.us.i.i54.i.i, i64 -12 ; 2 uses
  %.val3.i.us.i.i57.i.i = load i16, ptr %.sroa.0.0.us.i.i56.i.i, align 4, !tbaa !103
  %i.ao = icmp ult i16 %.val1.i.i35.i.i, %.val3.i.us.i.i57.i.i
  br i1 %i.ao, label %.lr.ph.split.us.i.i53.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", !llvm.loop !168

.lr.ph.split.i.i48.i.i:                           ; preds = %.lr.ph.i.i47.i.i, %.lr.ph.split.i.i48.i.i
  %.sroa.0.015.i.i49.i.i = phi ptr [ %.sroa.0.0.i.i51.i.i, %.lr.ph.split.i.i48.i.i ], [ %.pn22.i34.i.i, %.lr.ph.i.i47.i.i ] ; 4 uses
  %.sroa.08.014.i.i50.i.i = phi ptr [ %.sroa.0.015.i.i49.i.i, %.lr.ph.split.i.i48.i.i ], [ %.sroa.0.023.i33.i.i, %.lr.ph.i.i47.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.08.014.i.i50.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.015.i.i49.i.i, i64 12, i1 false), !tbaa.struct !128
  %.sroa.0.0.i.i51.i.i = getelementptr inbounds i8, ptr %.sroa.0.015.i.i49.i.i, i64 -12 ; 2 uses
  %.val3.i.i.i52.i.i = load i16, ptr %.sroa.0.0.i.i51.i.i, align 4, !tbaa !103
  %i.ap = tail call i16 @llvm.bswap.i16(i16 %.val3.i.i.i52.i.i)
  %i.aq = icmp ult i16 %i.ac, %i.ap
  br i1 %i.aq, label %.lr.ph.split.i.i48.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", !llvm.loop !168

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i": ; preds = %.lr.ph.split.i.i48.i.i, %.lr.ph.split.us.i.i53.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i43.i.i = phi ptr [ %.sroa.0.023.i33.i.i, %bb.n ], [ %.sroa.0.015.us.i.i54.i.i, %.lr.ph.split.us.i.i53.i.i ], [ %.sroa.0.015.i.i49.i.i, %.lr.ph.split.i.i48.i.i ] ; 2 uses
  store i16 %.val1.i.i35.i.i, ptr %.sroa.08.0.lcssa.i.i43.i.i, align 4, !tbaa !99
  %.sroa.5.0..sroa_idx6.i.i44.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i43.i.i, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.0..sroa_idx6.i.i44.i.i, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.5.i.i26.i.i, i64 10, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i26.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i42.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i58.i.i
  %.sroa.0.0.i45.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023.i33.i.i, i64 12 ; 2 uses
  %.not.i46.i.i = icmp eq ptr %.sroa.0.0.i45.i.i, %1
  br i1 %.not.i46.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit", label %bb.i, !llvm.loop !169

"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.i17.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_T0_.exit.us.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN11OpenImageIO4v3_111encode_exifERKNSB_9ImageSpecERS4_IcSaIcEENSB_6endianEE3$_0EEEvT_SL_T0_.exit.i.i", %.preheader.i28.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr nofree noundef readonly captures(none) dead_on_return %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.a = load atomic i8, ptr @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.128, ptr %4, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_13pvt6TagMapC1ENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_4spanIKNS0_7TagInfoELm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %4, ptr nonnull @_ZN11OpenImageIO4v3_1L14exif_tag_tableE, i64 114)
          to label %bb.d unwind label %bb.e, !inline_history !83

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN11OpenImageIO4v3_13pvt6TagMapD1Ev, ptr nonnull @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr nonnull @__dso_handle) #32, !inline_history !83 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  br label %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T) #32, !inline_history !83
  resume { ptr, i32 } %i.f

_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.g = load ptr, ptr %0, align 8, !tbaa !7
  store ptr %i.g, ptr %5, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !12
  store i64 %i.j, ptr %i.h, align 8, !tbaa !12
  %i.k = call noundef ptr @_ZNK11OpenImageIO4v3_13pvt6TagMap4findENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN11OpenImageIO4v3_13pvt15exif_tagmap_refEvE1T, ptr noundef nonnull dead_on_return %5) ; 4 uses
  %.not = icmp ne ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit
  %i.l = load i32, ptr %i.k, align 8, !tbaa !82
  store i32 %i.l, ptr %1, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  store i32 %i.n, ptr %2, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !81
  store i32 %i.p, ptr %3, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt15exif_tagmap_refEv.exit, %bb.f
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.175() #14 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !34
  %i.g = icmp eq i16 %i.f, -1
  br i1 %i.g, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !53
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.e, align 4, !tbaa !34
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !173

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.o = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !174
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl9robin_mapIiPKN11OpenImageIO4v3_17TagInfoESt4hashIiESt8equal_toIiESaISt4pairIiS5_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !175  ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !176  ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %1 = sub i64 %i.e, %i.f
  %2 = add i64 %1, -24                            ; 2 uses
  %i.g = udiv i64 %2, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693944      ; 3 uses
  %i.i = mul i64 %n.vec, 24
  %i.j = getelementptr i8, ptr %i.b, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue23, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue23 ] ; 2 uses
  %i.k = mul i64 %index, 24                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep3 = getelementptr i8, ptr %i.l, i64 24 ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep4 = getelementptr i8, ptr %i.m, i64 48 ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep5 = getelementptr i8, ptr %i.n, i64 72 ; 2 uses
  %i.o = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep6 = getelementptr i8, ptr %i.o, i64 96 ; 2 uses
  %i.p = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep7 = getelementptr i8, ptr %i.p, i64 120 ; 2 uses
  %i.q = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep8 = getelementptr i8, ptr %i.q, i64 144 ; 2 uses
  %i.r = getelementptr i8, ptr %i.b, i64 %i.k
  %next.gep9 = getelementptr i8, ptr %i.r, i64 168 ; 2 uses
  %i.s = load i16, ptr %next.gep, align 8, !tbaa !16
  %i.t = load i16, ptr %next.gep3, align 8, !tbaa !16
  %i.u = load i16, ptr %next.gep4, align 8, !tbaa !16
  %i.v = load i16, ptr %next.gep5, align 8, !tbaa !16
  %i.w = load i16, ptr %next.gep6, align 8, !tbaa !16
  %i.x = load i16, ptr %next.gep7, align 8, !tbaa !16
  %i.y = load i16, ptr %next.gep8, align 8, !tbaa !16
  %i.z = load i16, ptr %next.gep9, align 8, !tbaa !16
  %i.aa = insertelement <8 x i16> poison, i16 %i.s, i64 0
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.t, i64 1
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.u, i64 2
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 3
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 4
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 5
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 6
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.z, i64 7
  %i.ai = icmp ne <8 x i16> %i.ah, splat (i16 -1) ; 8 uses
  %i.aj = extractelement <8 x i1> %i.ai, i64 0
  br i1 %i.aj, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ak = extractelement <8 x i1> %i.ai, i64 1
  br i1 %i.ak, label %pred.store.if10, label %pred.store.continue11

pred.store.if10:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep3, align 8, !tbaa !16
  br label %pred.store.continue11

pred.store.continue11:                            ; preds = %pred.store.if10, %pred.store.continue
  %i.al = extractelement <8 x i1> %i.ai, i64 2
  br i1 %i.al, label %pred.store.if12, label %pred.store.continue13

pred.store.if12:                                  ; preds = %pred.store.continue11
  store i16 -1, ptr %next.gep4, align 8, !tbaa !16
  br label %pred.store.continue13

pred.store.continue13:                            ; preds = %pred.store.if12, %pred.store.continue11
  %i.am = extractelement <8 x i1> %i.ai, i64 3
  br i1 %i.am, label %pred.store.if14, label %pred.store.continue15

pred.store.if14:                                  ; preds = %pred.store.continue13
  store i16 -1, ptr %next.gep5, align 8, !tbaa !16
  br label %pred.store.continue15

pred.store.continue15:                            ; preds = %pred.store.if14, %pred.store.continue13
  %i.an = extractelement <8 x i1> %i.ai, i64 4
  br i1 %i.an, label %pred.store.if16, label %pred.store.continue17

pred.store.if16:                                  ; preds = %pred.store.continue15
  store i16 -1, ptr %next.gep6, align 8, !tbaa !16
  br label %pred.store.continue17

pred.store.continue17:                            ; preds = %pred.store.if16, %pred.store.continue15
  %i.ao = extractelement <8 x i1> %i.ai, i64 5
  br i1 %i.ao, label %pred.store.if18, label %pred.store.continue19

pred.store.if18:                                  ; preds = %pred.store.continue17
  store i16 -1, ptr %next.gep7, align 8, !tbaa !16
  br label %pred.store.continue19

pred.store.continue19:                            ; preds = %pred.store.if18, %pred.store.continue17
  %i.ap = extractelement <8 x i1> %i.ai, i64 6
  br i1 %i.ap, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue19
  store i16 -1, ptr %next.gep8, align 8, !tbaa !16
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue19
  %i.aq = extractelement <8 x i1> %i.ai, i64 7
  br i1 %i.aq, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %next.gep9, align 8, !tbaa !16
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %pred.store.continue23
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.b, %.lr.ph.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.au, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 3 uses
  %i.as = load i16, ptr %.05.i.i.i.i, align 8, !tbaa !16
  %i.at = icmp eq i16 %i.as, -1
  br i1 %i.at, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %.05.i.i.i.i, align 8, !tbaa !16
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !178

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, %middle.block, %bb.a
  %.not.i.i1.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !179
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.b to i64
  %i.az = sub i64 %i.ax, %i.ay
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.az) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_EC2EmRKSB_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, float noundef %5, float noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.177)
          to label %bb.c unwind label %common.resume

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #33
  unreachable

common.resume:                                    ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #32
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %bb.f, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i

_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i: ; preds = %bb.d
  %i.d = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.e = icmp samesign ult i64 %i.d, 2
  br i1 %i.e, label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3tsl2rh26power_of_two_growth_policyILm2EE15is_power_of_twoEm.exit.i.i
  %i.f = add i64 %1, -1                           ; 2 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = add nuw i64 %i.r, 1
  br label %_ZN3tsl2rh26power_of_two_growth_policyILm2EEC2ERm.exit
end_hunk_0
begin_hunk_1_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11insert_implIiJRKSt21piecewise_construct_tSt5tupleIJRKiEESQ_IJEEEEES2_INSL_14robin_iteratorILb0EEEbERKT_DpOT0_:bb.a
  %.sroa.86.2.i = phi ptr [ %i.ao, %bb.d ], [ %.sroa.86.1.i, %bb.i ]
  %storemerge.lcssa.i.i = phi i16 [ %storemerge19.i.i, %bb.d ], [ %storemerge.i.i, %bb.i ]
  %.lcssa.i.i = phi ptr [ %i.aq, %bb.d ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  store i32 %.sroa.04.2.i, ptr %i.bf, align 8
  %.sroa.86.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 16
  store ptr %.sroa.86.2.i, ptr %.sroa.86.0..sroa_idx.i, align 8
  store i16 %storemerge.lcssa.i.i, ptr %.lcssa.i.i, align 8, !tbaa !16
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESQ_IJEEEEEvmsjDpOT_.exit, %bb.c
  %i.bg = phi ptr [ %.pre, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKiEESQ_IJEEEEEvmsjDpOT_.exit ], [ %i.z, %bb.c ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !183
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !183
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.1.lcssa
  br label %.loopexit49

.loopexit49:                                      ; preds = %.lr.ph, %bb.j
  %.pn47 = phi ptr [ %i.bk, %bb.j ], [ %i.i, %.lr.ph ]
  %.pn45 = phi i8 [ 1, %bb.j ], [ 0, %.lr.ph ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn45, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !30, !range !137, !noundef !138
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !183  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !33
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.j = add i64 %i.i, -4611686018427387904
  %i.k = icmp ult i64 %i.j, -4611686018427387905
  br i1 %i.k, label %bb.d, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.177)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #33
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #32
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8, !tbaa !30
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31, !range !137, !noundef !138
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !185 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !74   ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !186 ; 2 uses
  %i.ag = fdiv float %i.ad, %i.af
  %i.ah = tail call noundef float @llvm.ceil.f32(float %i.ag)
  %i.ai = fptoui float %i.ah to i64
  %i.aj = fdiv float %i.y, %i.af
  %i.ak = tail call noundef float @llvm.ceil.f32(float %i.aj)
  %i.al = fptoui float %i.ak to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 %i.al)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 15 uses
  %3 = alloca %"class.std::allocator.50", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !185
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !186
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_EC2EmRKSB_RKSD_RKSE_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !184  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184  ; 3 uses
  %.not18 = icmp eq ptr %i.g, %i.i
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !175
  %.pre20 = load ptr, ptr %i.h, align 8, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.k = phi ptr [ %.pre20, %._crit_edge.loopexit ], [ %i.i, %bb.a ] ; 4 uses
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ] ; 16 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !50
  %i.m = load i64, ptr %0, align 8, !tbaa !50
  store i64 %i.m, ptr %2, align 8, !tbaa !50
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.r = load <2 x ptr>, ptr %i.n, align 8, !tbaa !184
  store ptr %i.l, ptr %i.n, align 8, !tbaa !175
  store ptr %i.k, ptr %i.o, align 8, !tbaa !176
  store <2 x ptr> %i.r, ptr %i.f, align 8, !tbaa !184
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !184
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !179
  %i.u = load <2 x ptr>, ptr %i.p, align 8, !tbaa !184
  store <2 x ptr> %i.s, ptr %i.p, align 8, !tbaa !184
  store <2 x ptr> %i.u, ptr %i.q, align 8, !tbaa !184
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !50
  %i.x = load <2 x i64>, ptr %i.v, align 8, !tbaa !50
  store i64 %i.w, ptr %i.v, align 8, !tbaa !50
  store <2 x i64> %i.x, ptr %i.e, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !50
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !50
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !50
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.a, align 8, !tbaa !32
  %i.ae = load <2 x float>, ptr %i.ac, align 8, !tbaa !32
  store <2 x float> %i.ad, ptr %i.ac, align 8, !tbaa !32
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 8, !tbaa !198, !range !137, !noundef !138
  %i.ai = load i8, ptr %i.ag, align 8, !tbaa !198, !range !137, !noundef !138
  store i8 %i.ai, ptr %i.af, align 8, !tbaa !198
  store i8 %i.ah, ptr %i.ag, align 8, !tbaa !198
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 73 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !198, !range !137, !noundef !138
  %i.am = load i8, ptr %i.ak, align 1, !tbaa !198, !range !137, !noundef !138
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !198
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !198
  %.not4.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.k to i64
  %i.ao = ptrtoint ptr %i.l to i64
  %4 = sub i64 %i.an, %i.ao
  %5 = add i64 %4, -24                            ; 2 uses
  %i.ap = udiv i64 %5, 24
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 2305843009213693944     ; 3 uses
  %i.ar = mul i64 %n.vec, 24
  %i.as = getelementptr i8, ptr %i.l, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue49, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue49 ] ; 2 uses
  %i.at = mul i64 %index, 24                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.l, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep29 = getelementptr i8, ptr %i.au, i64 24 ; 2 uses
  %i.av = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep30 = getelementptr i8, ptr %i.av, i64 48 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep31 = getelementptr i8, ptr %i.aw, i64 72 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep32 = getelementptr i8, ptr %i.ax, i64 96 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep33 = getelementptr i8, ptr %i.ay, i64 120 ; 2 uses
  %i.az = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep34 = getelementptr i8, ptr %i.az, i64 144 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.l, i64 %i.at
  %next.gep35 = getelementptr i8, ptr %i.ba, i64 168 ; 2 uses
  %i.bb = load i16, ptr %next.gep, align 8, !tbaa !16
  %i.bc = load i16, ptr %next.gep29, align 8, !tbaa !16
  %i.bd = load i16, ptr %next.gep30, align 8, !tbaa !16
  %i.be = load i16, ptr %next.gep31, align 8, !tbaa !16
  %i.bf = load i16, ptr %next.gep32, align 8, !tbaa !16
  %i.bg = load i16, ptr %next.gep33, align 8, !tbaa !16
  %i.bh = load i16, ptr %next.gep34, align 8, !tbaa !16
  %i.bi = load i16, ptr %next.gep35, align 8, !tbaa !16
  %i.bj = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 1
  %i.bl = insertelement <8 x i16> %i.bk, i16 %i.bd, i64 2
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 3
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 4
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 5
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 6
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 7
  %i.br = icmp ne <8 x i16> %i.bq, splat (i16 -1) ; 8 uses
  %i.bs = extractelement <8 x i1> %i.br, i64 0
  br i1 %i.bs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bt = extractelement <8 x i1> %i.br, i64 1
  br i1 %i.bt, label %pred.store.if36, label %pred.store.continue37

pred.store.if36:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep29, align 8, !tbaa !16
  br label %pred.store.continue37

pred.store.continue37:                            ; preds = %pred.store.if36, %pred.store.continue
  %i.bu = extractelement <8 x i1> %i.br, i64 2
  br i1 %i.bu, label %pred.store.if38, label %pred.store.continue39

pred.store.if38:                                  ; preds = %pred.store.continue37
  store i16 -1, ptr %next.gep30, align 8, !tbaa !16
  br label %pred.store.continue39

pred.store.continue39:                            ; preds = %pred.store.if38, %pred.store.continue37
  %i.bv = extractelement <8 x i1> %i.br, i64 3
  br i1 %i.bv, label %pred.store.if40, label %pred.store.continue41

pred.store.if40:                                  ; preds = %pred.store.continue39
  store i16 -1, ptr %next.gep31, align 8, !tbaa !16
  br label %pred.store.continue41

pred.store.continue41:                            ; preds = %pred.store.if40, %pred.store.continue39
  %i.bw = extractelement <8 x i1> %i.br, i64 4
  br i1 %i.bw, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue41
  store i16 -1, ptr %next.gep32, align 8, !tbaa !16
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue41
  %i.bx = extractelement <8 x i1> %i.br, i64 5
  br i1 %i.bx, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  store i16 -1, ptr %next.gep33, align 8, !tbaa !16
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.by = extractelement <8 x i1> %i.br, i64 6
  br i1 %i.by, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  store i16 -1, ptr %next.gep34, align 8, !tbaa !16
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bz = extractelement <8 x i1> %i.br, i64 7
  br i1 %i.bz, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  store i16 -1, ptr %next.gep35, align 8, !tbaa !16
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !199

middle.block:                                     ; preds = %pred.store.continue49
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i.preheader50

.lr.ph.i.i.i.i.preheader50:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader50, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cd, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i ], [ %.05.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader50 ] ; 3 uses
  %i.cb = load i16, ptr %.05.i.i.i.i, align 8, !tbaa !16
  %i.cc = icmp eq i16 %i.cb, -1
  br i1 %i.cc, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  store i16 -1, ptr %.05.i.i.i.i, align 8, !tbaa !16
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i, %middle.block, %._crit_edge
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.ce = ptrtoint ptr %i.t to i64
  %i.cf = ptrtoint ptr %i.l to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.cg) #31
  br label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit

_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_ED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.015.019 = phi ptr [ %i.g, %.lr.ph ], [ %i.db, %bb.j ] ; 4 uses
  %i.ch = load i16, ptr %.sroa.015.019, align 8, !tbaa !16
  %i.ci = icmp eq i16 %i.ch, -1
  br i1 %i.ci, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load i64, ptr %2, align 8, !tbaa !70
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.011.i = phi i16 [ 0, %bb.e ], [ %i.cz, %bb.i ] ; 4 uses
  %.pn = phi i64 [ %i.cl, %bb.e ], [ %i.da, %bb.i ]
  %.0.i = and i64 %.pn, %i.cm                     ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %.0.i ; 5 uses
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !16 ; 3 uses
  %i.cr = icmp sgt i16 %.011.i, %i.cq
  br i1 %i.cr, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cs = icmp eq i16 %i.cq, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  br i1 %i.cs, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIiPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIiS7_St4hashIiESt8equal_toIiESaIS8_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSI_11ValueSelectESB_SD_SE_Lb0ESH_E22insert_value_on_rehashEmsjOS8_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr %i.cj, align 8, !tbaa !3
  %i.cv = load i32, ptr %i.ct, align 8, !tbaa !3
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !3
  store i32 %i.cu, ptr %i.ct, align 8, !tbaa !3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !60
  %i.cy = load ptr, ptr %i.cw, align 8, !tbaa !60
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !60
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !60
  store i16 %.011.i, ptr %i.cp, align 8, !tbaa !99
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.i = phi i16 [ %i.cq, %bb.h ], [ %.011.i, %bb.f ]
  %i.cz = add i16 %.1.i, 1
  %i.da = add i64 %.0.i, 1
  br label %bb.f, !llvm.loop !201

end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %i.lu = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.jy
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227: ; preds = %bb.ay
  %i.lw = load i64, ptr %i.jy, align 8, !tbaa !53
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.az:                                            ; preds = %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit226
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ly, %bb.az ], [ %i.ln, %bb.av ] ; 2 uses
  %i.lz = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.jy
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %bb.ba
  %i.mb = load i64, ptr %i.jy, align 8, !tbaa !53
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.lm, %bb.au ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230 ], [ %.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %.body

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescERK12TIFFDirEntry.exit
  %i.md = icmp eq i16 %i.g, 1
  %or.cond = select i1 %i.md, i1 %i.j, i1 false
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, label %_ZNSt6vectorItSaItEED2Ev.exit

_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408: ; preds = %bb.bb
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i242 = icmp eq ptr %1, null
  br i1 %.not.i242, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, label %bb.bc

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408
  %i.mf = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243: ; preds = %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408, %bb.bc
  %i.mg = phi i64 [ %i.mf, %bb.bc ], [ 0, %_ZN11OpenImageIO4v3_13pvt8dataspanIhEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit.thread408 ]
  %i.mh = load i8, ptr %i.me, align 4, !tbaa !53
  %i.mi = zext i8 %i.mh to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %i.mi, ptr %i.a, align 4, !tbaa !3
  store ptr %1, ptr %7, align 8, !tbaa !7
  %i.mj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.mg, ptr %i.mj, align 8, !tbaa !12
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %7, i64 263, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i195, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i181, %bb.ai, %bb.ac, %bb.x, %bb.n, %bb.d, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit243, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229, %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit193, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit191, %_ZN11OpenImageIO4v3_13pvt8dataspanIjEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit179, %bb.t, %_ZN11OpenImageIO4v3_13pvt8dataspanItEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit148, %bb.j, %bb.bb
  ret void

.body:                                            ; preds = %bb.u, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232
  %.pn139.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.az, %bb.k ], [ %i.cl, %bb.u ]
  resume { ptr, i32 } %.pn139.pn
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !229  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil13string_is_intENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #6

declare ptr @_ZNK11OpenImageIO4v3_110ParamValue11get_ustringEi(ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK11OpenImageIO4v3_110ParamValue7get_intEi(ptr noundef nonnull align 8 dereferenceable(39), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN11OpenImageIO4v3_13pvt6TagMap4ImplEEclEPS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !171  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !172  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.m = load i16, ptr %i.l, align 4, !tbaa !34
  %i.n = icmp eq i16 %i.m, -1
  br i1 %i.n, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !51   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i16 -1, ptr %i.l, align 4, !tbaa !34
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EE13destroy_valueEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !173

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !171
  br label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.v = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !174
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #31
  br label %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i

_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEELb1EEESG_EvT_SI_RSaIT0_E.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !175 ; 15 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !176 ; 3 uses
  %.not4.i.i.i.i.i1.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i.i.i1.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i.preheader

.lr.ph.i.i.i.i.i2.i.preheader:                    ; preds = %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %2 = sub i64 %i.af, %i.ag
  %3 = add i64 %2, -24                            ; 2 uses
  %i.ah = udiv i64 %3, 24
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i2.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i2.i.preheader
  %n.vec = and i64 %i.ai, 2305843009213693944     ; 3 uses
  %i.aj = mul i64 %n.vec, 24
  %i.ak = getelementptr i8, ptr %i.ac, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue33, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue33 ] ; 2 uses
  %i.al = mul i64 %index, 24                      ; 8 uses
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep13 = getelementptr i8, ptr %i.am, i64 24 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep14 = getelementptr i8, ptr %i.an, i64 48 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep15 = getelementptr i8, ptr %i.ao, i64 72 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep16 = getelementptr i8, ptr %i.ap, i64 96 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep17 = getelementptr i8, ptr %i.aq, i64 120 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep18 = getelementptr i8, ptr %i.ar, i64 144 ; 2 uses
  %i.as = getelementptr i8, ptr %i.ac, i64 %i.al
  %next.gep19 = getelementptr i8, ptr %i.as, i64 168 ; 2 uses
  %i.at = load i16, ptr %next.gep, align 8, !tbaa !16
  %i.au = load i16, ptr %next.gep13, align 8, !tbaa !16
  %i.av = load i16, ptr %next.gep14, align 8, !tbaa !16
  %i.aw = load i16, ptr %next.gep15, align 8, !tbaa !16
  %i.ax = load i16, ptr %next.gep16, align 8, !tbaa !16
  %i.ay = load i16, ptr %next.gep17, align 8, !tbaa !16
  %i.az = load i16, ptr %next.gep18, align 8, !tbaa !16
  %i.ba = load i16, ptr %next.gep19, align 8, !tbaa !16
  %i.bb = insertelement <8 x i16> poison, i16 %i.at, i64 0
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 1
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 2
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 3
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 4
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 5
  %i.bh = insertelement <8 x i16> %i.bg, i16 %i.az, i64 6
  %i.bi = insertelement <8 x i16> %i.bh, i16 %i.ba, i64 7
  %i.bj = icmp ne <8 x i16> %i.bi, splat (i16 -1) ; 8 uses
  %i.bk = extractelement <8 x i1> %i.bj, i64 0
  br i1 %i.bk, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 -1, ptr %next.gep, align 8, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bl = extractelement <8 x i1> %i.bj, i64 1
  br i1 %i.bl, label %pred.store.if20, label %pred.store.continue21

pred.store.if20:                                  ; preds = %pred.store.continue
  store i16 -1, ptr %next.gep13, align 8, !tbaa !16
  br label %pred.store.continue21

pred.store.continue21:                            ; preds = %pred.store.if20, %pred.store.continue
  %i.bm = extractelement <8 x i1> %i.bj, i64 2
  br i1 %i.bm, label %pred.store.if22, label %pred.store.continue23

pred.store.if22:                                  ; preds = %pred.store.continue21
  store i16 -1, ptr %next.gep14, align 8, !tbaa !16
  br label %pred.store.continue23

pred.store.continue23:                            ; preds = %pred.store.if22, %pred.store.continue21
  %i.bn = extractelement <8 x i1> %i.bj, i64 3
  br i1 %i.bn, label %pred.store.if24, label %pred.store.continue25

pred.store.if24:                                  ; preds = %pred.store.continue23
  store i16 -1, ptr %next.gep15, align 8, !tbaa !16
  br label %pred.store.continue25

pred.store.continue25:                            ; preds = %pred.store.if24, %pred.store.continue23
  %i.bo = extractelement <8 x i1> %i.bj, i64 4
  br i1 %i.bo, label %pred.store.if26, label %pred.store.continue27

pred.store.if26:                                  ; preds = %pred.store.continue25
  store i16 -1, ptr %next.gep16, align 8, !tbaa !16
  br label %pred.store.continue27

pred.store.continue27:                            ; preds = %pred.store.if26, %pred.store.continue25
  %i.bp = extractelement <8 x i1> %i.bj, i64 5
  br i1 %i.bp, label %pred.store.if28, label %pred.store.continue29

pred.store.if28:                                  ; preds = %pred.store.continue27
  store i16 -1, ptr %next.gep17, align 8, !tbaa !16
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue27
  %i.bq = extractelement <8 x i1> %i.bj, i64 6
  br i1 %i.bq, label %pred.store.if30, label %pred.store.continue31

pred.store.if30:                                  ; preds = %pred.store.continue29
  store i16 -1, ptr %next.gep18, align 8, !tbaa !16
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %i.br = extractelement <8 x i1> %i.bj, i64 7
  br i1 %i.br, label %pred.store.if32, label %pred.store.continue33

pred.store.if32:                                  ; preds = %pred.store.continue31
  store i16 -1, ptr %next.gep19, align 8, !tbaa !16
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %pred.store.continue33
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i.preheader34

.lr.ph.i.i.i.i.i2.i.preheader34:                  ; preds = %.lr.ph.i.i.i.i.i2.i.preheader, %middle.block
  %.05.i.i.i.i.i3.i.ph = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i2.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i2.i

.lr.ph.i.i.i.i.i2.i:                              ; preds = %.lr.ph.i.i.i.i.i2.i.preheader34, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i3.i = phi ptr [ %i.bv, %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i ], [ %.05.i.i.i.i.i3.i.ph, %.lr.ph.i.i.i.i.i2.i.preheader34 ] ; 3 uses
  %i.bt = load i16, ptr %.05.i.i.i.i.i3.i, align 8, !tbaa !16
  %i.bu = icmp eq i16 %i.bt, -1
  br i1 %i.bu, label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2.i
  store i16 -1, ptr %.05.i.i.i.i.i3.i, align 8, !tbaa !16
  br label %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i2.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i3.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i4.i = icmp eq ptr %i.bv, %i.ae
  br i1 %.not.i.i.i.i.i4.i, label %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i2.i, !llvm.loop !232

_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEEEvPT_.exit.i.i.i.i.i.i, %middle.block, %_ZN3tsl9robin_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS6_SB_EELb0ENS_2rh26power_of_two_growth_policyILm2EEEED2Ev.exit.i
  %.not.i.i1.i.i.i5.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1.i.i.i5.i, label %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !179
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.ac to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ca) #31
  br label %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit

_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit:   ; preds = %_ZSt8_DestroyIPN3tsl17detail_robin_hash12bucket_entryISt4pairIiPKN11OpenImageIO4v3_17TagInfoEELb0EEESA_EvT_SC_RSaIT0_E.exit.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef %1, i64 noundef 192) #31
  br label %bb.g

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_13pvt6TagMap4ImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E4findIS8_EENSR_14robin_iteratorILb0EEERKT_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !54
  %i.d = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.a, i64 noundef %i.c, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #34
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit: ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 4 uses
  %.0814.i.i.i = and i64 %i.g, %i.d               ; 3 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %.0814.i.i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 4, !tbaa !34
  %.not15.i.i.i = icmp slt i16 %i.l, 0
  br i1 %.not15.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E8hash_keyIS8_EEmRKT_.exit
  %i.m = load i64, ptr %i.b, align 8, !tbaa !54
  %.fr5.i.i = freeze i64 %i.m                     ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = icmp eq i64 %.fr5.i.i, 0
  br i1 %i.o, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i
  %i.p = phi ptr [ %i.v, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ %i.j, %.lr.ph.i.i.i ] ; 2 uses
  %.0817.i.us.i.i = phi i64 [ %.08.i.us.i.i, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ %.0814.i.i.i, %.lr.ph.i.i.i ]
  %.016.i.us.i.i = phi i16 [ %i.u, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i ], [ 0, %.lr.ph.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !54
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E9find_implIS8_EENSR_14robin_iteratorILb0EEERKT_m.exit, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN11OpenImageIO4v3_17TagInfoEENS_9robin_mapIS8_SD_St4hashIS8_ESt8equal_toIS8_ESaISE_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSO_11ValueSelectESH_SJ_SK_Lb0ESN_E12compare_keysIS8_S8_EEbRKT_RKT0_.exit.thread10.i.us.i.i, !prof !233
end_hunk_2
