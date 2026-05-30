inline.NumInlined: 5278
inline.NumDeleted: 2139
begin_hunk_0_@_ZN5arrow16BaseBinaryScalarD2Ev:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.am, %bb.o ], [ %i.ao, %bb.p ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.q, label %_ZN5arrow6ScalarD2Ev.exit

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #25, !inline_history !177
  br label %_ZN5arrow6ScalarD2Ev.exit

_ZN5arrow6ScalarD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12StringScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK5arrow16BaseBinaryScalar4dataEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1256 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !1259, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = select i1 %i.e, ptr %i.g, ptr null, !prof !103
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, ptr } @_ZNK5arrow16BaseBinaryScalar4viewEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1256 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1266
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1267
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare void @_ZN5arrow16BaseBinaryScalarC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12BinaryScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #26
  ret void
}

declare void @_ZN5arrow12BinaryScalar16FillScratchSpaceEPhRKSt10shared_ptrINS_6BufferEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16BaseBinaryScalarD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow16BaseBinaryScalarD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E4_clIS4_EEDaSN_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E4_clIS4_EEDaSN_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !215
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !216
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E3_clIS8_EEDaSN_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E3_clIS8_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E4_clIS4_EEDaSN_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #25
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E2_clISA_EEDaSN_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E2_clISA_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E3_clIS8_EEDaSN_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %4) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(18) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E1_clISA_EEDaSN_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E1_clISA_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E2_clISA_EEDaSN_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #25
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E0_clISC_EEDaSN_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E0_clISC_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E1_clISA_EEDaSN_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.q = load ptr, ptr %6, align 8, !tbaa !130
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !116
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E_clISI_EEDaSN_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E_clISI_EEDaSN_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E0_clISC_EEDaSN_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E_clISI_EEDaSN_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E4_clIS4_EEDaSN_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E3_clIS8_EEDaSN_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E2_clISA_EEDaSN_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E1_clISA_EEDaSN_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E0_clISC_EEDaSN_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E_clISI_EEDaSN_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %12 = alloca %"class.std::vector.27", align 16  ; 14 uses
  %13 = alloca %"class.arrow::Result.138", align 8 ; 14 uses
  %14 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %15 = alloca %"class.arrow::Result.634", align 8 ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.arrow::Result.138", align 8 ; 14 uses
  %18 = alloca %"class.arrow::FieldRef", align 8  ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %22 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %23 = alloca %"class.arrow::Result.624", align 8 ; 22 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.dd

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1268, !nonnull !114, !align !228
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !215 ; 9 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !216 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 12 uses
  store ptr %i.f, ptr %19, align 8, !tbaa !115
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.i, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw i64 %.sroa.0.0.copyload.i, 1     ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !131

