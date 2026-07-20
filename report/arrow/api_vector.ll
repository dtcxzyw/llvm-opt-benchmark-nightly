inline.NumInlined: 7609
inline.NumDeleted: 3292
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %4) #27
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(20) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !474, !nonnull !121, !align !373
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #27
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !474, !nonnull !121, !align !373
  %i.q = load ptr, ptr %6, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !139
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16ArraySortOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.429", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !712
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !714  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !716
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !716
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !717  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !719
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !719
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !720 ; 5 uses
  invoke void @_ZN5arrow7compute16ArraySortOptionsC1ENS0_9SortOrderENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !720

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25, !noalias !720
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !714  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !716
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !716
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !717  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !719
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i32 %i.k, ptr %i.l, align 4, !tbaa !719
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPSL_ISt10shared_ptrINS_6ScalarEESaISX_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.444", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !712
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !723
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !725
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !726
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.462", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24, !noalias !729 ; 8 uses
  invoke void @_ZN5arrow7compute16ArraySortOptionsC1ENS0_9SortOrderENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !729

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25, !noalias !729
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !732
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !348
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !127

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !128, !range !120, !noundef !121
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !127

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.n = load ptr, ptr %3, align 8, !tbaa !124    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !127

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !128, !range !120, !noundef !121
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27, !inline_history !734
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !350
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27, !inline_history !734
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_13NullPlacementEiEENS_6ResultIT_EET0_:.critedge
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !138
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !138
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11SortOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.497", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !833
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !835  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, %i.p
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.q = icmp eq ptr %i.f, %i.g
  br i1 %i.q, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = add nuw i64 %.01012.i.i.i.i.i.i, 1       ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.r, %i.x
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit, !llvm.loop !837

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.g, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.01012.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01012.i.i.i.i.i.i
  %i.ac = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 8 dereferenceable(44) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !838 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !719
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !719
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ai = and i1 %.1.i.i.i.i.i.i, %i.ah
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.508", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !840 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !840
  invoke void @_ZN5arrow7compute11SortOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !840

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !840 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !840 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !840, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !840, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !840
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !840
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25, !noalias !840
  br label %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.x, %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27, !noalias !840
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !840
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8, !tbaa !843
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !833
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !843
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !845, !nonnull !121, !align !373
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !838  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !719
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !719
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #27, !inline_history !846
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPS6_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.512", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !833
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !847
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !849
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !850
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.594", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !853 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !853
  invoke void @_ZN5arrow7compute11SortOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !853

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !853 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !853 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !853, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !853, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !853
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !139, !alias.scope !1190, !noalias !1187
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24, %bb.p
  %i.cm = phi i64 [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24 ], [ %i.ci, %bb.p ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !139, !alias.scope !1187, !noalias !1190
  store ptr %i.cf, ptr %.0913.i.i.i19, align 8, !tbaa !137, !alias.scope !1190, !noalias !1187
  store i64 0, ptr %i.cn, align 8, !tbaa !139, !alias.scope !1190, !noalias !1187
  store i8 0, ptr %i.cf, align 8, !tbaa !138, !alias.scope !1190, !noalias !1187
  br label %_ZSt12construct_atIN5arrow7compute7SortKeyEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i20

bb.q:                                             ; preds = %.lr.ph.i.i.i17
  %i.cp = load <2 x ptr>, ptr %.0913.i.i.i19, align 8, !tbaa !297, !alias.scope !1190, !noalias !1187
  store <2 x ptr> %i.cp, ptr %.014.i.i.i18, align 8, !tbaa !297, !alias.scope !1187, !noalias !1190
  %i.cq = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !215, !alias.scope !1190, !noalias !1187
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !215, !alias.scope !1187, !noalias !1190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.0913.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !1190, !noalias !1187
  br label %_ZSt12construct_atIN5arrow7compute7SortKeyEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i20

bb.r:                                             ; preds = %.lr.ph.i.i.i17
  unreachable

_ZSt12construct_atIN5arrow7compute7SortKeyEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i20: ; preds = %bb.q, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i27, %bb.n, %.lr.ph.i.i.i17
  store i8 %i.by, ptr %i.bw, align 8, !tbaa !192, !alias.scope !1187, !noalias !1190
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !194, !alias.scope !1190, !noalias !1187
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !194, !alias.scope !1187, !noalias !1190
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.0913.i.i.i19)
          to label %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 unwind label %bb.s, !inline_history !75

