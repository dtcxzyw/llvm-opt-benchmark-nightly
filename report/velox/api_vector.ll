inline.NumInlined: 6494
inline.NumDeleted: 2802
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev:bb.a
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread, !prof !109

_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEE7DestroyEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(20) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436, !nonnull !231, !align !334 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !89
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !319
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %4) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #26
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16ArraySortOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.352", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !697
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !93
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS0_9SortOrderEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !699  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !701
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !701
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !702  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !704
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !704
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !705 ; 5 uses
  invoke void @_ZN5arrow7compute16ArraySortOptionsC1ENS0_9SortOrderENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !705

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #24, !noalias !705
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !699  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !701
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !701
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !702  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !704
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i32 %i.k, ptr %i.l, align 4, !tbaa !704
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPSL_ISt10shared_ptrINS_6ScalarEESaISX_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.367", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !697
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !708
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !710
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !711 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !82, !alias.scope !711
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !714
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ArraySortOptionsEJNS_8internal18DataMemberPropertyIS3_NS0_9SortOrderEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.379", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !717 ; 8 uses
  invoke void @_ZN5arrow7compute16ArraySortOptionsC1ENS0_9SortOrderENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !717

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #24, !noalias !717
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16ArraySortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !720
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !307
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !82, !noalias !722 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !82, !alias.scope !722
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !85

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.k = load ptr, ptr %3, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26, !inline_history !725
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ArraySortOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr null, ptr %0, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !312
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26, !inline_history !725
  br label %_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute16ArraySortOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute16ArraySortOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_16ArraySortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.60)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !86, !alias.scope !726
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_13NullPlacementEiEENS_6ResultIT_EET0_:.critedge
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.t = load i64, ptr %i.b, align 8, !tbaa !92
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.w = load ptr, ptr %4, align 8, !tbaa !90     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.b
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.y = load i64, ptr %i.b, align 8, !tbaa !92
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11SortOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.404", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !824
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !93
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11SortOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !826  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !45
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
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.r, %i.x
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit, !llvm.loop !828

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.g, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.01012.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01012.i.i.i.i.i.i
  %i.ac = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 8 dereferenceable(44) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11SortOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !829 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !704
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !704
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ai = and i1 %.1.i.i.i.i.i.i, %i.ah
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.415", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !831 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !831
  invoke void @_ZN5arrow7compute11SortOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !831

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !831 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !831 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !831, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !831, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !831
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !831
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24, !noalias !831
  br label %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.x, %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26, !noalias !831
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24, !noalias !831
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8, !tbaa !834
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !824
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11SortOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !834
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !836, !nonnull !231, !align !334
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !829  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !704
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !704
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void