.noexc9.i.i.i:                                    ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 2 uses
  store ptr %i.m, ptr %19, align 8, !tbaa !130
  store i64 %.sroa.0.0.copyload.i, ptr %i.f, align 8, !tbaa !117
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.f, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !117
  store i8 %i.o, ptr %i.n, align 1, !tbaa !117
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  store i64 %.sroa.0.0.copyload.i, ptr %i.p, align 8, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.q, align 1, !tbaa !117
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  store ptr %i.r, ptr %18, align 8, !tbaa !115
  %i.s = load ptr, ptr %19, align 8, !tbaa !130   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr %i.p, align 8, !tbaa !116  ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.v)
  %i.w = add nuw nsw i64 %i.u, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.w, i1 false)
  br label %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  store ptr %i.s, ptr %18, align 8, !tbaa !130
  %i.x = load i64, ptr %i.f, align 8, !tbaa !117
  store i64 %i.x, ptr %i.r, align 8, !tbaa !117
  %.pre = load i64, ptr %i.p, align 8, !tbaa !116
  br label %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = phi i64 [ %i.u, %bb.i ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !116
  store ptr %i.f, ptr %19, align 8, !tbaa !130
  store i64 0, ptr %i.p, align 8, !tbaa !116
  store i8 0, ptr %i.f, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store i8 1, ptr %i.aa, align 8, !tbaa !329
  invoke void @_ZNK5arrow12StructScalar5fieldENS_8FieldRefE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.138") align 8 %17, ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull %18)
          to label %bb.j unwind label %bb.v

bb.j:                                             ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !329
  switch i8 %i.ab, label %bb.p [
    i8 -1, label %_ZN5arrow8FieldRefD2Ev.exit
    i8 0, label %bb.k
    i8 1, label %bb.m
    i8 2, label %bb.n
  ], !prof !331

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %18, align 8, !tbaa !332  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !335
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #26, !inline_history !336
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.m:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %18, align 8, !tbaa !130  ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !117
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26, !inline_history !336
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.n:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %18, align 8, !tbaa !337  ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !340 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i2.i.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.al, %bb.n ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !341
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i63, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !342

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i64 = load ptr, ptr %18, align 8, !tbaa !337
  br label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i

_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i: ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i, %bb.n
  %i.ao = phi ptr [ %.pre.i.i64, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.loopexit.i.i ], [ %i.al, %bb.n ] ; 3 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i65, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !343
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #26, !inline_history !344
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i

bb.p:                                             ; preds = %bb.j
  unreachable

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i: ; preds = %bb.m, %bb.o, %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow8FieldRefEEEvT_S5_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.l, %bb.k
  store i8 -1, ptr %i.aa, align 8, !tbaa !329
  br label %_ZN5arrow8FieldRefD2Ev.exit

_ZN5arrow8FieldRefD2Ev.exit:                      ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS3_8FieldRefESaISC_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS4_SA_SE_EEEEDcOT0_DpOT1_.exit.i, %bb.j
  %i.at = load ptr, ptr %19, align 8, !tbaa !130  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit
  %i.av = load i64, ptr %i.f, align 8, !tbaa !117
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5arrow8FieldRefD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = load ptr, ptr %17, align 8, !tbaa !100
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.y, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m:bb.a
bb.v:                                             ; preds = %_ZN5arrow8FieldRefC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %_ZN5arrow8FieldRefD2Ev.exit26 unwind label %bb.w, !inline_history !345

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #27, !inline_history !345
  unreachable

_ZN5arrow8FieldRefD2Ev.exit26:                    ; preds = %bb.v
  %i.bj = load ptr, ptr %19, align 8, !tbaa !130  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.f
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !117
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.x:                                             ; preds = %bb.r, %bb.q
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.de

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.br = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !93, !noalias !1269
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !94, !noalias !1269 ; 3 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !90, !noalias !1269
  store <2 x ptr> %i.br, ptr %22, align 16, !tbaa !93, !alias.scope !1269
  store ptr null, ptr %i.bo, align 8, !tbaa !94, !noalias !1269
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !356, !noalias !1272 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !357, !noalias !1272
  %.not.i30 = icmp eq i32 %i.bw, 25
  br i1 %.not.i30, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !1272
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25, !noalias !1272
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !38
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %i.bu, i1 noundef zeroext false)
          to label %.noexc32 unwind label %bb.ch, !inline_history !1275

.noexc32:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !1276
  invoke void @_ZN5arrow8internal12JoinToStringIJRA28_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 1 dereferenceable(28) @.str.71, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc.i unwind label %bb.ae

.noexc.i:                                         ; preds = %.noexc32
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc.i
  %i.ca = load ptr, ptr %8, align 8, !tbaa !130, !noalias !1276 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !117, !noalias !1276
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %8, align 8, !tbaa !130, !noalias !1276 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !117, !noalias !1276
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1276
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !1276
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  %i.cl = load ptr, ptr %9, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i31, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ac, !prof !103

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !104, !range !113, !noundef !114
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = load ptr, ptr %10, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !117, !noalias !1272
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !1272
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.ae:                                            ; preds = %.noexc32
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ]
  %i.cv = load ptr, ptr %10, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i: ; preds = %.body.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !117, !noalias !1272
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !1272
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.db = load i8, ptr %i.da, align 8, !tbaa !159, !range !113, !noalias !1272, !noundef !114
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25, !noalias !1272
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.56)
          to label %.noexc33 unwind label %bb.ch

.noexc33:                                         ; preds = %bb.ag
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %11) #25
  %i.dd = load ptr, ptr %11, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %.not.i41.i = icmp eq ptr %i.dd, null
  br i1 %.not.i41.i, label %_ZN5arrow6StatusD2Ev.exit42.i, label %bb.ah, !prof !103

