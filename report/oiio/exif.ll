inline.NumInlined: 1716
inline.NumDeleted: 772
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP12TIFFDirEntrySt6vectorIS2_SaIS2_EEEEZN11OpenImageIO4v3_111encode_exifERKNS9_9ImageSpecERS4_IcSaIcEENS9_6endianEE3$_0EvT_SI_T0_":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
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
  %1 = ptrtoaddr ptr %i.d to i64
  %2 = ptrtoaddr ptr %i.b to i64
  %i.e = sub i64 %1, %2
  %i.f = add i64 %i.e, -24                        ; 2 uses
  %i.g = udiv i64 %i.f, 24
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 168
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
  %4 = ptrtoaddr ptr %i.k to i64
  %5 = ptrtoaddr ptr %i.l to i64
  %i.an = sub i64 %4, %5
  %i.ao = add i64 %i.an, -24                      ; 2 uses
  %i.ap = udiv i64 %i.ao, 24
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ao, 168
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
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
  %i.ey = shl nuw nsw i64 %i.m, 3
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !87
  %i.fa = add i32 %i.ez, %6                       ; 2 uses
  %i.fb = icmp slt i32 %i.fa, 0
  %i.fc = zext nneg i32 %i.fa to i64              ; 2 uses
  %i.fd = add nuw nsw i64 %i.ey, %i.fc
  %i.fe = icmp ugt i64 %i.fd, %4
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 %i.fc ; 4 uses
  %or.cond429 = select i1 %i.fb, i1 true, i1 %i.fe
  br i1 %or.cond429, label %_ZNSt6vectorItSaItEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac
  %i.fg = shl nuw nsw i64 %i.m, 2
  %i.fh = alloca i8, i64 %i.fg, align 16          ; 6 uses
  %min.iters.check519 = icmp ult i32 %i.i, 4      ; 2 uses
  br i1 %5, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check519, label %.lr.ph.split.preheader607, label %vector.ph509

vector.ph509:                                     ; preds = %.lr.ph.split.preheader
  %n.vec511 = and i64 %i.m, 4294967292            ; 3 uses
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph509
  %index513 = phi i64 [ 0, %vector.ph509 ], [ %index.next515, %vector.body512 ] ; 3 uses
  %i.fi = shl nuw nsw i64 %index513, 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fi
  %wide.vec = load <8 x i32>, ptr %i.fj, align 1  ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec514 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fk = sitofp <4 x i32> %strided.vec to <4 x double>
  %i.fl = sitofp <4 x i32> %strided.vec514 to <4 x double>
  %i.fm = fdiv <4 x double> %i.fk, %i.fl
  %i.fn = fptrunc <4 x double> %i.fm to <4 x float>
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %index513
  store <4 x float> %i.fn, ptr %i.fo, align 16, !tbaa !32
  %index.next515 = add nuw i64 %index513, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next515, %n.vec511
  br i1 %i.fp, label %middle.block516, label %vector.body512, !llvm.loop !218

middle.block516:                                  ; preds = %vector.body512
  %cmp.n517 = icmp eq i64 %n.vec511, %i.m
  br i1 %cmp.n517, label %._crit_edge, label %.lr.ph.split.preheader607

.lr.ph.split.preheader607:                        ; preds = %.lr.ph.split.preheader, %middle.block516
  %.0126439.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec511, %middle.block516 ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check519, label %.lr.ph.split.us.preheader606, label %vector.ph520

vector.ph520:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec522 = and i64 %i.m, 4294967292            ; 3 uses
  br label %vector.body523

vector.body523:                                   ; preds = %vector.body523, %vector.ph520
  %index524 = phi i64 [ 0, %vector.ph520 ], [ %index.next528, %vector.body523 ] ; 3 uses
  %i.fq = shl nuw nsw i64 %index524, 3
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fq
  %wide.vec525 = load <8 x i32>, ptr %i.fr, align 1 ; 2 uses
  %i.fs = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.vec525)
  %i.ft = shufflevector <8 x i32> %i.fs, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fu = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.vec525)
  %i.fv = shufflevector <8 x i32> %i.fu, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fw = sitofp <4 x i32> %i.ft to <4 x double>
  %i.fx = sitofp <4 x i32> %i.fv to <4 x double>
  %i.fy = fdiv <4 x double> %i.fw, %i.fx
  %i.fz = fptrunc <4 x double> %i.fy to <4 x float>
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %index524
  store <4 x float> %i.fz, ptr %i.ga, align 16, !tbaa !32
  %index.next528 = add nuw i64 %index524, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next528, %n.vec522
  br i1 %i.gb, label %middle.block529, label %vector.body523, !llvm.loop !219

