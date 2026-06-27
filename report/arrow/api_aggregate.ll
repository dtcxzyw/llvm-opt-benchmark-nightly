inline.NumInlined: 5278
inline.NumDeleted: 2139
begin_hunk_0_@_ZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_:bb.a
          to label %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !114, !align !228
  %i.n = load i32, ptr %4, align 4, !tbaa !3
  %i.o = zext i32 %i.n to i64
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.o)
          to label %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E2_clIS4_EEDaSI_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA19_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_S2_RjEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.q, %bb.c ], [ %i.r, %bb.d ], [ %i.t, %bb.f ], [ %i.s, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn12
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11ModeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.307", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !471
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !116
  store i8 0, ptr %i.f, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !116
  store i8 0, ptr %i.i, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !116
  store i8 0, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !135
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #25
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !117
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11ModeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !473  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !215
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !215
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !475  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !183, !range !113, !noundef !114
  %.val3.i7.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !183, !range !113, !noundef !114
  %i.j = icmp eq i8 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !477  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !3
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %narrow = select i1 %i.p, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !479 ; 6 uses
  invoke void @_ZN5arrow7compute11ModeOptionsC1Elbj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 1, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !479

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26, !noalias !479
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !473  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !215
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !475  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !183, !range !113, !noundef !114
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !477  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.322", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !471
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !482
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !484
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !104, !range !113, !noundef !114
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !485
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11ModeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11ModeOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.342", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !488 ; 8 uses
  invoke void @_ZN5arrow7compute11ModeOptionsC1Elbj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 1, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !488

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26, !noalias !488
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11ModeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !491
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !206
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !104, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #25
  br label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !103

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.o = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !103

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !104, !range !113, !noundef !114
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25, !inline_history !493
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11ModeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !208
  br label %_ZNSt10unique_ptrIN5arrow7compute11ModeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute11ModeOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !117
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !130    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !117
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !117
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15VarianceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.362", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #24 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !82
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !116
  store i8 0, ptr %i.f, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !116
  store i8 0, ptr %i.i, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !116
  store i8 0, ptr %i.l, align 8, !tbaa !117
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !135
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
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #25
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !117
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15VarianceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !590  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !592  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !183, !range !113, !noundef !114
  %.val3.i7.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !183, !range !113, !noundef !114
  %i.j = icmp eq i8 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !594  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !3
  %.val3.i9.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !3
  %i.o = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  %narrow = select i1 %i.p, i1 %i.e, i1 false
  ret i1 %narrow
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !596 ; 6 uses
  invoke void @_ZN5arrow7compute15VarianceOptionsC1Eibj(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !596

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26, !noalias !596
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !590  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !592  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !183, !range !113, !noundef !114
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !183
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !594  ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i32 %i.p, ptr %i.q, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.376", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !588
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !599
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !601
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !104, !range !113, !noundef !114
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !602
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15VarianceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15VarianceOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.394", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !605 ; 8 uses
  invoke void @_ZN5arrow7compute15VarianceOptionsC1Eibj(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !605

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26, !noalias !605
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15VarianceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !608
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !206
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
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !104, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #25
  br label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !103

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.o = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !103

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !104, !range !113, !noundef !114
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(28) %i.a) #25, !inline_history !610
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15VarianceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !208
  br label %_ZNSt10unique_ptrIN5arrow7compute15VarianceOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute15VarianceOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !38
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11SkewOptionsEEclINS_8internal18DataMemberPropertyIS3_jEEEEvRKT_m:bb.a
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dk, align 8, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !140
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #25, !inline_history !269
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #25, !inline_history !269
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.ax ], [ %i.dx, %bb.ay ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !131

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !100  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !270

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !104, !range !113, !noundef !114
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIjED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIjED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIjED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15QuantileOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.442", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !117
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15QuantileOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !773  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !59 ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !59 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !65
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
  %.val.i.i.i.i.i.i = load double, ptr %i.o, align 8, !tbaa !63
  %.val12.i.i.i.i.i.i = load double, ptr %i.p, align 8, !tbaa !63
  %i.q = fcmp oeq double %.val.i.i.i.i.i.i, %.val12.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.0105.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %i.r, %i.j
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit, !llvm.loop !775

_ZN5arrow7compute8internal11CompareImplINS0_15QuantileOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_NS3_13InterpolationEEENS8_IS3_bEENS8_IS3_jEEEEEEERKS3_SJ_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !776  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.t
  %.val.i8.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !778
  %.val3.i9.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !778
  %i.w = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !779  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.y
  %.val.i10.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !183, !range !113, !noundef !114
  %.val3.i11.i.i.i.i = load i8, ptr %i.aa, align 1, !tbaa !183, !range !113, !noundef !114
  %i.ab = icmp eq i8 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !781 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %.val.i12.i.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !3
  %.val3.i13.i.i.i.i = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ag = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.ah = and i1 %i.ab, %i.ag
  %3 = select i1 %i.ah, i1 %i.w, i1 false
  %i.ai = and i1 %.1.i.i.i.i.i.i, %3
  ret i1 %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !783 ; 9 uses
  invoke void @_ZN5arrow7compute15QuantileOptionsC1EdNS1_13InterpolationEbj(ptr noundef nonnull align 8 dereferenceable(52) %i.a, double noundef 5.000000e-01, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !783

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.ar, %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26, !noalias !783
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !773  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !59   ; 4 uses
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
  br i1 %i.m, label %.noexc.i.i.i.i.i.i.i, label %bb.d, !prof !131

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6

.noexc:                                           ; preds = %.noexc.i.i.i.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24
          to label %.noexc3 unwind label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6 ; 6 uses

.noexc3:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 3 uses
  %i.p = icmp samesign ugt i64 %i.k, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !270

bb.e:                                             ; preds = %.noexc3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

bb.f:                                             ; preds = %.noexc3
  %i.q = icmp eq i64 %i.k, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.h, align 8, !tbaa !63
  store double %i.r, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i:      ; preds = %bb.g, %bb.f, %bb.e, %.thread6.i.i.i.i.i
  %i.s = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.l, %.thread6.i.i.i.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ null, %.thread6.i.i.i.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  store ptr %i.t, ptr %i.u, align 8, !tbaa !59
  store ptr %i.s, ptr %i.w, align 8, !tbaa !65
  store ptr %i.s, ptr %i.x, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #26
  br label %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i.i.i.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !776 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !778
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !778
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !779 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !183, !range !113, !noundef !114
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !183
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !781 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.an
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void

_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit6: ; preds = %bb.d, %.noexc.i.i.i.i.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(52) %i.a) #25, !inline_history !786
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISU_EEPS6_ISt10shared_ptrINS_6ScalarEESaIS10_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.459", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !787
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !100
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !789
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !791
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
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !104, !range !113, !noundef !114
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.h

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit: ; preds = %.noexc7.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !792
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15QuantileOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15QuantileOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_NS3_13InterpolationEEENS5_IS3_bEENS5_IS3_jEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.503", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !795 ; 8 uses
  invoke void @_ZN5arrow7compute15QuantileOptionsC1EdNS1_13InterpolationEbj(ptr noundef nonnull align 8 dereferenceable(52) %i.a, double noundef 5.000000e-01, i32 noundef 0, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute15QuantileOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !795

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIN5arrow7compute15QuantileOptionsESt14default_deleteIS2_EED2Ev.exit ]
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_15QuantileOptions13InterpolationEjEENS_6ResultIT_EET0_:.critedge
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !130, !noalias !1007 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !117, !noalias !1007
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1007
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !1007
  call void @_ZN5arrow6ResultINS_7compute15QuantileOptions13InterpolationEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.r = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !103

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !104, !range !113, !noundef !114
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !117
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !130   ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !117
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute14TDigestOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.549", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !134  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !117
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #26
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_14TDigestOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1012 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !59 ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !65 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !59 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !65
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
  %.val.i.i.i.i.i.i = load double, ptr %i.o, align 8, !tbaa !63
  %.val12.i.i.i.i.i.i = load double, ptr %i.p, align 8, !tbaa !63
  %i.q = fcmp oeq double %.val.i.i.i.i.i.i, %.val12.i.i.i.i.i.i ; 2 uses
  %i.r = add nuw i64 %.0105.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp ne i64 %i.r, %i.j
  %or.cond.not = select i1 %i.q, i1 %exitcond.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit, !llvm.loop !775

_ZN5arrow7compute8internal11CompareImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_SH_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1014 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %2, i64 %i.t
  %.val.i10.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3
  %.val3.i11.i.i.i.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = icmp eq i32 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1014 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds i8, ptr %2, i64 %i.y
  %.val.i12.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !3
  %.val3.i13.i.i.i.i = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ab = icmp eq i32 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1016 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %1, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %.val.i14.i.i.i.i = load i8, ptr %i.ae, align 1, !tbaa !183, !range !113, !noundef !114
  %.val3.i15.i.i.i.i = load i8, ptr %i.af, align 1, !tbaa !183, !range !113, !noundef !114
  %i.ag = icmp eq i8 %.val.i14.i.i.i.i, %.val3.i15.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1014 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %.val.i16.i.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !3
  %.val3.i17.i.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.al = icmp eq i32 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.am = and i1 %i.ag, %i.al
  %3 = select i1 %i.am, i1 %i.ab, i1 false
  %4 = select i1 %3, i1 %i.w, i1 false
  %i.an = and i1 %.1.i.i.i.i.i.i, %4
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !1018 ; 10 uses
  invoke void @_ZN5arrow7compute14TDigestOptionsC1Edjjbj(ptr noundef nonnull align 8 dereferenceable(56) %i.a, double noundef 5.000000e-01, i32 noundef 100, i32 noundef 500, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1018

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.aw, %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26, !noalias !1018
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1012 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !59   ; 4 uses
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
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.d, !prof !131

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24
          to label %.noexc6 unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5 ; 6 uses

.noexc6:                                          ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k ; 3 uses
  %i.p = icmp samesign ugt i64 %i.k, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !270

bb.e:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

bb.f:                                             ; preds = %.noexc6
  %i.q = icmp eq i64 %i.k, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.r = load double, ptr %i.h, align 8, !tbaa !63
  store double %i.r, ptr %i.n, align 8, !tbaa !63
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i:            ; preds = %bb.g, %bb.f, %bb.e, %.thread6.i.i
  %i.s = phi ptr [ %i.o, %bb.e ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.l, %.thread6.i.i ] ; 2 uses
  %i.t = phi ptr [ %i.n, %bb.e ], [ %i.n, %bb.f ], [ %i.n, %bb.g ], [ null, %.thread6.i.i ]
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !62
  store ptr %i.t, ptr %i.u, align 8, !tbaa !59
  store ptr %i.s, ptr %i.w, align 8, !tbaa !65
  store ptr %i.s, ptr %i.x, align 8, !tbaa !62
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ab) #26
  br label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1014 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1014 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %i.ai
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1016 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !183, !range !113, !noundef !114
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !183
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1014 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %2, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = getelementptr inbounds i8, ptr %i.a, i64 %i.as
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void

_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %bb.d, %.noexc.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #25, !inline_history !1021
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPS6_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISS_EEPS6_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.564", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEERKS3_RKT_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPS9_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %3, ptr noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100  ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !1022
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_14TDigestOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_14TDigestOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS5_IS3_jEESA_NS5_IS3_bEESA_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.571", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !1025 ; 8 uses
  invoke void @_ZN5arrow7compute14TDigestOptionsC1Edjjbj(ptr noundef nonnull align 8 dereferenceable(56) %i.a, double noundef 5.000000e-01, i32 noundef 100, i32 noundef 500, i1 noundef zeroext true, i32 noundef 0)
          to label %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1025

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26, !noalias !1025
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorIdSaIdEEEENS8_IS3_jEESD_NS8_IS3_bEESD_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute14TDigestOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute14TDigestOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !103

bb.c:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_14TDigestOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.g = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute14TDigestOptionsEEclEPS2_.exit.i14, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !104, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKSt14default_deleteIN5arrow7compute14TDigestOptionsEEclEPS2_.exit.i14, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZNKSt14default_deleteIN5arrow7compute14TDigestOptionsEEclEPS2_.exit.i14
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA15_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
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
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute17PivotWiderOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.585", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %2, ptr %3, align 8, !tbaa !1102
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !82
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !116
  store i8 0, ptr %i.e, align 8, !tbaa !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !116
  store i8 0, ptr %i.h, align 8, !tbaa !117
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_21UnexpectedKeyBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !135  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !117
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !136

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !134
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #26
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_17PivotWiderOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESS_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1104 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !134 ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !135 ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !134 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !135
  %i.g = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.h = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 5
  %i.k = ptrtoint ptr %.val5.i.i.i.i.i to i64
  %i.l = ptrtoint ptr %.val4.i.i.i.i.i to i64
  %i.m = sub i64 %i.k, %i.l
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.n = icmp eq ptr %.val3.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %i.n, label %_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i
  %.0106.i.i.i.i.i.i = phi i64 [ %i.v, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i, i64 %.0106.i.i.i.i.i.i ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %.val4.i.i.i.i.i, i64 %.0106.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val12.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !116 ; 3 uses
  %.val13.i.i.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.val14.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !116
  %i.s = icmp eq i64 %.val12.i.i.i.i.i.i, %.val14.i.i.i.i.i.i
  br i1 %i.s, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.t = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.t, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i.i.i.i.i

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i.i, ptr readonly %.val13.i.i.i.i.i.i, i64 %.val12.i.i.i.i.i.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.u, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i.i.i.i.i, %bb.b
  %i.v = add nuw i64 %.0106.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.v, %i.j
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1106

_ZN5arrow7compute8internal11CompareImplINS0_17PivotWiderOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISF_EEEENS8_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEEERKS3_SN_RKT_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i.i.i.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i, %bb.a, %.preheader.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi i1 [ true, %.preheader.i.i.i.i.i.i ], [ false, %bb.a ], [ false, %.lr.ph.i.i.i.i.i.i ], [ false, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i.i.i.i.i ], [ true, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !1107 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.x
  %.val.i4.i.i.i.i = load i32, ptr %i.y, align 4, !tbaa !1109
  %.val3.i5.i.i.i.i = load i32, ptr %i.z, align 4, !tbaa !1109
  %i.aa = icmp eq i32 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %i.ab = and i1 %.1.i.i.i.i.i.i, %i.aa
  ret i1 %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.119") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.597", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1110 ; 6 uses
  invoke void @_ZN5arrow7compute17PivotWiderOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1110

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #26, !noalias !1110
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1113
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1102
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !1113
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1115, !nonnull !114, !align !228
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1107 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1109
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i32 %i.j, ptr %i.k, align 4, !tbaa !1109
  store ptr %i.a, ptr %0, align 8, !tbaa !189
  ret void

_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #25, !inline_history !1116
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSE_PS6_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.600", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %2, ptr %5, align 8, !tbaa !1102
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !100
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1117
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1119
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_21UnexpectedKeyBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !104, !range !113, !noundef !114
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !100, !alias.scope !1120
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_17PivotWiderOptionsEJNS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEEENS5_IS3_NS3_21UnexpectedKeyBehaviorEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.623", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !1123 ; 8 uses
  invoke void @_ZN5arrow7compute17PivotWiderOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1123

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #26, !noalias !1123
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.a, ptr %4, align 8, !tbaa !1126
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_21UnexpectedKeyBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute17PivotWiderOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !104, !range !113, !noundef !114
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #25
  br label %_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !103

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_17PivotWiderOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  %i.n = load ptr, ptr %3, align 8, !tbaa !100    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute17PivotWiderOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !103

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !104, !range !113, !noundef !114
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute17PivotWiderOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25
  br label %_ZNKSt14default_deleteIN5arrow7compute17PivotWiderOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute17PivotWiderOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(44) %i.a) #25, !inline_history !1116
  br label %common.resume

end_hunk_4