bb.ah:                                            ; preds = %.noexc33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !104, !range !113, !noundef !114
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit42.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #25
  br label %_ZN5arrow6StatusD2Ev.exit42.i

_ZN5arrow6StatusD2Ev.exit42.i:                    ; preds = %bb.ai, %bb.ah, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25, !noalias !1272
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25, !noalias !1272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !1272
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !935, !noalias !1272 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !964
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !967
  %.not334.i = icmp sgt i64 %i.dm, 0
  br i1 %.not334.i, label %.lr.ph.i, label %.critedge37.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 10 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dz = load ptr, ptr %i.dh, align 8, !tbaa !935, !noalias !1272 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !964
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !967
  %.not33.i = icmp sgt i64 %i.ed, %indvars.iv.next.i
  br i1 %.not33.i, label %bb.al, label %.critedge37.loopexit.i, !llvm.loop !1281

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 2 uses
  %i.ee = phi ptr [ %i.di, %.lr.ph.i ], [ %i.dz, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25, !noalias !1272
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.138") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i64 noundef %indvars.iv.i)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr %13, align 8, !tbaa !100, !noalias !1272
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ao, label %.critedge.i, !prof !103

.critedge.i:                                      ; preds = %bb.am
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %13) #25
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1272
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.al
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25, !noalias !1272
  call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %26 = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !93, !noalias !1288 ; 3 uses
  %27 = extractelement <2 x ptr> %26, i64 1       ; 8 uses
  store ptr null, ptr %i.do, align 8, !tbaa !90, !noalias !1288
  store <2 x ptr> %26, ptr %14, align 16, !tbaa !93, !alias.scope !1289, !noalias !1272
  store ptr null, ptr %i.dn, align 8, !tbaa !94, !noalias !1288
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25, !noalias !1272
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  %28 = extractelement <2 x ptr> %26, i64 0       ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !356, !noalias !1290 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !357, !noalias !1290
  switch i32 %i.el, label %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i [
    i32 14, label %bb.au
    i32 35, label %bb.au
    i32 13, label %bb.au
    i32 34, label %bb.au
  ]

_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1293
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !1293
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !38, !noalias !1290
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !1290
  invoke void %i.eo(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.ej, i1 noundef zeroext false)
          to label %.noexc43.i unwind label %bb.bb, !inline_history !1294

.noexc43.i:                                       ; preds = %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1295
  invoke void @_ZN5arrow8internal12JoinToStringIJRA35_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(35) @.str.75, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i.i unwind label %bb.at, !noalias !1290

.noexc.i.i:                                       ; preds = %.noexc43.i
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ap unwind label %bb.aq, !noalias !1290

bb.ap:                                            ; preds = %.noexc.i.i
  %i.ep = load ptr, ptr %3, align 8, !tbaa !130, !noalias !1295 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.dt
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ap
  %i.er = load i64, ptr %i.dt, align 8, !tbaa !117, !noalias !1295
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #26, !noalias !1290
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.aq:                                            ; preds = %.noexc.i.i
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = load ptr, ptr %3, align 8, !tbaa !130, !noalias !1295 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.dt
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i: ; preds = %bb.aq
  %i.ew = load i64, ptr %i.dt, align 8, !tbaa !117, !noalias !1295
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #26, !noalias !1290
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1295
  br label %.body.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1295
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.ey = load ptr, ptr %4, align 8, !tbaa !100, !noalias !1293 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.ar, !prof !103

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !104, !range !113, !noundef !114
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.as, %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.fc = load ptr, ptr %5, align 8, !tbaa !130, !noalias !1293 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.du
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.fe = load i64, ptr %i.du, align 8, !tbaa !117, !noalias !1293
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1293
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i

bb.at:                                            ; preds = %.noexc43.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.fg, %bb.at ], [ %i.et, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i.i ]
  %i.fh = load ptr, ptr %5, align 8, !tbaa !130, !noalias !1293 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.du
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %.body.i.i
  %i.fj = load i64, ptr %i.du, align 8, !tbaa !117, !noalias !1293
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #26, !noalias !1290
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %.body.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1293
  br label %.body44.i

bb.au:                                            ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %i.fl = getelementptr inbounds nuw i8, ptr %28, i64 40
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !159, !range !113, !noalias !1290, !noundef !114
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !1293
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.56)
          to label %.noexc46.i unwind label %bb.bb