middle.block529:                                  ; preds = %vector.body523
  %cmp.n530 = icmp eq i64 %n.vec522, %i.m
  br i1 %cmp.n530, label %._crit_edge, label %.lr.ph.split.us.preheader606

.lr.ph.split.us.preheader606:                     ; preds = %.lr.ph.split.us.preheader, %middle.block529
  %.0126439.us.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec522, %middle.block529 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader606, %.lr.ph.split.us
  %.0126439.us = phi i64 [ %i.gm, %.lr.ph.split.us ], [ %.0126439.us.ph, %.lr.ph.split.us.preheader606 ] ; 3 uses
  %i.gc = shl nuw nsw i64 %.0126439.us, 3
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gc ; 2 uses
  %.0.copyload7.us = load i32, ptr %i.gd, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %.0.copyload.us = load i32, ptr %i.ge, align 1
  %i.gf = tail call i32 @llvm.bswap.i32(i32 %.0.copyload7.us)
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.us)
  %i.gh = sitofp i32 %i.gf to double
  %i.gi = sitofp i32 %i.gg to double
  %i.gj = fdiv double %i.gh, %i.gi
  %i.gk = fptrunc double %i.gj to float
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0126439.us
  store float %i.gk, ptr %i.gl, align 4, !tbaa !32
  %i.gm = add nuw nsw i64 %.0126439.us, 1         ; 2 uses
  %exitcond448.not = icmp eq i64 %i.gm, %i.m
  br i1 %exitcond448.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block516, %middle.block529
  br i1 %i.j, label %bb.ad, label %bb.af

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader607, %.lr.ph.split
  %.0126439 = phi i64 [ %i.gw, %.lr.ph.split ], [ %.0126439.ph, %.lr.ph.split.preheader607 ] ; 3 uses
  %i.gn = shl nuw nsw i64 %.0126439, 3
  %i.go = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gn
  %i.gp = load <2 x i32>, ptr %i.go, align 1
  %i.gq = sitofp <2 x i32> %i.gp to <2 x double>  ; 2 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = extractelement <2 x double> %i.gq, i64 1
  %i.gt = fdiv double %i.gr, %i.gs
  %i.gu = fptrunc double %i.gt to float
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %.0126439
  store float %i.gu, ptr %i.gv, align 4, !tbaa !32
  %i.gw = add nuw nsw i64 %.0126439, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !221

bb.ad:                                            ; preds = %._crit_edge
  %.not.i203 = icmp eq ptr %1, null
  br i1 %.not.i203, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit204: ; preds = %bb.ad, %bb.ae
  %i.gy = phi i64 [ %i.gx, %bb.ae ], [ 0, %bb.ad ]
  %i.gz = load float, ptr %i.fh, align 16, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store float %i.gz, ptr %i.d, align 4, !tbaa !32
  store ptr %1, ptr %8, align 8, !tbaa !7
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.gy, ptr %i.ha, align 8, !tbaa !12
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %8, i64 267, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.af:                                            ; preds = %._crit_edge
  store ptr %1, ptr %15, align 8, !tbaa !7
  %.not.i205 = icmp eq ptr %1, null
  br i1 %.not.i205, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit206: ; preds = %bb.af, %bb.ag
  %i.hc = phi i64 [ %i.hb, %bb.ag ], [ 0, %bb.af ]
  %i.hd = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !12
  %.sroa.5.0.insert.shift = shl nuw i64 %i.m, 32
  %.sroa.0256.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, 267
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %15, i64 %.sroa.0256.0.insert.insert, ptr noundef nonnull %i.fh)
  br label %_ZNSt6vectorItSaItEED2Ev.exit

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescERK12TIFFDirEntry.exit, %_ZN11OpenImageIO4v3_125tiff_datatype_to_typedescERK12TIFFDirEntry.exit
  %or.cond.i.i = icmp samesign ugt i16 %i.g, 13
  br i1 %or.cond.i.i, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i208, label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit: ; preds = %bb.a
  %i.he = zext i32 %i.i to i64
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394: ; preds = %bb.ah, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit
  %i.hf = phi i64 [ %i.he, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit ], [ %i.m, %bb.ah ]
  %i.hg = zext nneg i16 %i.g to i64
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr @_ZZN11OpenImageIO4v3_114tiff_data_sizeE12TIFFDataTypeE5sizes, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !50
  br label %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i208