bb.s:                                             ; preds = %_ZSt12construct_atIN5arrow7compute7SortKeyEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i20
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #26, !inline_history !75
  unreachable

_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %_ZSt12construct_atIN5arrow7compute7SortKeyEJS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS4_DpOS5_.exit.i.i.i.i20
  %i.cy = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 48 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cy, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !1186

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bv, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cz, %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !63
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dd) #25
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28, %bb.t
  store ptr %i.p, ptr %0, align 8, !tbaa !71
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.de, ptr %i.da, align 8, !tbaa !63
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19PartitionNthOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.640", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1193
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1195 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !357
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !357
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1197 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !719
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !719
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !1199 ; 7 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kPartitionNthOptionsTypeE, align 8, !tbaa !33, !noalias !1199
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36, !noalias !1199
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19PartitionNthOptionsE, i64 16), ptr %i.a, align 8, !tbaa !38, !noalias !1199
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !78, !noalias !1199
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !80, !noalias !1199
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1195 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !357
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i64 %i.i, ptr %i.j, align 8, !tbaa !357
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1197 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !719
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  store i32 %i.n, ptr %i.o, align 4, !tbaa !719
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.654", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1193
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1202
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1204
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1205
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.668", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !1208 ; 10 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kPartitionNthOptionsTypeE, align 8, !tbaa !33, !noalias !1208
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36, !noalias !1208
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19PartitionNthOptionsE, i64 16), ptr %i.a, align 8, !tbaa !38, !noalias !1208
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !78, !noalias !1208
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !80, !noalias !1208
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !1211
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !348
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !128, !range !120, !noundef !121
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !124  ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.e, !prof !127

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.q = load ptr, ptr %3, align 8, !tbaa !124    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i17, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !128, !range !120, !noundef !121
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i17, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #27, !inline_history !1213
  resume { ptr, i32 } %i.j

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = ptrtoint ptr %i.a to i64
  store i64 %i.y, ptr %i.x, align 8, !tbaa !350
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i17: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #27, !inline_history !1213
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.72)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !137    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !138
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !138
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.m = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !138
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16WinsorizeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.680", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1290
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_dEES9_EEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_dEES9_EEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_dEES9_EEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_dEES9_EEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESH_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1292 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load double, ptr %i.c, align 8, !tbaa !95
  %.val3.i.i.i.i.i = load double, ptr %i.d, align 8, !tbaa !95
  %i.e = fcmp oeq double %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1292 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load double, ptr %i.h, align 8, !tbaa !95
  %.val3.i5.i.i.i.i = load double, ptr %i.i, align 8, !tbaa !95
  %i.j = fcmp oeq double %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !1294 ; 6 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121kWinsorizeOptionsTypeE, align 8, !tbaa !33, !noalias !1294
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36, !noalias !1294
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute16WinsorizeOptionsE, i64 16), ptr %i.a, align 8, !tbaa !38, !noalias !1294
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 8, !tbaa !95, !noalias !1294
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1292 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !95
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store double %i.h, ptr %i.i, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1292 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !95
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  store double %i.m, ptr %i.n, align 8, !tbaa !95
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EEPSI_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.694", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1290
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1297
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1299
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1300
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16WinsorizeOptionsEJNS_8internal18DataMemberPropertyIS3_dEES6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.703", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !1303 ; 9 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_121kWinsorizeOptionsTypeE, align 8, !tbaa !33, !noalias !1303
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !36, !noalias !1303
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute16WinsorizeOptionsE, i64 16), ptr %i.a, align 8, !tbaa !38, !noalias !1303
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.d, align 8, !tbaa !95, !noalias !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !1306
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.e, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.f, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEEclINS_8internal18DataMemberPropertyIS3_dEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !128, !range !120, !noundef !121
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread, label %bb.e, !prof !127

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.p = load ptr, ptr %3, align 8, !tbaa !124    ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16WinsorizeOptionsEEclEPS2_.exit.i17, label %bb.f, !prof !127

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !128, !range !120, !noundef !121
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNKSt14default_deleteIN5arrow7compute16WinsorizeOptionsEEclEPS2_.exit.i17, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZNKSt14default_deleteIN5arrow7compute16WinsorizeOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !1308
  resume { ptr, i32 } %i.i

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16WinsorizeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !124
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = ptrtoint ptr %i.a to i64
  store i64 %i.x, ptr %i.w, align 8, !tbaa !350
  br label %_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute16WinsorizeOptionsEEclEPS2_.exit.i17: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27, !inline_history !1308
  br label %_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute16WinsorizeOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute16WinsorizeOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_16WinsorizeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.72)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.71, i64 noundef 1)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 13 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !156, !alias.scope !1309
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !137  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
end_hunk_3
begin_hunk_4_@_ZN5arrow6ResultIdEC2ERKNS_6StatusE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !137    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !138
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.m = load ptr, ptr %3, align 8, !tbaa !137    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !138
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #26
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute14SelectKOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.715", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1365
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1367 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !357
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !357
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1369 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, %i.u
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.v = icmp eq ptr %i.k, %i.l
  br i1 %i.v, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = add nuw i64 %.01012.i.i.i.i.i.i, 1       ; 2 uses
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !71   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.w, %i.ac
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i, !llvm.loop !837

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.ad = phi ptr [ %i.y, %bb.b ], [ %i.l, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.w, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.01012.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.01012.i.i.i.i.i.i
  %i.ah = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.ae, ptr noundef nonnull align 8 dereferenceable(44) %i.ag) ; 2 uses
  br i1 %i.ah, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.b
  %3 = and i1 %i.e, %i.ah
  br label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.a, %.preheader.i.i.i.i.i.i, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ %i.e, %.preheader.i.i.i.i.i.i ], [ %3, %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m.exit.loopexit.i.i.i.i ]
  ret i1 %.1.i.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.726", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1371 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1371
  invoke void @_ZN5arrow7compute14SelectKOptionsC1ElSt6vectorINS0_7SortKeyESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.e, !noalias !1371

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1371 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1371 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1371, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1371, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1371
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !1371
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25, !noalias !1371
  br label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.v, %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27, !noalias !1371
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1371
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1374
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !1365
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1367 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !357
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i64 %i.t, ptr %i.u, align 8, !tbaa !357
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !1376
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPS7_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.729", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1365
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1377
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1379
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1380
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.736", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1383 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1383
  invoke void @_ZN5arrow7compute14SelectKOptionsC1ElSt6vectorINS0_7SortKeyESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.e, !noalias !1383

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1383 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1383 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1383, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1383, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1383
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !1383
  %i.k = ptrtoint ptr %i.j to i64
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !474, !nonnull !121, !align !373
  %i.q = load ptr, ptr %6, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !139
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute17CumulativeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.750", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1437
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1439 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val3.i.i.i.i.i = load i8, ptr %i.e, align 8, !tbaa !87, !range !120, !noundef !121 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val5.i.i.i.i.i = load i8, ptr %i.f, align 8, !tbaa !87, !range !120, !noundef !121
  %i.g = trunc nuw i8 %.val3.i.i.i.i.i to i1
  %i.h = icmp eq i8 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.h, %i.g
  %i.i = icmp eq ptr %.val.i.i.i.i.i, %.val4.i.i.i.i.i
  %i.j = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.i, i1 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1441 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !519, !range !120, !noundef !121
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !519, !range !120, !noundef !121
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.j, %i.o
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.761", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1443 ; 6 uses
  invoke void @_ZN5arrow7compute17CumulativeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1443

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1443
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1446
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1437
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !1446
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1448, !nonnull !121, !align !373
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1441 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !519, !range !120, !noundef !121
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i8 %i.j, ptr %i.k, align 1, !tbaa !519
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #27, !inline_history !1449
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EEPSO_IS9_SaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.764", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1437
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1450
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1452
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1453
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.780", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1456 ; 8 uses
  invoke void @_ZN5arrow7compute17CumulativeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1456

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1456
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.a, ptr %4, align 8, !tbaa !1459
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !348
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !127

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !128, !range !120, !noundef !121
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #27
  br label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !127

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  %i.n = load ptr, ptr %3, align 8, !tbaa !124    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !127

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !128, !range !120, !noundef !121
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #27, !inline_history !1449
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr null, ptr %0, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !350
  br label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_:bb.a

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E2_clISA_EEDaSN_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E1_clISA_EEDaSN_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E0_clISC_EEDaSN_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_ENKUlOT_E_clISI_EEDaSN_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11RankOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.800", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1564
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !318
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !321
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !156
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !139
  store i8 0, ptr %i.f, align 8, !tbaa !138
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !156
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !139
  store i8 0, ptr %i.i, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !156
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !139
  store i8 0, ptr %i.l, align 8, !tbaa !138
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !322
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10TiebreakerEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !318  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !138
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !321
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1566 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, %i.p
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.q = icmp eq ptr %i.f, %i.g
  br i1 %i.q, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = add nuw i64 %.01012.i.i.i.i.i.i, 1       ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.r, %i.x
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit, !llvm.loop !837

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.g, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.01012.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01012.i.i.i.i.i.i
  %i.ac = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 8 dereferenceable(44) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1568 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !719
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !719
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1570 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %.val.i6.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !1572
  %.val3.i7.i.i.i.i = load i32, ptr %i.al, align 4, !tbaa !1572
  %i.am = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.an = and i1 %3, %i.am
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.812", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1573 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1573
  invoke void @_ZN5arrow7compute11RankOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementENS1_10TiebreakerE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2)
          to label %bb.b unwind label %bb.e, !noalias !1573

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1573 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1573 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1573, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1573, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1573
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !1573
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25, !noalias !1573
  br label %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ac, %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27, !noalias !1573
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1573
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8, !tbaa !1576
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !1564
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !1576   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1578, !nonnull !121, !align !373 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1568 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !719
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !719
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1570 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1572
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !1572
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !1579
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPS6_ISt10shared_ptrINS_6ScalarEESaIS11_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.815", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1564
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1580
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1582
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10TiebreakerEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !128, !range !120, !noundef !121
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1583
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.816", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1586 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1586
  invoke void @_ZN5arrow7compute11RankOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementENS1_10TiebreakerE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2)
          to label %bb.b unwind label %bb.e, !noalias !1586

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1586 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1586 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1586, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1586, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_11RankOptions10TiebreakerEjEENS_6ResultIT_EET0_:.critedge
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !138
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !137    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !138
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19RankQuantileOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.830", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1681
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19RankQuantileOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1683 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !71   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, %i.p
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.q = icmp eq ptr %i.f, %i.g
  br i1 %i.q, label %_ZN5arrow7compute8internal11CompareImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = add nuw i64 %.01012.i.i.i.i.i.i, 1       ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.r, %i.x
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit, !llvm.loop !837

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.g, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.01012.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01012.i.i.i.i.i.i
  %i.ac = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 8 dereferenceable(44) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19RankQuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1685 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !719
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !719
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ai = and i1 %.1.i.i.i.i.i.i, %i.ah
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.841", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1687 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1687
  invoke void @_ZN5arrow7compute19RankQuantileOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !1687

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1687 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1687 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1687, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1687, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1687
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute19RankQuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !63, !noalias !1687
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25, !noalias !1687
  br label %_ZSt11make_uniqueIN5arrow7compute19RankQuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.x, %_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27, !noalias !1687
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1687
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19RankQuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8, !tbaa !1690
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !1681
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19RankQuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !1690
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1692, !nonnull !121, !align !373
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1685 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !719
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !719
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute19RankQuantileOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19RankQuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #27, !inline_history !1693
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPS6_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.844", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1681
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1694
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1696
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_13NullPlacementEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1697
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19RankQuantileOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19RankQuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.845", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1700 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1700
  invoke void @_ZN5arrow7compute19RankQuantileOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !1700

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1700 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !noalias !1700 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1700, !inline_history !75

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26, !noalias !1700, !inline_history !75
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !76

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71, !noalias !1700
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !474, !nonnull !121, !align !373
  %i.q = load ptr, ptr %6, align 8, !tbaa !137
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !139
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute25InversePermutationOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.919", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %2, ptr %3, align 8, !tbaa !1858
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !318
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !156
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !139
  store i8 0, ptr %i.e, align 8, !tbaa !138
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !139
  store i8 0, ptr %i.h, align 8, !tbaa !138
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !322
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #27
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !318  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !138
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !323

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !318
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #25
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_25InversePermutationOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1860 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !357
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !357
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1862 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i4.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val3.i5.i.i.i.i = load i8, ptr %i.j, align 8, !tbaa !119, !range !120, !noundef !121 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val5.i.i.i.i.i = load i8, ptr %i.k, align 8, !tbaa !119, !range !120, !noundef !121
  %i.l = trunc nuw i8 %.val3.i5.i.i.i.i to i1
  %i.m = icmp eq i8 %.val3.i5.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  %i.n = icmp eq ptr %.val.i4.i.i.i.i, %.val4.i.i.i.i.i
  %i.o = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.n, i1 %i.m
  %3 = and i1 %i.e, %i.o
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.202") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.41", align 8  ; 6 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.930", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1864 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !119, !noalias !1864
  invoke void @_ZN5arrow7compute25InversePermutationOptionsC1ElSt8optionalISt10shared_ptrINS_8DataTypeEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.j, !noalias !1864

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !119, !range !120, !noalias !1864, !noundef !121
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !119, !noalias !1864
  br i1 %i.d, label %bb.c, label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1864 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8, !noalias !1864 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !157, !noalias !1864
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !159, !noalias !1864
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !38, !noalias !1864
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1864
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !noalias !1864, !inline_history !1867
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !38, !noalias !1864
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !noalias !1864
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !noalias !1864, !inline_history !1867
  br label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !138, !noalias !1864
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3, !noalias !1864
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4, !noalias !1864
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.g ], [ %i.t, %bb.h ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.i, label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, !prof !72

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #27, !noalias !1864
  br label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.j ], [ %i.ad, %_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt10shared_ptrIN5arrow8DataTypeEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27, !noalias !1864
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #25, !noalias !1864
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1868
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.x, align 8, !tbaa !1858
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !1860 ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !357
  %i.ac = getelementptr inbounds i8, ptr %i.a, i64 %i.z
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !357
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_25InversePermutationOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !331
  ret void

_ZNSt10unique_ptrIN5arrow7compute25InversePermutationOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #27, !inline_history !1870
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EEPSO_IS8_INS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.933", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %2, ptr %5, align 8, !tbaa !1858
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1871
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1873
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !127

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !128, !range !120, !noundef !121
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !124, !alias.scope !1874
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_25InversePermutationOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_25InversePermutationOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalISt10shared_ptrINS_8DataTypeEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.198") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.41", align 8  ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.940", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1877 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !119, !noalias !1877
  invoke void @_ZN5arrow7compute25InversePermutationOptionsC1ElSt8optionalISt10shared_ptrINS_8DataTypeEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.j, !noalias !1877

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 8, !tbaa !119, !range !120, !noalias !1877, !noundef !121
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !119, !noalias !1877
  br i1 %i.d, label %bb.c, label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1877 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN5arrow7compute25InversePermutationOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8, !noalias !1877 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.g, align 8, !tbaa !157, !noalias !1877
end_hunk_8