.noexc46.i:                                       ; preds = %bb.av
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.fo = load ptr, ptr %6, align 8, !tbaa !100, !noalias !1293 ; 2 uses
  %.not.i9.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i9.i.i, label %_ZN5arrow6StatusD2Ev.exit10.i.i, label %bb.aw, !prof !103

bb.aw:                                            ; preds = %.noexc46.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !104, !range !113, !noundef !114
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %_ZN5arrow6StatusD2Ev.exit10.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit10.i.i

_ZN5arrow6StatusD2Ev.exit10.i.i:                  ; preds = %bb.ax, %bb.aw, %.noexc46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !1293
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i

bb.ay:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !1293
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !1256, !noalias !1290
  invoke void @_ZNK5arrow6Buffer8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.ft)
          to label %.noexc47.i unwind label %bb.bb

.noexc47.i:                                       ; preds = %bb.ay
  store ptr null, ptr %15, align 8, !tbaa !100, !alias.scope !1290, !noalias !1272
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !115, !alias.scope !1290, !noalias !1272
  %i.fu = load ptr, ptr %7, align 8, !tbaa !130, !noalias !1293 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.dr
  br i1 %i.fv, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i

bb.az:                                            ; preds = %.noexc47.i
  %i.fw = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !116, !noalias !1293 ; 3 uses
  %i.fx = icmp ult i64 %i.fw, 16
  call void @llvm.assume(i1 %i.fx)
  %i.fy = add nuw nsw i64 %i.fw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dq, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.fy, i1 false), !noalias !1272
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i: ; preds = %.noexc47.i
  store ptr %i.fu, ptr %i.dp, align 8, !tbaa !130, !alias.scope !1290, !noalias !1272
  %i.fz = load i64, ptr %i.dr, align 8, !tbaa !117, !noalias !1293
  store i64 %i.fz, ptr %i.dq, align 8, !tbaa !117, !alias.scope !1290, !noalias !1272
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !116, !noalias !1293
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i, %bb.az
  %i.ga = phi i64 [ %i.fw, %bb.az ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i11.i.i ]
  store i64 %i.ga, ptr %i.ds, align 8, !tbaa !116, !alias.scope !1290, !noalias !1272
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !1293
  br label %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i

_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZN5arrow6StatusD2Ev.exit10.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.gb = load ptr, ptr %15, align 8, !tbaa !100, !noalias !1272
  %i.gc = icmp eq ptr %i.gb, null                 ; 2 uses
  br i1 %i.gc, label %bb.bc, label %bb.ba, !prof !103

bb.ba:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i
  call void @_ZN5arrow6ResultISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %15) #25
  br label %bb.bi

bb.bb:                                            ; preds = %bb.ay, %bb.av, %_ZN5arrow19is_base_binary_likeENS_4Type4typeE.exit.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body44.i

bb.bc:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXsr3std7is_sameIT_S8_EE5valueENS_6ResultISA_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25, !noalias !1272
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  store ptr %i.dv, ptr %16, align 8, !tbaa !115, !alias.scope !1306, !noalias !1272
  %i.ge = load ptr, ptr %i.dp, align 8, !tbaa !130, !noalias !1307 ; 2 uses
  %i.gf = icmp eq ptr %i.ge, %i.dq
  br i1 %i.gf, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i

bb.bd:                                            ; preds = %bb.bc
  %i.gg = load i64, ptr %i.ds, align 8, !tbaa !116, !noalias !1307 ; 3 uses
  %i.gh = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gh)
  %i.gi = add nuw nsw i64 %i.gg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.dq, i64 %i.gi, i1 false), !noalias !1272
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i: ; preds = %bb.bc
  store ptr %i.ge, ptr %16, align 8, !tbaa !130, !alias.scope !1306, !noalias !1272
  %i.gj = load i64, ptr %i.dq, align 8, !tbaa !117, !noalias !1307
  store i64 %i.gj, ptr %i.dv, align 8, !tbaa !117, !alias.scope !1306, !noalias !1272
  %.pre.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !116, !noalias !1307
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i, %bb.bd
  %i.gk = phi i64 [ %i.gg, %bb.bd ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48.i ] ; 4 uses
  store i64 %i.gk, ptr %i.dw, align 8, !tbaa !116, !alias.scope !1306, !noalias !1272
  store ptr %i.dq, ptr %i.dp, align 8, !tbaa !130, !noalias !1307
  store i64 0, ptr %i.ds, align 8, !tbaa !116, !noalias !1307
  store i8 0, ptr %i.dq, align 8, !tbaa !117, !noalias !1307
  %i.gl = load ptr, ptr %i.dx, align 8, !tbaa !135, !noalias !1272 ; 7 uses
  %i.gm = load ptr, ptr %i.dy, align 16, !tbaa !82, !noalias !1272
  %.not.i.i49.i = icmp eq ptr %i.gl, %i.gm
  br i1 %.not.i.i49.i, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 3 uses
  store ptr %i.gn, ptr %i.gl, align 8, !tbaa !115
  %i.go = load ptr, ptr %16, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.dv
  br i1 %i.gp, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i

