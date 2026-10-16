Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/benchmark?download=true
inline.NumInlined: 16777
inline.NumDeleted: 5122
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_JRKSt7variantIJNS4_6detail10pb_field_tIS7_iLm1EiEENSJ_IS7_iLm2EiEENSJ_IS7_iLm3EiEENSJ_IS7_iLm4EiEEEEEEDcOT0_DpOT1_:bb.a
bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i40
  invoke void %i.as(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef null)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #31
  unreachable

bb.r:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i40, %bb.p, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i29, %bb.l, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i18, %bb.h, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i, %bb.d
  %.sink48 = phi ptr [ %i.ag, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i29 ], [ %i.w, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i18 ], [ %i.m, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i ], [ %i.m, %bb.d ], [ %i.w, %bb.h ], [ %i.ag, %bb.l ], [ %i.aq, %bb.p ], [ %i.aq, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i40 ] ; 2 uses
  %.sink46 = phi i32 [ %i.ah, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i29 ], [ %i.x, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i18 ], [ %i.n, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i ], [ %i.n, %bb.d ], [ %i.x, %bb.h ], [ %i.ah, %bb.l ], [ %i.ar, %bb.p ], [ %i.ar, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i.i.i40 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sink48, i64 8
  store i32 %.sink46, ptr %i.av, align 8, !tbaa !164
  store ptr @_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE, ptr %.sink48, align 8, !tbaa !536
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE13get_field_anyESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i38, %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i27, %bb.j, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3any17_Manager_internalIiE9_S_manageENS_3_OpEPKS_PNS_4_ArgE(i32 noundef %0, ptr noundef %1, ptr noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  switch i32 %0, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %2, align 8, !tbaa !94
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store ptr @_ZTIi, ptr %2, align 8, !tbaa !94
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.a, align 4, !tbaa !164
  store i32 %i.d, ptr %i.c, align 8, !tbaa !164
  %i.e = load ptr, ptr %1, align 8, !tbaa !536
  %i.f = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.e, ptr %i.f, align 8, !tbaa !536
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.a, align 4, !tbaa !164
  store i32 %i.i, ptr %i.h, align 8, !tbaa !164
  %i.j = load ptr, ptr %1, align 8, !tbaa !536
  %i.k = load ptr, ptr %2, align 8, !tbaa !94
  store ptr %i.j, ptr %i.k, align 8, !tbaa !536
  store ptr null, ptr %1, align 8, !tbaa !536
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_JRKSt7variantIJNS4_6detail10pb_field_tIS7_iLm1EiEENSJ_IS7_iLm2EiEENSJ_IS7_iLm3EiEENSJ_IS7_iLm4EiEEEEEEDcOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !446
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !249 ; 9 uses
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.23.0.copyload.i.i.i.i = load ptr, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !363 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1535, !nonnull !272, !align !273 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !249
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !363 ; 4 uses
  %i.e = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i ; 4 uses
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.g = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.g, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16: ; preds = %bb.e
  %bcmp.i.i.i.i.i17 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i17, 0
  br i1 %i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26: ; preds = %bb.g
  %bcmp.i.i.i.i.i27 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i27, 0
  br i1 %i.k, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36: ; preds = %bb.i
  %bcmp.i.i.i.i.i37 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i37, 0
  br i1 %i.m, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

bb.j:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split: ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %i.n = load i64, ptr %1, align 8, !tbaa !249
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1536, !nonnull !272, !align !273 ; 3 uses
  store i64 %i.n, ptr %i.p, align 8, !tbaa !544
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 3, ptr %i.q, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i39 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), ptr %.sroa.4.0..sroa_idx.i.i.i.i39, align 8, !tbaa !363
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample4rectELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_iLm2EiEENSL_IS8_iLm3EiEENSL_IS8_iLm4EiEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SS_.exit.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.640") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3ylt10reflection8internal21get_member_offset_arrIRN9pb_sample5rectsEEERKDaOT_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN3ylt10reflection8internal7wrapperIN9pb_sample5rectsEE5valueE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr, align 8, !tbaa !428
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr, align 8, !tbaa !428, !nonnull !272, !align !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !249, !noalias !1539
  store i64 %i.f, ptr %0, align 8, !tbaa !249, !alias.scope !1539
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !249, !alias.scope !1539
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.62, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !363, !alias.scope !1539
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample5rectsEEEDaOT_E10offset_arr) #28
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits15make_pmh_tablesILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSM_RKT3_T4_(ptr dead_on_unwind noalias writable sret(%"struct.frozen::bits::pmh_tables.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 %4) local_unnamed_addr #12 comdat {
bb.a:
  %5 = alloca %"struct.frozen::bits::bucket_size_compare", align 1 ; 3 uses
  %6 = alloca %"struct.frozen::bits::pmh_buckets.693", align 8 ; 7 uses
  %7 = alloca %"class.frozen::bits::carray.696", align 8 ; 10 uses
  %8 = alloca %"class.frozen::bits::carray.669", align 8 ; 8 uses
  %9 = alloca %"class.frozen::bits::carray.670", align 8 ; 19 uses
  %10 = alloca %"class.frozen::bits::cvector.695", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false), !alias.scope !1551
  %i.a = load i32, ptr %1, align 8, !tbaa !164, !noalias !1551
  %i.b = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %i.e, %bb.b ], [ %4, %bb.a ]
  %i.d = mul i64 %i.c, 48271
  %i.e = urem i64 %i.d, 2147483647                ; 6 uses
  %i.f = xor i64 %i.e, %i.b                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl nuw nsw i64 %i.f, 21
  %i.i = add nsw i64 %i.h, %i.g                   ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul nsw i64 %i.k, 265                    ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !546, !alias.scope !1551 ; 3 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit, label %bb.b, !llvm.loop !1542