_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i208: ; preds = %bb.ah, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394
  %i.hj = phi i64 [ %i.hf, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394 ], [ %i.m, %bb.ah ]
  %.0.i.i.i209 = phi i64 [ %i.hi, %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.thread394 ], [ -1, %bb.ah ]
  %i.hk = mul i64 %.0.i.i.i209, %i.hj             ; 5 uses
  %i.hl = icmp ult i64 %i.hk, 5
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %i.hl, label %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i208
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !87
  %i.ho = add i32 %i.hn, %6                       ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %i.hq = zext nneg i32 %i.ho to i64              ; 2 uses
  %i.hr = add i64 %i.hk, %i.hq
  %i.hs = icmp ugt i64 %i.hr, %4
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 %i.hq
  %or.cond433 = select i1 %i.hp, i1 true, i1 %i.hs
  br i1 %or.cond433, label %_ZNSt6vectorItSaItEED2Ev.exit, label %.preheader.preheader

_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit: ; preds = %_ZN11OpenImageIO4v3_114tiff_data_sizeERK12TIFFDirEntry.exit.i208
  %i.hu = icmp eq i64 %i.hk, 0
  br i1 %i.hu, label %_ZNSt6vectorItSaItEED2Ev.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ai, %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit
  %.sroa.011.0.i213480 = phi ptr [ %i.hm, %_ZN11OpenImageIO4v3_13pvt8dataspanIcEENS0_4spanIKhLm18446744073709551615EEERK12TIFFDirEntryS5_im.exit ], [ %i.ht, %bb.ai ] ; 8 uses
  %.sroa.011.0.i213480493 = ptrtoaddr ptr %.sroa.011.0.i213480 to i64 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.aj
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %bb.aj ] ; 3 uses
  %.sroa.9.0438 = phi i64 [ %i.hk, %.preheader.preheader ], [ %i.hz, %bb.aj ] ; 12 uses
  %i.hv = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %.sroa.9.0438
  %i.hw = getelementptr i8, ptr %i.hv, i64 -1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !53
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %bb.aj, label %.critedge

bb.aj:                                            ; preds = %.preheader
  %i.hz = add i64 %.sroa.9.0438, -1               ; 2 uses
  %.not = icmp eq i64 %i.hz, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge.i.i, label %.preheader, !llvm.loop !222

.critedge:                                        ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i213480, i64 %.sroa.9.0438
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.ib, ptr %16, align 8, !tbaa !48
  %i.ic = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.ic, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i64 %.sroa.9.0438, ptr %i.c, align 8, !tbaa !50
  %i.id = icmp ugt i64 %.sroa.9.0438, 15
  br i1 %i.id, label %.noexc.i219, label %iter.check

.noexc.i219:                                      ; preds = %.critedge
  %i.ie = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.au    ; 2 uses

.noexc:                                           ; preds = %.noexc.i219
  store ptr %i.ie, ptr %16, align 8, !tbaa !51
  %i.if = load i64, ptr %i.c, align 8, !tbaa !50
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !53
  br label %iter.check

._crit_edge.i.i:                                  ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.ig = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ig, ptr %16, align 8, !tbaa !48
  %i.ih = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.ih, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  br label %bb.ak