bb.bg:                                            ; preds = %bb.bf
  %i.gq = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gq)
  %i.gr = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gn, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.gr, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i: ; preds = %bb.bf
  store ptr %i.go, ptr %i.gl, align 8, !tbaa !130
  %i.gs = load i64, ptr %i.dv, align 8, !tbaa !117, !noalias !1272
  store i64 %i.gs, ptr %i.gn, align 8, !tbaa !117
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50.i, %bb.bg
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store i64 %i.gk, ptr %i.gt, align 8, !tbaa !116
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store ptr %i.gu, ptr %i.dx, align 8, !tbaa !135, !noalias !1272
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

bb.bh:                                            ; preds = %bb.be
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i unwind label %bb.bz

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.bh
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.gv = icmp eq ptr %.pre.i, %i.dv
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i
  %i.gw = load i64, ptr %i.dv, align 8, !tbaa !117, !noalias !1272
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.gx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1272
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i, %bb.ba
  %i.gy = load ptr, ptr %15, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.bj, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !103

bb.bj:                                            ; preds = %bb.bi
  %i.ha = load ptr, ptr %i.dp, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.dq
  br i1 %i.hb, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i: ; preds = %bb.bj
  %i.hc = load i64, ptr %i.dq, align 8, !tbaa !117, !noalias !1272
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #26
  %.pr.pre.i.i = load ptr, ptr %15, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %.not.i.i56.i = icmp eq ptr %.pr.pre.i.i, null
  br i1 %.not.i.i56.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i, %bb.bi
  %i.he = phi ptr [ %.pr.pre.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i ], [ %i.gy, %bb.bi ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !104, !range !113, !noundef !114
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %15) #25
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i: ; preds = %bb.bj, %bb.bk, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !1272
  %.not.i.i57.i = icmp eq ptr %27, null
  br i1 %.not.i.i57.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  %i.hi = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.hi, align 8, !tbaa !138
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !140
  %i.hn = load ptr, ptr %27, align 8, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %27) #25, !inline_history !1308
  %i.hq = load ptr, ptr %27, align 8, !tbaa !38
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %27) #25, !inline_history !1308
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bn:                                            ; preds = %bb.bl
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !1272
  %.not.i.i.i.i = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i = phi i32 [ %i.hl, %bb.bo ], [ %i.hv, %bb.bp ]
  %i.hw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.hw, label %bb.bq, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !131

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %27) #25
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bm, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !1272
  %i.hx = load ptr, ptr %13, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.br, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !103

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.hz = load ptr, ptr %i.do, align 8, !tbaa !90, !noalias !1272 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8 ; 4 uses
  %i.ib = load atomic i64, ptr %i.ia acquire, align 8 ; 2 uses
  %i.ic = icmp eq i64 %i.ib, 4294967297
  %i.id = trunc i64 %i.ib to i32                  ; 2 uses
  br i1 %i.ic, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.ia, align 8, !tbaa !138
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  store i32 0, ptr %i.ie, align 4, !tbaa !140
  %i.if = load ptr, ptr %i.hz, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25, !inline_history !1309
  %i.ii = load ptr, ptr %i.hz, align 8, !tbaa !38
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25, !inline_history !1309
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.il = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117, !noalias !1272
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.im = add nsw i32 %i.id, -1
  store i32 %i.im, ptr %i.ia, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.in = atomicrmw volatile add ptr %i.ia, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.id, %bb.bv ], [ %i.in, %bb.bw ]
  %i.io = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.io, label %bb.bx, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, !prof !131

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hz) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bt
  %.pr.i.pr.i = load ptr, ptr %13, align 8, !tbaa !100, !noalias !1272 ; 2 uses
  %.not.i.i59.i = icmp eq ptr %.pr.i.pr.i, null
  br i1 %.not.i.i59.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !270

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ip = phi ptr [ %.pr.i.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i ], [ %i.hx, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !104, !range !113, !noundef !114
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.by

bb.by:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %13) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i: ; preds = %bb.by, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1272
  br i1 %i.gc, label %bb.ak, label %.loopexit.i