_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i64 %i.e, ptr %i.x, align 8, !tbaa !549, !alias.scope !1551
  %i.y = add nuw nsw i64 %i.u, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !546, !alias.scope !1551
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  store i64 0, ptr %i.z, align 8, !tbaa !249, !alias.scope !1551
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %7, align 8, !tbaa !164, !alias.scope !1553
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %6, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1553
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !164, !alias.scope !1553
  %.sroa.72.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.aa, ptr %.sroa.72.16..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1553
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1552
  call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1552
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  %i.ad = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !553 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !546 ; 5 uses
  switch i64 %i.af, label %.lr.ph.preheader [
    i64 1, label %bb.c
    i64 0, label %bb.g
  ]

bb.c:                                             ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !249
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = load i32, ptr %7, align 8, !tbaa !554
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aj
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !249
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample5rectsESt6vectorINS7_4rectESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.al = mul nuw nsw i64 %i.e, 48271
  %i.am = urem i64 %i.al, 2147483647              ; 2 uses
  %i.an = or disjoint i64 %i.am, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ao = phi i64 [ %i.bs, %bb.f ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.039.148 = phi i64 [ %.sroa.039.2, %bb.f ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %.sroa.035.047 = phi i64 [ %.sroa.035.1, %bb.f ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !249
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %i.at = zext i32 %i.as to i64
  %i.au = xor i64 %.sroa.035.047, %i.at           ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = shl i64 %i.au, 21
  %i.ax = add nuw i64 %i.aw, %i.av                ; 2 uses
  %i.ay = lshr i64 %i.ax, 24
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 265                      ; 2 uses
  %i.bb = lshr i64 %i.ba, 14
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 21                       ; 2 uses
  %i.be = lshr i64 %i.bd, 28
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 1                        ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !249
  %.not33 = icmp eq i64 %i.bi, -1
  br i1 %.not33, label %bb.d, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bj = icmp eq i64 %i.ao, 0
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ao
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.079.i = phi i64 [ %i.bk, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !249
  %.not.i = icmp eq i64 %i.bm, %i.bg
  br i1 %.not.i, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit, label %bb.e

_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit: ; preds = %.lr.ph.i, %.lr.ph
  store i64 0, ptr %i.ac, align 8, !tbaa !546
  %i.bn = mul nuw nsw i64 %.sroa.039.148, 48271
  %i.bo = urem i64 %i.bn, 2147483647              ; 2 uses
  %i.bp = or disjoint i64 %i.bo, -9223372036854775808
  br label %bb.f, !llvm.loop !1547

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.bq = add nuw nsw i64 %i.ao, 1
  store i64 %i.bq, ptr %i.ac, align 8, !tbaa !546
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ao
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !249
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !546
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit
  %i.bs = phi i64 [ %.pre, %.loopexit ], [ 0, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.035.1 = phi i64 [ %.sroa.035.047, %.loopexit ], [ %i.bp, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.039.2 = phi i64 [ %.sroa.039.148, %.loopexit ], [ %i.bo, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.af
  br i1 %i.bt, label %.lr.ph, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.f
  %i.bu = load i32, ptr %7, align 8, !tbaa !554
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bv
  store i64 %.sroa.035.1, ptr %i.bw, align 8, !tbaa !249
  %i.bx = add i64 %i.af, -1
  %xtraiter = and i64 %i.af, 3                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, 3
  br i1 %i.by, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %i.af, -4
  br label %.lr.ph52

._crit_edge53.unr-lcssa:                          ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %._crit_edge53.unr-lcssa, %.lr.ph52.preheader
  %.02950.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %i.dc, %._crit_edge53.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %.02950.epil = phi i64 [ %i.ce, %.lr.ph52.epil ], [ %.02950.epil.init, %.lr.ph52.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph52.epil ], [ 0, %.lr.ph52.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950.epil
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !249
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950.epil
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !249
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cc
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !249
  %i.ce = add nuw nsw i64 %.02950.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53, label %.lr.ph52.epil, !llvm.loop !1548

._crit_edge53:                                    ; preds = %.lr.ph52.epil, %._crit_edge53.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.g

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.02950 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %i.dc, %.lr.ph52 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.3, %.lr.ph52 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !249
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !249
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ci
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !249
  %i.ck = or disjoint i64 %.02950, 1              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !249
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ck
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !249
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.co
  store i64 %i.cm, ptr %i.cp, align 8, !tbaa !249
  %i.cq = or disjoint i64 %.02950, 2              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !249
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !249
end_hunk_0
begin_hunk_1_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEEZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_JRKSt7variantIJNS4_6detail10pb_field_tIS7_iLm1EiEENSJ_IS7_NSt7__cxx1112basic_stringIcSB_SaIcEEELm2ESO_EENSJ_IS7_iLm3EiEENSJ_IS7_dLm4EdEEEEEEDcOT0_DpOT1_:bb.a
  %i.b = load i8, ptr %i.a, align 8, !tbaa !459
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !249 ; 9 uses
  %.sroa.23.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.23.0.copyload.i.i.i.i = load ptr, ptr %.sroa.23.0..sroa_idx.i.i.i.i, align 8, !tbaa !363 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1618, !nonnull !272, !align !273 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !249
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !363 ; 4 uses
  %i.e = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i ; 4 uses
  switch i8 %i.b, label %bb.j [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.c, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.f, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.g = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.g, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.h, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16: ; preds = %bb.e
  %bcmp.i.i.i.i.i17 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i17, 0
  br i1 %i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26: ; preds = %bb.g
  %bcmp.i.i.i.i.i27 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i27, 0
  br i1 %i.k, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.h:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = icmp eq i64 %.sroa.02.0.copyload.i.i.i.i, 0
  br i1 %i.l, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36: ; preds = %bb.i
  %bcmp.i.i.i.i.i37 = tail call i32 @bcmp(ptr %.sroa.23.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.02.0.copyload.i.i.i.i)
  %i.m = icmp eq i32 %bcmp.i.i.i.i.i37, 0
  br i1 %i.m, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

bb.j:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split: ; preds = %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16, %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.sink41 = phi i64 [ 3, %bb.g ], [ 23, %bb.e ], [ 3, %bb.c ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ 23, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16 ], [ 3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26 ], [ 6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ 6, %bb.i ]
  %.sink = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @.str.90, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16 ], [ getelementptr inbounds nuw (i8, ptr @.str.88, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26 ], [ getelementptr inbounds nuw (i8, ptr @.str.91, i64 45), %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36 ], [ getelementptr inbounds nuw (i8, ptr @.str.91, i64 45), %bb.i ]
  %i.n = load i64, ptr %1, align 8, !tbaa !249
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1619, !nonnull !272, !align !273 ; 3 uses
  store i64 %i.n, ptr %i.p, align 8, !tbaa !544
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sink41, ptr %i.q, align 8, !tbaa !249
  %.sroa.4.0..sroa_idx.i.i.i.i39 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i39, align 8, !tbaa !363
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit: ; preds = %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEEOZNK6iguana9base_implIN9pb_sample6personELh8EE14get_field_infoESt17basic_string_viewIcSt11char_traitsIcEEEUlRKT_E_RKSt7variantIJNS5_6detail10pb_field_tIS8_iLm1EiEENSL_IS8_NSt7__cxx1112basic_stringIcSC_SaIcEEELm2ESQ_EENSL_IS8_iLm3EiEENSL_IS8_dLm4EdEEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESI_SW_.exit.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i36, %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i26, %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i16, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN9pb_sample6personC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !187
  store i64 %i.c, ptr %i.a, align 8, !tbaa !187
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6personE, i64 16), ptr %0, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !462
  store i32 %i.f, ptr %i.d, align 8, !tbaa !462
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !92
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !93   ; 8 uses
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i64 %i.l, 0
  br i1 %i.n, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #32
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !169

.noexc6.i:                                        ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 2 uses
  store ptr %i.q, ptr %i.g, align 8, !tbaa !95
  store i64 %i.l, ptr %i.i, align 8, !tbaa !94
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.r = phi ptr [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.i, %bb.a ] ; 3 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.s = load i8, ptr %i.j, align 1, !tbaa !94
  store i8 %i.s, ptr %i.r, align 1, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.l, ptr %i.t, align 8, !tbaa !93
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !94
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.759") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3ylt10reflection8internal21get_member_offset_arrIRN9pb_sample7personsEEERKDaOT_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN3ylt10reflection8internal7wrapperIN9pb_sample7personsEE5valueE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr, align 8, !tbaa !428
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr, align 8, !tbaa !428, !nonnull !272, !align !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1622)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !249, !noalias !1622
  store i64 %i.f, ptr %0, align 8, !tbaa !249, !alias.scope !1622
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !249, !alias.scope !1622
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.62, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !363, !alias.scope !1622
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample7personsEEEDaOT_E10offset_arr) #28
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits15make_pmh_tablesILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSM_RKT3_T4_(ptr dead_on_unwind noalias writable sret(%"struct.frozen::bits::pmh_tables.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 %4) local_unnamed_addr #12 comdat {
bb.a:
  %5 = alloca %"struct.frozen::bits::bucket_size_compare", align 1 ; 3 uses
  %6 = alloca %"struct.frozen::bits::pmh_buckets.693", align 8 ; 7 uses
  %7 = alloca %"class.frozen::bits::carray.696", align 8 ; 10 uses
  %8 = alloca %"class.frozen::bits::carray.669", align 8 ; 8 uses
  %9 = alloca %"class.frozen::bits::carray.670", align 8 ; 19 uses
  %10 = alloca %"class.frozen::bits::cvector.695", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1634)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false), !alias.scope !1634
  %i.a = load i32, ptr %1, align 8, !tbaa !164, !noalias !1634
  %i.b = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %i.e, %bb.b ], [ %4, %bb.a ]
  %i.d = mul i64 %i.c, 48271
  %i.e = urem i64 %i.d, 2147483647                ; 6 uses
  %i.f = xor i64 %i.e, %i.b                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl nuw nsw i64 %i.f, 21
  %i.i = add nsw i64 %i.h, %i.g                   ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul nsw i64 %i.k, 265                    ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !546, !alias.scope !1634 ; 3 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit, label %bb.b, !llvm.loop !1625

_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i64 %i.e, ptr %i.x, align 8, !tbaa !549, !alias.scope !1634
  %i.y = add nuw nsw i64 %i.u, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !546, !alias.scope !1634
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  store i64 0, ptr %i.z, align 8, !tbaa !249, !alias.scope !1634
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %7, align 8, !tbaa !164, !alias.scope !1636
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %6, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1636
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !164, !alias.scope !1636
  %.sroa.72.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.aa, ptr %.sroa.72.16..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1636
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1635
  call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1635
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  %i.ad = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !553 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !546 ; 5 uses
  switch i64 %i.af, label %.lr.ph.preheader [
    i64 1, label %bb.c
    i64 0, label %bb.g
  ]

bb.c:                                             ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !249
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = load i32, ptr %7, align 8, !tbaa !554
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aj
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !249
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample7personsESt6vectorINS7_6personESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.al = mul nuw nsw i64 %i.e, 48271
  %i.am = urem i64 %i.al, 2147483647              ; 2 uses
  %i.an = or disjoint i64 %i.am, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ao = phi i64 [ %i.bs, %bb.f ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.039.148 = phi i64 [ %.sroa.039.2, %bb.f ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %.sroa.035.047 = phi i64 [ %.sroa.035.1, %bb.f ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !249
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %i.at = zext i32 %i.as to i64
  %i.au = xor i64 %.sroa.035.047, %i.at           ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = shl i64 %i.au, 21
  %i.ax = add nuw i64 %i.aw, %i.av                ; 2 uses
  %i.ay = lshr i64 %i.ax, 24
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 265                      ; 2 uses
  %i.bb = lshr i64 %i.ba, 14
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 21                       ; 2 uses
  %i.be = lshr i64 %i.bd, 28
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 1                        ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !249
  %.not33 = icmp eq i64 %i.bi, -1
  br i1 %.not33, label %bb.d, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bj = icmp eq i64 %i.ao, 0
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ao
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.079.i = phi i64 [ %i.bk, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !249
  %.not.i = icmp eq i64 %i.bm, %i.bg
  br i1 %.not.i, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit, label %bb.e

_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit: ; preds = %.lr.ph.i, %.lr.ph
  store i64 0, ptr %i.ac, align 8, !tbaa !546
  %i.bn = mul nuw nsw i64 %.sroa.039.148, 48271
  %i.bo = urem i64 %i.bn, 2147483647              ; 2 uses
  %i.bp = or disjoint i64 %i.bo, -9223372036854775808
  br label %bb.f, !llvm.loop !1630

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.bq = add nuw nsw i64 %i.ao, 1
  store i64 %i.bq, ptr %i.ac, align 8, !tbaa !546
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ao
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !249
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !546
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit
  %i.bs = phi i64 [ %.pre, %.loopexit ], [ 0, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.035.1 = phi i64 [ %.sroa.035.047, %.loopexit ], [ %i.bp, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.039.2 = phi i64 [ %.sroa.039.148, %.loopexit ], [ %i.bo, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.af
  br i1 %i.bt, label %.lr.ph, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.f
  %i.bu = load i32, ptr %7, align 8, !tbaa !554
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bv
  store i64 %.sroa.035.1, ptr %i.bw, align 8, !tbaa !249
  %i.bx = add i64 %i.af, -1
  %xtraiter = and i64 %i.af, 3                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, 3
  br i1 %i.by, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %i.af, -4
  br label %.lr.ph52

._crit_edge53.unr-lcssa:                          ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %._crit_edge53.unr-lcssa, %.lr.ph52.preheader
  %.02950.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %i.dc, %._crit_edge53.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %.02950.epil = phi i64 [ %i.ce, %.lr.ph52.epil ], [ %.02950.epil.init, %.lr.ph52.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph52.epil ], [ 0, %.lr.ph52.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950.epil
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !249
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950.epil
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !249
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cc
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !249
  %i.ce = add nuw nsw i64 %.02950.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53, label %.lr.ph52.epil, !llvm.loop !1631

._crit_edge53:                                    ; preds = %.lr.ph52.epil, %._crit_edge53.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.g

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.02950 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %i.dc, %.lr.ph52 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.3, %.lr.ph52 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !249
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !249
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ci
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !249
  %i.ck = or disjoint i64 %.02950, 1              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !249
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ck
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !249
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.co
  store i64 %i.cm, ptr %i.cp, align 8, !tbaa !249
  %i.cq = or disjoint i64 %.02950, 2              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !249
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !249
end_hunk_1
begin_hunk_2_@_ZN9pb_sample7MonsterC2ERKS0_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.q
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #29
          to label %.noexc34 unwind label %bb.x, !inline_history !645 ; 2 uses

.noexc34:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.cf, ptr %i.bv, align 8, !tbaa !95
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !94
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc34, %bb.o
  %i.cg = phi ptr [ %i.cf, %.noexc34 ], [ %i.bx, %bb.o ] ; 3 uses
  switch i64 %i.ca, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.ch = load i8, ptr %i.by, align 1, !tbaa !94
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !94
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %i.by, i64 %i.ca, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.ca, ptr %i.ci, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ca
  store i8 0, ptr %i.cj, align 1, !tbaa !94
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !476
  store i32 %i.cm, ptr %i.ck, align 8, !tbaa !476
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !202 ; 2 uses
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !201 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %.not.i.i.i.i35 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i.i.i35, label %.noexc38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = icmp ugt i64 %i.cu, 9223372036854775776
  br i1 %i.cv, label %.noexc.i.i36, label %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, !prof !169

.noexc.i.i36:                                     ; preds = %bb.u
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #32
          to label %.noexc37 unwind label %bb.y

.noexc37:                                         ; preds = %.noexc.i.i36
  unreachable

_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.u
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #29
          to label %.noexc38 unwind label %bb.y

.noexc38:                                         ; preds = %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, %bb.t
  %i.cx = phi ptr [ null, %bb.t ], [ %i.cw, %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.cx, ptr %i.cn, align 8, !tbaa !201
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !202
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cu
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !203
  %i.db = load ptr, ptr %i.co, align 8, !tbaa !424 ; 2 uses
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !424 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %i.cx, %.noexc38 ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %i.db, %.noexc38 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !196
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !196
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample4Vec3E, i64 16), ptr %.08.i.i.i.i.i, align 8, !tbaa !126
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.dh, ptr noundef nonnull align 8 dereferenceable(12) %i.di, i64 12, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dc
  br i1 %i.dl, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !69

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc38
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cx, %.noexc38 ], [ %i.dk, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.cy, align 8, !tbaa !202
  ret void

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22, %.noexc6.i23, %.noexc.i24
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.w:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample6WeaponEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i31
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9pb_sample6WeaponD2Ev.exit

bb.y:                                             ; preds = %_ZNSt15__new_allocatorIN9pb_sample4Vec3EE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i36
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN9pb_sample6WeaponE, i64 16), ptr %i.br, align 8, !tbaa !126
  %i.dq = load ptr, ptr %i.bv, align 8, !tbaa !95 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.bx
  br i1 %i.dr, label %_ZN9pb_sample6WeaponD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.y
  %i.ds = load i64, ptr %i.bx, align 8, !tbaa !94
  %i.dt = add i64 %i.ds, 1
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #30, !inline_history !204
  br label %_ZN9pb_sample6WeaponD2Ev.exit

_ZN9pb_sample6WeaponD2Ev.exit:                    ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.x
  %.pn = phi { ptr, i32 } [ %i.do, %bb.x ], [ %i.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dp, %bb.y ]
  tail call void @_ZNSt6vectorIN9pb_sample6WeaponESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.at) #28
  br label %.body

.body:                                            ; preds = %bb.w, %bb.n, %bb.m, %_ZN9pb_sample6WeaponD2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN9pb_sample6WeaponD2Ev.exit ], [ %i.dn, %bb.w ], [ %i.bl, %bb.n ], [ %i.bl, %bb.m ] ; 2 uses
  %i.du = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.ad
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.dw = load i64, ptr %i.ad, align 8, !tbaa !94
  %i.dx = add i64 %i.dw, 1
  tail call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.v
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dm, %bb.v ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn.pn, %.body ]
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !95  ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.o
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ea = load i64, ptr %i.o, align 8, !tbaa !94
  %i.eb = add i64 %i.ea, 1
  tail call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple.1042") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !173

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN3ylt10reflection8internal21get_member_offset_arrIRN9pb_sample8MonstersEEERKDaOT_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN3ylt10reflection8internal7wrapperIN9pb_sample8MonstersEE5valueE)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr, align 8, !tbaa !428
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr, align 8, !tbaa !428, !nonnull !272, !align !273
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.f = load i64, ptr %i.e, align 8, !tbaa !249, !noalias !1828
  store i64 %i.f, ptr %0, align 8, !tbaa !249, !alias.scope !1828
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !249, !alias.scope !1828
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @.str.62, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !363, !alias.scope !1828
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN6iguana6detail20get_pb_members_tupleIN9pb_sample8MonstersEEEDaOT_E10offset_arr) #28
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6frozen4bits15make_pmh_tablesILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample8MonstersESt6vectorINS7_7MonsterESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_10pmh_tablesIXT_ET2_EERKNS0_6carrayIT0_XT1_EEERKSM_RKT3_T4_(ptr dead_on_unwind noalias writable sret(%"struct.frozen::bits::pmh_tables.668") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, i64 %4) local_unnamed_addr #12 comdat {
bb.a:
  %5 = alloca %"struct.frozen::bits::bucket_size_compare", align 1 ; 3 uses
  %6 = alloca %"struct.frozen::bits::pmh_buckets.693", align 8 ; 7 uses
  %7 = alloca %"class.frozen::bits::carray.696", align 8 ; 10 uses
  %8 = alloca %"class.frozen::bits::carray.669", align 8 ; 8 uses
  %9 = alloca %"class.frozen::bits::carray.670", align 8 ; 19 uses
  %10 = alloca %"class.frozen::bits::cvector.695", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false), !alias.scope !1840
  %i.a = load i32, ptr %1, align 8, !tbaa !164, !noalias !1840
  %i.b = zext i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.c = phi i64 [ %i.e, %bb.b ], [ %4, %bb.a ]
  %i.d = mul i64 %i.c, 48271
  %i.e = urem i64 %i.d, 2147483647                ; 6 uses
  %i.f = xor i64 %i.e, %i.b                       ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = shl nuw nsw i64 %i.f, 21
  %i.i = add nsw i64 %i.h, %i.g                   ; 2 uses
  %i.j = lshr i64 %i.i, 24
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul nsw i64 %i.k, 265                    ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, 21                         ; 2 uses
  %i.p = lshr i64 %i.o, 28
  %i.q = xor i64 %i.p, %i.o
  %i.r = and i64 %i.q, 1
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %6, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !546, !alias.scope !1840 ; 3 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample8MonstersESt6vectorINS7_7MonsterESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit, label %bb.b, !llvm.loop !1831

_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample8MonstersESt6vectorINS7_7MonsterESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i64 %i.e, ptr %i.x, align 8, !tbaa !549, !alias.scope !1840
  %i.y = add nuw nsw i64 %i.u, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !546, !alias.scope !1840
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  store i64 0, ptr %i.z, align 8, !tbaa !249, !alias.scope !1840
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 0, ptr %7, align 8, !tbaa !164, !alias.scope !1842
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %6, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1842
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store i32 1, ptr %i.ab, align 8, !tbaa !164, !alias.scope !1842
  %.sroa.72.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.aa, ptr %.sroa.72.16..sroa_idx.i.i, align 8, !tbaa !551, !alias.scope !1842
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1841
  call void @_ZN6frozen4bits9quicksortIPNS0_11pmh_bucketsILm2EE10bucket_refENS0_19bucket_size_compareEEEvT_S7_RKT0_(ptr noundef nonnull align 8 %7, ptr noundef nonnull %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1841
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !tbaa !501
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  %i.ad = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !tbaa !553 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !546 ; 5 uses
  switch i64 %i.af, label %.lr.ph.preheader [
    i64 1, label %bb.c
    i64 0, label %bb.g
  ]

bb.c:                                             ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample8MonstersESt6vectorINS7_7MonsterESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.ag = load i64, ptr %i.ad, align 8, !tbaa !249
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = load i32, ptr %7, align 8, !tbaa !554
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.aj
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !249
  br label %bb.g

.lr.ph.preheader:                                 ; preds = %_ZN6frozen4bits16make_pmh_bucketsILm2ESt4pairIjSt7variantIJN6iguana6detail10pb_field_tIN9pb_sample8MonstersESt6vectorINS7_7MonsterESaISA_EELm1ESC_EEEEELm1ENS_4elsaIjEENS0_6GetKeyENS_26linear_congruential_engineImLm48271ELm0ELm2147483647EEEEENS0_11pmh_bucketsIXT_EEERKNS0_6carrayIT0_XT1_EEERKT2_RKT3_RT4_.exit
  %i.al = mul nuw nsw i64 %i.e, 48271
  %i.am = urem i64 %i.al, 2147483647              ; 2 uses
  %i.an = or disjoint i64 %i.am, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ao = phi i64 [ %i.bs, %bb.f ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.sroa.039.148 = phi i64 [ %.sroa.039.2, %bb.f ], [ %i.am, %.lr.ph.preheader ] ; 2 uses
  %.sroa.035.047 = phi i64 [ %.sroa.035.1, %bb.f ], [ %i.an, %.lr.ph.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !249
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %i.at = zext i32 %i.as to i64
  %i.au = xor i64 %.sroa.035.047, %i.at           ; 2 uses
  %i.av = xor i64 %i.au, -1
  %i.aw = shl i64 %i.au, 21
  %i.ax = add nuw i64 %i.aw, %i.av                ; 2 uses
  %i.ay = lshr i64 %i.ax, 24
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = mul i64 %i.az, 265                      ; 2 uses
  %i.bb = lshr i64 %i.ba, 14
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = mul i64 %i.bc, 21                       ; 2 uses
  %i.be = lshr i64 %i.bd, 28
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 1                        ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !249
  %.not33 = icmp eq i64 %i.bi, -1
  br i1 %.not33, label %bb.d, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.bj = icmp eq i64 %i.ao, 0
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ao
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !63

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.079.i = phi i64 [ %i.bk, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.079.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !249
  %.not.i = icmp eq i64 %i.bm, %i.bg
  br i1 %.not.i, label %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit, label %bb.e

_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit: ; preds = %.lr.ph.i, %.lr.ph
  store i64 0, ptr %i.ac, align 8, !tbaa !546
  %i.bn = mul nuw nsw i64 %.sroa.039.148, 48271
  %i.bo = urem i64 %i.bn, 2147483647              ; 2 uses
  %i.bp = or disjoint i64 %i.bo, -9223372036854775808
  br label %bb.f, !llvm.loop !1836

.loopexit:                                        ; preds = %bb.e, %bb.d
  %i.bq = add nuw nsw i64 %i.ao, 1
  store i64 %i.bq, ptr %i.ac, align 8, !tbaa !546
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ao
  store i64 %i.bg, ptr %i.br, align 8, !tbaa !249
  %.pre = load i64, ptr %i.ac, align 8, !tbaa !546
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit
  %i.bs = phi i64 [ %.pre, %.loopexit ], [ 0, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.035.1 = phi i64 [ %.sroa.035.047, %.loopexit ], [ %i.bp, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %.sroa.039.2 = phi i64 [ %.sroa.039.148, %.loopexit ], [ %i.bo, %_ZN6frozen4bits18all_different_fromImLm2EEEbRNS0_7cvectorIT_XT0_EEERS3_.exit ] ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.af
  br i1 %i.bt, label %.lr.ph, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.f
  %i.bu = load i32, ptr %7, align 8, !tbaa !554
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.bv
  store i64 %.sroa.035.1, ptr %i.bw, align 8, !tbaa !249
  %i.bx = add i64 %i.af, -1
  %xtraiter = and i64 %i.af, 3                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, 3
  br i1 %i.by, label %.lr.ph52.epil.preheader, label %.lr.ph52.preheader.new

.lr.ph52.preheader.new:                           ; preds = %.lr.ph52.preheader
  %unroll_iter = and i64 %i.af, -4
  br label %.lr.ph52

._crit_edge53.unr-lcssa:                          ; preds = %.lr.ph52
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge53, label %.lr.ph52.epil.preheader

.lr.ph52.epil.preheader:                          ; preds = %._crit_edge53.unr-lcssa, %.lr.ph52.preheader
  %.02950.epil.init = phi i64 [ 0, %.lr.ph52.preheader ], [ %i.dc, %._crit_edge53.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph52.epil

.lr.ph52.epil:                                    ; preds = %.lr.ph52.epil, %.lr.ph52.epil.preheader
  %.02950.epil = phi i64 [ %i.ce, %.lr.ph52.epil ], [ %.02950.epil.init, %.lr.ph52.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph52.epil ], [ 0, %.lr.ph52.epil.preheader ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950.epil
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !249
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950.epil
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !249
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.cc
  store i64 %i.ca, ptr %i.cd, align 8, !tbaa !249
  %i.ce = add nuw nsw i64 %.02950.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge53, label %.lr.ph52.epil, !llvm.loop !1837

._crit_edge53:                                    ; preds = %.lr.ph52.epil, %._crit_edge53.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.g

.lr.ph52:                                         ; preds = %.lr.ph52, %.lr.ph52.preheader.new
  %.02950 = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %i.dc, %.lr.ph52 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph52.preheader.new ], [ %niter.next.3, %.lr.ph52 ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.02950
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !249
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.02950
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !249
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ci
  store i64 %i.cg, ptr %i.cj, align 8, !tbaa !249
  %i.ck = or disjoint i64 %.02950, 1              ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !249
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ck
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !249
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.co
  store i64 %i.cm, ptr %i.cp, align 8, !tbaa !249
  %i.cq = or disjoint i64 %.02950, 2              ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !249
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.cq
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !249
end_hunk_2