_ZNSt10unique_ptrIN5arrow7compute11SortOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11SortOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #26, !inline_history !837
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPS6_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.419", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !824
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !838
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !840
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !841 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !82, !alias.scope !841
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !844
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11SortOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11SortOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.501", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !847 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !847
  invoke void @_ZN5arrow7compute11SortOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementE(ptr noundef nonnull align 8 dereferenceable(44) %i.a, ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.b unwind label %bb.e, !noalias !847

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !847 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !847 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !847, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !847, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !847
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %.pre.i.i.i.i26 = load i64, ptr %.phi.trans.insert.i.i.i.i25, align 8, !tbaa !93, !alias.scope !1189, !noalias !1186
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i27

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24, %bb.p
  %i.cm = phi i64 [ %.pre.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24 ], [ %i.ci, %bb.p ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 8
  store i64 %i.cm, ptr %i.co, align 8, !tbaa !93, !alias.scope !1186, !noalias !1189
  store ptr %i.cf, ptr %.0913.i.i.i19, align 8, !tbaa !90, !alias.scope !1189, !noalias !1186
  store i64 0, ptr %i.cn, align 8, !tbaa !93, !alias.scope !1189, !noalias !1186
  store i8 0, ptr %i.cf, align 8, !tbaa !92, !alias.scope !1189, !noalias !1186
  br label %_ZN5arrow7compute7SortKeyC2EOS1_.exit.i.i.i.i20

bb.q:                                             ; preds = %.lr.ph.i.i.i17
  %i.cp = load <2 x ptr>, ptr %.0913.i.i.i19, align 8, !tbaa !266, !alias.scope !1189, !noalias !1186
  store <2 x ptr> %i.cp, ptr %.014.i.i.i18, align 8, !tbaa !266, !alias.scope !1186, !noalias !1189
  %i.cq = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !255, !alias.scope !1189, !noalias !1186
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !255, !alias.scope !1186, !noalias !1189
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.0913.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !1189, !noalias !1186
  br label %_ZN5arrow7compute7SortKeyC2EOS1_.exit.i.i.i.i20

bb.r:                                             ; preds = %.lr.ph.i.i.i17
  unreachable

_ZN5arrow7compute7SortKeyC2EOS1_.exit.i.i.i.i20:  ; preds = %bb.q, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Move_ctor_baseILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS5_8FieldRefESaISE_EEEEC1EOSH_EUlOT_T0_E_OSt7variantIJS6_SC_SG_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESN_SQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i27, %bb.n, %.lr.ph.i.i.i17
  store i8 %i.by, ptr %i.bw, align 8, !tbaa !151, !alias.scope !1186, !noalias !1189
  %i.ct = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !153, !alias.scope !1189, !noalias !1186
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !153, !alias.scope !1186, !noalias !1189
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.0913.i.i.i19)
          to label %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 unwind label %bb.s, !inline_history !49

bb.s:                                             ; preds = %_ZN5arrow7compute7SortKeyC2EOS1_.exit.i.i.i.i20
  %i.cw = landingpad { ptr, i32 }
          catch ptr null
  %i.cx = extractvalue { ptr, i32 } %i.cw, 0
  tail call void @__clang_call_terminate(ptr %i.cx) #25, !inline_history !49
  unreachable

_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21: ; preds = %_ZN5arrow7compute7SortKeyC2EOS1_.exit.i.i.i.i20
  %i.cy = getelementptr inbounds nuw i8, ptr %.0913.i.i.i19, i64 48 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.cy, %i.b
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28, label %.lr.ph.i.i.i17, !llvm.loop !1185

_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28: ; preds = %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.bv, %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.cz, %_ZSt19__relocate_object_aIN5arrow7compute7SortKeyES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i21 ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !37
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.dd) #24
  br label %_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow7compute7SortKeyESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit28, %bb.t
  store ptr %i.p, ptr %0, align 8, !tbaa !45
  store ptr %.0.lcssa.i.i.i23, ptr %i.a, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.de, ptr %i.da, align 8, !tbaa !37
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19PartitionNthOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.543", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !1192
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !93
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_13NullPlacementEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1194 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !89
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !89
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1196 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i32, ptr %i.h, align 4, !tbaa !704
  %.val3.i5.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !704
  %i.j = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = select i1 %i.j, i1 %i.e, i1 false
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23, !noalias !1198 ; 7 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kPartitionNthOptionsTypeE, align 8, !tbaa !7, !noalias !1198
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !10, !noalias !1198
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19PartitionNthOptionsE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !1198
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !52, !noalias !1198
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !55, !noalias !1198
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1194 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !89
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  store i64 %i.i, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1196 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !704
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.l
  store i32 %i.n, ptr %i.o, align 4, !tbaa !704
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.557", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !1192
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1203
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !1204 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !82, !alias.scope !1204
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !1207
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19PartitionNthOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_13NullPlacementEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.571", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23, !noalias !1210 ; 10 uses
  %i.b = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_124kPartitionNthOptionsTypeE, align 8, !tbaa !7, !noalias !1210
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !10, !noalias !1210
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute19PartitionNthOptionsE, i64 16), ptr %i.a, align 8, !tbaa !12, !noalias !1210
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !52, !noalias !1210
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !55, !noalias !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !1213
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !82
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !307
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
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !82, !noalias !1215 ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !82, !alias.scope !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.d, !prof !85

bb.d:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.n = load ptr, ptr %3, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i11, label %bb.e, !prof !85

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #26, !inline_history !1218
  resume { ptr, i32 } %i.j

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19PartitionNthOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr null, ptr %0, align 8, !tbaa !82
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = ptrtoint ptr %i.a to i64
  store i64 %i.s, ptr %i.r, align 8, !tbaa !312
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i11: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #26, !inline_history !1218
  br label %_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute19PartitionNthOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute19PartitionNthOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_19PartitionNthOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow8internal11JoinStringsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESt17basic_string_viewIcS5_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 2, ptr nonnull @.str.60)
  %i.b = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.59, i64 noundef 1)
          to label %.noexc unwind label %bb.f     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !86, !alias.scope !1219
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %.thread, label %bb.b