iter.check:                                       ; preds = %.noexc, %.critedge
  %.ph483 = phi ptr [ %i.ib, %.critedge ], [ %i.ie, %.noexc ] ; 6 uses
  %min.iters.check = icmp ult i64 %.sroa.9.0438, 4
  %.ph483492 = ptrtoaddr ptr %.ph483 to i64
  %i.ii = sub i64 %.sroa.011.0.i213480493, %.ph483492
  %diff.check = icmp ugt i64 %i.ii, -32
  %or.cond602 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond602, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check494 = icmp ult i64 %.sroa.9.0438, 32
  br i1 %min.iters.check494, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.sroa.9.0438, 28
  %n.vec = and i64 %.sroa.9.0438, -32             ; 5 uses
  %i.ij = getelementptr i8, ptr %.ph483, i64 %n.vec
  %i.ik = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.ph483, i64 %index ; 2 uses
  %next.gep495 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep495, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep495, align 1, !tbaa !53
  %wide.load496 = load <16 x i8>, ptr %i.il, align 1, !tbaa !53
  %i.im = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !53
  store <16 x i8> %wide.load496, ptr %i.im, align 1, !tbaa !53
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !223

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.9.0438, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !224

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec499 = and i64 %.sroa.9.0438, -4           ; 4 uses
  %i.io = getelementptr i8, ptr %.ph483, i64 %n.vec499
  %i.ip = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %n.vec499
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index500 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next504, %vec.epilog.vector.body ] ; 3 uses
  %next.gep501 = getelementptr i8, ptr %.ph483, i64 %index500
  %next.gep502 = getelementptr i8, ptr %.sroa.011.0.i213480, i64 %index500
  %wide.load503 = load <4 x i8>, ptr %next.gep502, align 1, !tbaa !53
  store <4 x i8> %wide.load503, ptr %next.gep501, align 1, !tbaa !53
  %index.next504 = add nuw i64 %index500, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next504, %n.vec499
  br i1 %i.iq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n505 = icmp eq i64 %.sroa.9.0438, %n.vec499
  br i1 %cmp.n505, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %.ph483, %iter.check ], [ %i.ij, %vec.epilog.iter.check ], [ %i.io, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.i.i.ph = phi ptr [ %.sroa.011.0.i213480, %iter.check ], [ %i.ik, %vec.epilog.iter.check ], [ %i.ip, %vec.epilog.middle.block ] ; 3 uses
  %.068.i.i.i.ph610 = ptrtoaddr ptr %.068.i.i.i.ph to i64 ; 2 uses
  %i.ir = add i64 %i.hk, %.sroa.011.0.i213480493  ; 2 uses
  %i.is = add i64 %indvar, %.068.i.i.i.ph610
  %i.it = sub i64 %i.ir, %i.is
  %xtraiter = and i64 %i.it, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.iw, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.prol = phi ptr [ %i.iv, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.iu = load i8, ptr %.068.i.i.i.prol, align 1, !tbaa !53
  store i8 %i.iu, ptr %.09.i.i.i.prol, align 1, !tbaa !53
  %i.iv = getelementptr inbounds nuw i8, ptr %.068.i.i.i.prol, i64 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !226

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.iw, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi ptr [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.iv, %.lr.ph.i.i.i.prol ]
  %i.ix = sub i64 %indvar, %i.ir
  %i.iy = add i64 %i.ix, %.068.i.i.i.ph610
  %i.iz = icmp ugt i64 %i.iy, -8
  br i1 %i.iz, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i = phi ptr [ %i.jw, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ja = load i8, ptr %.068.i.i.i, align 1, !tbaa !53
  store i8 %i.ja, ptr %.09.i.i.i, align 1, !tbaa !53
  %i.jb = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1
  %i.jc = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %i.jd = load i8, ptr %i.jb, align 1, !tbaa !53
  store i8 %i.jd, ptr %i.jc, align 1, !tbaa !53
  %i.je = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 2
  %i.jf = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %i.jg = load i8, ptr %i.je, align 1, !tbaa !53
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !53
  %i.jh = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 3
  %i.ji = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 3
  %i.jj = load i8, ptr %i.jh, align 1, !tbaa !53
  store i8 %i.jj, ptr %i.ji, align 1, !tbaa !53
  %i.jk = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4
  %i.jm = load i8, ptr %i.jk, align 1, !tbaa !53
  store i8 %i.jm, ptr %i.jl, align 1, !tbaa !53
  %i.jn = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 5
  %i.jo = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 5
  %i.jp = load i8, ptr %i.jn, align 1, !tbaa !53
  store i8 %i.jp, ptr %i.jo, align 1, !tbaa !53
  %i.jq = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 6
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !53
  store i8 %i.js, ptr %i.jr, align 1, !tbaa !53
  %i.jt = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 7
  %i.ju = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 7
  %i.jv = load i8, ptr %i.jt, align 1, !tbaa !53
  store i8 %i.jv, ptr %i.ju, align 1, !tbaa !53
  %i.jw = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 8 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %.not.i.i.i218.7 = icmp eq ptr %i.jw, %i.ia
  br i1 %.not.i.i.i218.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !227

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre12.i.i = load i64, ptr %i.c, align 8, !tbaa !50
  %.pre13.i.i = load ptr, ptr %16, align 8, !tbaa !51
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i
  %i.jy = phi ptr [ %i.ib, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ig, %._crit_edge.i.i ] ; 8 uses
  %i.jz = phi ptr [ %i.ic, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ih, %._crit_edge.i.i ] ; 6 uses
  %i.ka = phi ptr [ %.pre13.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.ig, %._crit_edge.i.i ]
  %i.kb = phi i64 [ %.pre12.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKhEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !54
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kb
  store i8 0, ptr %i.kc, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.kd = load ptr, ptr %16, align 8, !tbaa !51   ; 4 uses
  %i.ke = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kd) #35
  %i.kf = load i64, ptr %i.jz, align 8, !tbaa !54
  %i.kg = icmp ult i64 %i.ke, %i.kf
  br i1 %i.kg, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.kh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 11 uses
  store ptr %i.kh, ptr %17, align 8, !tbaa !48
  %i.ki = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kd) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.ki, ptr %i.b, align 8, !tbaa !50
  %i.kj = icmp ugt i64 %i.ki, 15
  br i1 %i.kj, label %.noexc.i221, label %._crit_edge.i.i220

.noexc.i221:                                      ; preds = %bb.al
  %i.kk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc223 unwind label %bb.av ; 2 uses

.noexc223:                                        ; preds = %.noexc.i221
  store ptr %i.kk, ptr %17, align 8, !tbaa !51
  %i.kl = load i64, ptr %i.b, align 8, !tbaa !50
  store i64 %i.kl, ptr %i.kh, align 8, !tbaa !53
  br label %._crit_edge.i.i220

._crit_edge.i.i220:                               ; preds = %.noexc223, %bb.al
  %i.km = phi ptr [ %i.kk, %.noexc223 ], [ %i.kh, %bb.al ] ; 2 uses
  switch i64 %i.ki, label %bb.an [
    i64 1, label %bb.am
    i64 0, label %bb.ao
  ]

bb.am:                                            ; preds = %._crit_edge.i.i220
  %i.kn = load i8, ptr %i.kd, align 1, !tbaa !53
  store i8 %i.kn, ptr %i.km, align 1, !tbaa !53
  br label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i220
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.km, ptr nonnull align 1 %i.kd, i64 %i.ki, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %._crit_edge.i.i220
  %i.ko = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !54
  %i.kq = load ptr, ptr %17, align 8, !tbaa !51
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 %i.ko
  store i8 0, ptr %i.kr, align 1, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.ks = load ptr, ptr %16, align 8, !tbaa !51   ; 6 uses
  %i.kt = icmp eq ptr %i.ks, %i.jy
  %i.ku = load ptr, ptr %17, align 8, !tbaa !51   ; 5 uses
  %i.kv = icmp eq ptr %i.ku, %i.kh                ; 2 uses
  br i1 %i.kt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ao
  br i1 %i.kv, label %bb.ap, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ao
  br i1 %i.kv, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.kw = load i64, ptr %i.kp, align 8, !tbaa !54 ; 3 uses
  %i.kx = icmp ult i64 %i.kw, 16
  call void @llvm.assume(i1 %i.kx)
  switch i64 %i.kw, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !53
  store i8 %i.ky, ptr %i.ks, align 1, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ks, ptr align 1 %i.ku, i64 %i.kw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kz = load i64, ptr %i.kp, align 8, !tbaa !54 ; 2 uses
  store i64 %i.kz, ptr %i.jz, align 8, !tbaa !54
  %i.la = load ptr, ptr %16, align 8, !tbaa !51
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.kz
  store i8 0, ptr %i.lb, align 1, !tbaa !53
  %.pre.i = load ptr, ptr %17, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ku, ptr %16, align 8, !tbaa !51
  %i.lc = load i64, ptr %i.kp, align 8, !tbaa !54
  store i64 %i.lc, ptr %i.jz, align 8, !tbaa !54
  %i.ld = load i64, ptr %i.kh, align 8, !tbaa !53
  store i64 %i.ld, ptr %i.jy, align 8, !tbaa !53
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.le = load i64, ptr %i.jy, align 8, !tbaa !53
  store ptr %i.ku, ptr %16, align 8, !tbaa !51
  %i.lf = load i64, ptr %i.kp, align 8, !tbaa !54
  store i64 %i.lf, ptr %i.jz, align 8, !tbaa !54
  %i.lg = load i64, ptr %i.kh, align 8, !tbaa !53
  store i64 %i.lg, ptr %i.jy, align 8, !tbaa !53
  %.not.i224 = icmp eq ptr %i.ks, null
  br i1 %.not.i224, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ks, ptr %17, align 8, !tbaa !51
  store i64 %i.le, ptr %i.kh, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.kh, ptr %17, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.as, %bb.at
  %i.lh = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ks, %bb.as ], [ %i.kh, %bb.at ]
  store i64 0, ptr %i.kp, align 8, !tbaa !54
  store i8 0, ptr %i.lh, align 1, !tbaa !53
  %i.li = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.kh
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L21add_exif_item_to_specERNS0_9ImageSpecEPKcPK12TIFFDirEntryNS0_4spanIKhLm18446744073709551615EEEbi:bb.a
  store i64 %i.lt, ptr %i.ls, align 8, !tbaa !12
  invoke void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19)
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
  %2 = ptrtoaddr ptr %i.ae to i64
  %3 = ptrtoaddr ptr %i.ac to i64
  %i.af = sub i64 %2, %3
  %i.ag = add i64 %i.af, -24                      ; 2 uses
  %i.ah = udiv i64 %i.ag, 24
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 168
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
end_hunk_3
