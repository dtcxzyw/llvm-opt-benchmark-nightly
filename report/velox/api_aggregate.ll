inline.NumInlined: 4356
inline.NumDeleted: 1798
begin_hunk_0_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_12CountOptions9CountModeEjEENS_6ResultIT_EET0_:.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(3) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !344, !nonnull !137, !align !190 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %1) #23
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(19) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !68
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %3) #23
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %3, i64 noundef %i.i)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.k = load i32, ptr %4, align 4, !tbaa !3
  %i.l = zext i32 %i.k to i64
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.l)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA19_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEEvRSoOT_DpOT0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.n
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11ModeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.267", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !442
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !68
  store i8 0, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !68
  store i8 0, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !68
  store i8 0, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !70
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !444  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !84
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !84
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !446  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !135, !range !136, !noundef !137
  %.val3.i7.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !135, !range !136, !noundef !137
  %i.j = icmp eq i8 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !448  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !3
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %3 = and i1 %i.e, %i.p
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !450 ; 6 uses
  invoke void @_ZN5arrow7compute11ModeOptionsC1Elbj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 1, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !450

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24, !noalias !450
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !444  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !446  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !135, !range !136, !noundef !137
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !448  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.282", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !442
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !453
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !455
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !456 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !61, !alias.scope !456
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !459
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.296", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !462 ; 8 uses
  invoke void @_ZN5arrow7compute11ModeOptionsC1Elbj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 1, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !462

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24, !noalias !462
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !465
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !61, !noalias !467 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !61, !alias.scope !467
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !64

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.l = load ptr, ptr %3, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #23, !inline_history !470
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr null, ptr %0, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !168
  br label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #23, !inline_history !470
  br label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.as = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !70
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
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
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15VarianceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.310", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #22 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !68
  store i8 0, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !68
  store i8 0, ptr %i.i, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !68
  store i8 0, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !130
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_iEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #23
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !70
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !567  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !569  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !135, !range !136, !noundef !137
  %.val3.i7.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !135, !range !136, !noundef !137
  %i.j = icmp eq i8 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !571  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !3
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %3 = and i1 %i.e, %i.p
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !573 ; 6 uses
  invoke void @_ZN5arrow7compute15VarianceOptionsC1Eibj(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !573

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24, !noalias !573
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !567  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !569  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !135, !range !136, !noundef !137
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !135
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !571  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.324", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !565
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !576
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !578
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_iEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !579 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !61, !alias.scope !579
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !582
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.336", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !585 ; 8 uses
  invoke void @_ZN5arrow7compute15VarianceOptionsC1Eibj(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !585

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #24, !noalias !585
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !588
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !163
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_iEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !61, !noalias !590 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !61, !alias.scope !590
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.e, !prof !64

bb.e:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.l = load ptr, ptr %3, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i11, label %bb.f, !prof !64

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i11

_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #23, !inline_history !593
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store ptr null, ptr %0, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = ptrtoint ptr %i.a to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !168
  br label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i11: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #23, !inline_history !593
  br label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit12

_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit12: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultIiEC2ERKNS_6StatusE:bb.a
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.o, !prof !91

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !83    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !83    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !70
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.as = load ptr, ptr %3, align 8, !tbaa !83    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !70
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
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
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15QuantileOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.353", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !70
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !690  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30 ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.g = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = ptrtoint ptr %.val5.i.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.n = icmp eq ptr %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.n, label %_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0105.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.0105.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val4.i.i.i.i.i, i64 %.0105.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load double, ptr %i.o, align 8, !tbaa !34
  %.val12.i.i.i.i.i.i = load double, ptr %i.p, align 8, !tbaa !34
  %i.q = fcmp oeq double %.val.i.i.i.i.i.i, %.val12.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.0105.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %i.r, %i.j
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit, !llvm.loop !692

_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !693  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.t
  %.val.i8.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !695
  %.val3.i9.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !695
  %i.w = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !696  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.y
  %.val.i10.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !135, !range !136, !noundef !137
  %.val3.i11.i.i.i.i = load i8, ptr %i.aa, align 1, !tbaa !135, !range !136, !noundef !137
  %i.ab = icmp eq i8 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !698 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %.val.i12.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !3
  %.val3.i13.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ag = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.ah = and i1 %i.ab, %i.ag
  %i.ai = and i1 %3, %i.ah
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22, !noalias !700 ; 9 uses
  invoke void @_ZN5arrow7compute15QuantileOptionsC1EdNS1_13InterpolationEbj(ptr noundef nonnull align 8 dereferenceable(52) %i.a, double noundef 5.000000e-01, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !700

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.ar, %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #24, !noalias !700
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !690  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.thread6.i.i.i.i.i, label %bb.c

.thread6.i.i.i.i.i:                               ; preds = %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.k
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.m = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %bb.d, !prof !91

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc3 unwind label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6 ; 6 uses

.noexc3:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 3 uses
  %i.p = icmp samesign ugt i64 %i.k, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !232

bb.e:                                             ; preds = %.noexc3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.noexc3
  %i.q = icmp eq i64 %i.k, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.h, align 8, !tbaa !34
  store double %i.r, ptr %i.n, align 8, !tbaa !34
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i:      ; preds = %bb.g, %bb.f, %bb.e, %.thread6.i.i.i.i.i
  %i.s = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.l, %.thread6.i.i.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ null, %.thread6.i.i.i.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  store ptr %i.s, ptr %i.w, align 8, !tbaa !36
  store ptr %i.s, ptr %i.x, align 8, !tbaa !33
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #24
  br label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !693 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !695
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !695
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !696 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !135, !range !136, !noundef !137
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !135
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !698 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  ret void

_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6: ; preds = %bb.d, %.noexc.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(52) %i.a) #23, !inline_history !703
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EEPS6_ISt10shared_ptrINS_6ScalarEESaIS10_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.370", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !704
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !706
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !708
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_13InterpolationEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 2)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %.noexc6.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef 3)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc7.i, %.noexc6.i, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !64

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit: ; preds = %.noexc7.i
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !709 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !61, !alias.scope !709
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !712
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.414", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22, !noalias !715 ; 8 uses
  invoke void @_ZN5arrow7compute15QuantileOptionsC1EdNS1_13InterpolationEbj(ptr noundef nonnull align 8 dereferenceable(52) %i.a, double noundef 5.000000e-01, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !715

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_15QuantileOptions13InterpolationEjEENS_6ResultIT_EET0_:.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !70, !noalias !942
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !83, !noalias !942 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.q, align 8, !tbaa !70, !noalias !942
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !942
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !942
  call void @_ZN5arrow6ResultINS_7compute15QuantileOptions13InterpolationEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.u = load ptr, ptr %3, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !64

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e
  %i.v = load ptr, ptr %4, align 8, !tbaa !83     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.c, align 8, !tbaa !70
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !83    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !70
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute14TDigestOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.458", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !83 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !70
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !131

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #24
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !947  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !30 ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.g = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = ptrtoint ptr %.val5.i.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.n = icmp eq ptr %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.n, label %_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0105.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %.0105.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val4.i.i.i.i.i, i64 %.0105.i.i.i.i.i.i
  %.val.i.i.i.i.i.i = load double, ptr %i.o, align 8, !tbaa !34
  %.val12.i.i.i.i.i.i = load double, ptr %i.p, align 8, !tbaa !34
  %i.q = fcmp oeq double %.val.i.i.i.i.i.i, %.val12.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.0105.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %i.r, %i.j
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit, !llvm.loop !692

_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !949  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.t
  %.val.i10.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3
  %.val3.i11.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = icmp eq i32 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %3 = and i1 %.1.i.i.i.i.i.i, %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !949  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.y
  %.val.i12.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !3
  %.val3.i13.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %4 = and i1 %3, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !951 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %.val.i14.i.i.i.i = load i8, ptr %i.ae, align 1, !tbaa !135, !range !136, !noundef !137
  %.val3.i15.i.i.i.i = load i8, ptr %i.af, align 1, !tbaa !135, !range !136, !noundef !137
  %i.ag = icmp eq i8 %.val.i14.i.i.i.i, %.val3.i15.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !949 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %.val.i16.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !3
  %.val3.i17.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.al = icmp eq i32 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.am = and i1 %i.ag, %i.al
  %i.an = and i1 %4, %i.am
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.105") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22, !noalias !953 ; 10 uses
  invoke void @_ZN5arrow7compute14TDigestOptionsC1Edjjbj(ptr noundef nonnull align 8 dereferenceable(56) %i.a, double noundef 5.000000e-01, i32 noundef 100, i32 noundef 500, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !953

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.aw, %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #24, !noalias !953
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !947  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.thread6.i.i, label %bb.c

.thread6.i.i:                                     ; preds = %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = getelementptr inbounds i8, ptr null, i64 %i.k
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.m = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.d, !prof !91

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
          to label %.noexc6 unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5 ; 6 uses

.noexc6:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 3 uses
  %i.p = icmp samesign ugt i64 %i.k, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !232

bb.e:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

bb.f:                                             ; preds = %.noexc6
  %i.q = icmp eq i64 %i.k, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.h, align 8, !tbaa !34
  store double %i.r, ptr %i.n, align 8, !tbaa !34
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i:            ; preds = %bb.g, %bb.f, %bb.e, %.thread6.i.i
  %i.s = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.l, %.thread6.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ null, %.thread6.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !33
  store ptr %i.t, ptr %i.u, align 8, !tbaa !30
  store ptr %i.s, ptr %i.w, align 8, !tbaa !36
  store ptr %i.s, ptr %i.x, align 8, !tbaa !33
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #24
  br label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !949 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !949 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !951 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !135, !range !136, !noundef !137
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !135
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !949 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !143
  ret void

_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %bb.d, %.noexc.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #23, !inline_history !956
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPS6_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.473", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_RKT_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPS9_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %3, ptr noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !957 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !61, !alias.scope !957
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !61, !alias.scope !960
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.100") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.474", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22, !noalias !963 ; 8 uses
  invoke void @_ZN5arrow7compute14TDigestOptionsC1Edjjbj(ptr noundef nonnull align 8 dereferenceable(56) %i.a, double noundef 5.000000e-01, i32 noundef 100, i32 noundef 500, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !963

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #24, !noalias !963
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61, !noalias !966 ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !61, !alias.scope !966
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !64

bb.c:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.g = load ptr, ptr %3, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute14TDigestOptionsEEclEPS2_.exit.i9, label %bb.d, !prof !64

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZNKSt14default_deleteIN5arrow7compute14TDigestOptionsEEclEPS2_.exit.i9

_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
end_hunk_3