.thread:                                          ; preds = %.noexc
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !93   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.h, ptr %i.l, align 8, !tbaa !93, !alias.scope !1219
end_hunk_2
begin_hunk_3_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !92
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.as = load ptr, ptr %3, align 8, !tbaa !90    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !92
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.i
  ret void

bb.p:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.h, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.ae, %bb.h ]
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ay) #25
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute14SelectKOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.583", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !1295
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !93
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14SelectKOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1297 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !89
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !89
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1299 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !44   ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !45
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
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.w, %i.ac
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit, !llvm.loop !828

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.ad = phi ptr [ %i.y, %bb.b ], [ %i.l, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.w, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %.01012.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %.01012.i.i.i.i.i.i
  %i.ah = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.ae, ptr noundef nonnull align 8 dereferenceable(44) %i.ag)
  br i1 %i.ah, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_14SelectKOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St6vectorINS0_7SortKeyESaISB_EEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.shrunk = phi i1 [ %i.e, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ %i.e, %bb.b ], [ false, %.lr.ph.i.i.i.i.i.i ]
  ret i1 %.shrunk
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.594", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1301 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1301
  invoke void @_ZN5arrow7compute14SelectKOptionsC1ElSt6vectorINS0_7SortKeyESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.e, !noalias !1301

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1301 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !1301 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1301, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !1301, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1301
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !1301
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24, !noalias !1301
  br label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.v, %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26, !noalias !1301
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24, !noalias !1301
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1304
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.p, align 8, !tbaa !1295
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1297 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !89
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i64 %i.t, ptr %i.u, align 8, !tbaa !89
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_14SelectKOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void

_ZNSt10unique_ptrIN5arrow7compute14SelectKOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #26, !inline_history !1306
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS7_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPS7_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.597", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !1295
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1307
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1309
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !1310 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !82, !alias.scope !1310
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !1313
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14SelectKOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14SelectKOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St6vectorINS0_7SortKeyESaIS8_EEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.598", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1316 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1316
  invoke void @_ZN5arrow7compute14SelectKOptionsC1ElSt6vectorINS0_7SortKeyESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef -1, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.e, !noalias !1316

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1316 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !1316 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1316, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !1316, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1316
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !1316
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24, !noalias !1316
  br label %_ZSt11make_uniqueIN5arrow7compute14SelectKOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

end_hunk_3
begin_hunk_4_@_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(15) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !436, !nonnull !231, !align !334 ; 6 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !89
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !319
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.f)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %4) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(15) %4, i64 noundef %i.h)
          to label %.noexc9 unwind label %bb.c    ; 0 uses