bb.bz:                                            ; preds = %bb.bh
  %i.it = landingpad { ptr, i32 }
          cleanup
  %i.iu = load ptr, ptr %16, align 8, !tbaa !130, !noalias !1272 ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.dv
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %bb.bz
  %i.iw = load i64, ptr %i.dv, align 8, !tbaa !117, !noalias !1272
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25, !noalias !1272
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25, !noalias !1272
  br label %.body44.i

.body44.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i, %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.it, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i ], [ %i.gd, %bb.bb ], [ %eh.lpad-body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25, !noalias !1272
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25, !noalias !1272
  br label %bb.ca

bb.ca:                                            ; preds = %.body44.i, %bb.an
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %.body44.i ], [ %i.eh, %bb.an ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1272
  br label %.body

.critedge37.loopexit.i:                           ; preds = %bb.ak
  %i.iy = load <2 x ptr>, ptr %12, align 16, !tbaa !80, !noalias !1272
  %.pre10.i = load ptr, ptr %i.dy, align 16, !tbaa !82, !noalias !1272
  br label %.critedge37.i

.critedge37.i:                                    ; preds = %.critedge37.loopexit.i, %bb.aj
  %i.iz = phi ptr [ %.pre10.i, %.critedge37.loopexit.i ], [ null, %bb.aj ]
  %i.ja = phi <2 x ptr> [ %i.iy, %.critedge37.loopexit.i ], [ splat (ptr null), %bb.aj ]
  store ptr null, ptr %23, align 8, !tbaa !100, !alias.scope !1272
  %i.jb = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x ptr> %i.ja, ptr %i.jb, align 8, !tbaa !80, !alias.scope !1272
  %i.jc = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !82, !alias.scope !1272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !1272
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, %.critedge37.i, %.critedge.i
  %i.jd = load ptr, ptr %12, align 16, !tbaa !134, !noalias !1272 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !135, !noalias !1272 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.jd, %i.jf
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.jl, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.jd, %.loopexit.i ] ; 3 uses
  %i.jg = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ji = icmp eq ptr %i.jg, %i.jh
  br i1 %i.ji, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !117
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jk) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i63.i = icmp eq ptr %i.jl, %i.jf
  br i1 %.not.i.i.i63.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i64.i = load ptr, ptr %12, align 16, !tbaa !134, !noalias !1272
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit.i
  %i.jm = phi ptr [ %.pr.i64.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.jd, %.loopexit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jo = load ptr, ptr %i.jn, align 16, !tbaa !82, !noalias !1272
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.jm to i64
  %i.jr = sub i64 %i.jp, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.jr) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.cb, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25, !noalias !1272
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit42.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.js = load ptr, ptr %23, align 8, !tbaa !100
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.cj, label %bb.cc

bb.cc:                                            ; preds = %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultISE_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %.sroa.0.0.copyload.i34 = load i64, ptr %1, align 8, !tbaa !215
  %.sroa.2.0.copyload.i36 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !216
  store i64 %.sroa.0.0.copyload.i34, ptr %25, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.2.0.copyload.i36, ptr %i.ju, align 8
  %i.jv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 1 dereferenceable(26) @.str.53, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(18) @.str.50, ptr noundef nonnull align 1 dereferenceable(18) @_ZN5arrow7compute17PivotWiderOptions9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(3) @.str.51, ptr noundef nonnull align 8 dereferenceable(32) %i.jv)
          to label %bb.ce unwind label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i39, label %_ZN5arrow6StatusD2Ev.exit42, label %bb.cf, !prof !103

bb.cf:                                            ; preds = %bb.ce
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
end_hunk_1