.noexc9:                                          ; preds = %.noexc8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #26
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute17CumulativeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.606", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %2, ptr %3, align 8, !tbaa !1373
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !277
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !93
  store i8 0, ptr %i.e, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !86
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !93
  store i8 0, ptr %i.h, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !274  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !92
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !277
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1375 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val3.i.i.i.i.i = load i8, ptr %i.e, align 8, !tbaa !58, !range !230, !noundef !231 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val5.i.i.i.i.i = load i8, ptr %i.f, align 8, !tbaa !58, !range !230, !noundef !231
  %i.g = trunc nuw i8 %.val3.i.i.i.i.i to i1
  %i.h = icmp eq i8 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.h, %i.g
  %i.i = icmp eq ptr %.val.i.i.i.i.i, %.val4.i.i.i.i.i
  %i.j = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.i, i1 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1377 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !481, !range !230, !noundef !231
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !481, !range !230, !noundef !231
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %narrow = select i1 %i.o, i1 %i.j, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.617", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1379 ; 6 uses
  invoke void @_ZN5arrow7compute17CumulativeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1379

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24, !noalias !1379
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1382
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1373
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_17CumulativeOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !1382
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1384, !nonnull !231, !align !334
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1377 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !481, !range !230, !noundef !231
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i8 %i.j, ptr %i.k, align 1, !tbaa !481
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #26, !inline_history !1385
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EEPSO_IS9_SaIS9_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.620", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !1373
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1386
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1388
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !82, !noalias !1389 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !82, !alias.scope !1389
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !1392
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17CumulativeOptionsEJNS_8internal18DataMemberPropertyIS3_St8optionalISt10shared_ptrINS_6ScalarEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.630", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1395 ; 8 uses
  invoke void @_ZN5arrow7compute17CumulativeOptionsC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1395

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24, !noalias !1395
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17CumulativeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.a, ptr %4, align 8, !tbaa !1398
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !82
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !307
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !85

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !82, !noalias !1400 ; 2 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !82, !alias.scope !1400
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %bb.e, !prof !85

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.k = load ptr, ptr %3, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !85

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #26, !inline_history !1385
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17CumulativeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  store ptr null, ptr %0, align 8, !tbaa !82
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !312
  br label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(41) %i.a) #26, !inline_history !1385
  br label %_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute17CumulativeOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute17CumulativeOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_17CumulativeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow4util13StringBuilderIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESG_DpOT_:bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #26
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.j)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc9
  %i.l = load ptr, ptr %6, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !93
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA26_KcJSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_SA_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEEvRSoOT_DpOT0_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11RankOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.644", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1498
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !274
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !93
  store i8 0, ptr %i.f, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !86
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !93
  store i8 0, ptr %i.i, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !93
  store i8 0, ptr %i.l, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !278
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #26
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !274  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !278  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !90 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !92
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !274
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !277
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11RankOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1500 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !45   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !45
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
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 48
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.r, %i.x
  br i1 %.not15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit, !llvm.loop !828

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.b
  %i.y = phi ptr [ %i.t, %bb.b ], [ %i.g, %.preheader.i.i.i.i.i.i ]
  %.01012.i.i.i.i.i.i = phi i64 [ %i.r, %bb.b ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %.01012.i.i.i.i.i.i
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %.01012.i.i.i.i.i.i
  %i.ac = tail call noundef zeroext i1 @_ZNK5arrow7compute7SortKey6EqualsERKS1_(ptr noundef nonnull align 8 dereferenceable(44) %i.z, ptr noundef nonnull align 8 dereferenceable(44) %i.ab) ; 3 uses
  br i1 %i.ac, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11RankOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaISA_EEEENS8_IS3_NS0_13NullPlacementEEENS8_IS3_NS3_10TiebreakerEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1502 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.val.i.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !704
  %.val3.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !704
  %i.ah = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1504 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %1, i64 %i.aj
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.aj
  %.val.i6.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !1506
  %.val3.i7.i.i.i.i = load i32, ptr %i.al, align 4, !tbaa !1506
  %i.am = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = select i1 %i.am, i1 %i.ah, i1 false
  %i.an = and i1 %.1.i.i.i.i.i.i, %3
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.180") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.656", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1507 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1507
  invoke void @_ZN5arrow7compute11RankOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementENS1_10TiebreakerE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2)
          to label %bb.b unwind label %bb.e, !noalias !1507

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1507 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !1507 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1507, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !1507, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1507
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.h = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i, label %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37, !noalias !1507
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #24, !noalias !1507
  br label %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ac, %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow7compute7SortKeyESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26, !noalias !1507
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #24, !noalias !1507
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.a, ptr %4, align 8, !tbaa !1510
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.o, align 8, !tbaa !1498
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11RankOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS9_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %4, align 8, !tbaa !1510   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1512, !nonnull !231, !align !334 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1502 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !704
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  store i32 %i.v, ptr %i.w, align 4, !tbaa !704
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1504 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !1506
  %i.ab = getelementptr inbounds i8, ptr %i.q, i64 %i.y
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !1506
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  ret void

_ZNSt10unique_ptrIN5arrow7compute11RankOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11RankOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #26, !inline_history !1513
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISV_EEPS6_ISt10shared_ptrINS_6ScalarEESaIS11_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.659", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1498
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1514
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1516
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !85

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !82, !noalias !1517 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !82, !alias.scope !1517
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !82, !alias.scope !1520
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11RankOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11RankOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINS0_7SortKeyESaIS7_EEEENS5_IS3_NS0_13NullPlacementEEENS5_IS3_NS3_10TiebreakerEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.175") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.660", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !1523 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1523
  invoke void @_ZN5arrow7compute11RankOptionsC1ESt6vectorINS0_7SortKeyESaIS3_EENS0_13NullPlacementENS1_10TiebreakerE(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2)
          to label %bb.b unwind label %bb.e, !noalias !1523

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1523 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !1523 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS2_8FieldRefESaISB_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(44) %.05.i.i.i.i)
          to label %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i unwind label %bb.c, !noalias !1523, !inline_history !49

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #25, !noalias !1523, !inline_history !49
  unreachable

_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !50

_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow7compute7SortKeyEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !45, !noalias !1523
  br label %_ZSt8_DestroyIPN5arrow7compute7SortKeyES2_EvT_S4_RSaIT0_E.exit.i.i

end_hunk_5
