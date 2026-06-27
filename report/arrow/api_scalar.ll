inline.NumInlined: 14067
inline.NumDeleted: 5439
begin_hunk_0_@_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !491
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !491
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !53
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !53
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute21AssumeTimezoneOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.316", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !494
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_9AmbiguousEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11NonexistentEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_21AssumeTimezoneOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21AssumeTimezoneOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS3_9AmbiguousEEENS8_IS3_NS3_11NonexistentEEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !498  ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !500
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !500
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = and i1 %i.j, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !501  ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i32, ptr %i.r, align 4, !tbaa !503
  %.val3.i9.i.i.i.i = load i32, ptr %i.s, align 4, !tbaa !503
  %i.t = icmp eq i32 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.u = and i1 %3, %i.t
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.328", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !504 ; 6 uses
  invoke void @_ZN5arrow7compute21AssumeTimezoneOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !504

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !504
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !507
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !494
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !507    ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !509, !nonnull !37, !align !368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !498  ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !500
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i32 %i.j, ptr %i.k, align 4, !tbaa !500
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !501  ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !503
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i32 %i.o, ptr %i.p, align 4, !tbaa !503
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !510
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSS_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.331", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !494
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !513
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_9AmbiguousEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11NonexistentEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !514
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21AssumeTimezoneOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS3_9AmbiguousEEENS5_IS3_NS3_11NonexistentEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.365", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !517 ; 8 uses
  invoke void @_ZN5arrow7compute21AssumeTimezoneOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !517

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !517
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !520
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_9AmbiguousEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11NonexistentEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute21AssumeTimezoneOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21AssumeTimezoneOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute21AssumeTimezoneOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute21AssumeTimezoneOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute21AssumeTimezoneOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute21AssumeTimezoneOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %4) #28
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(28) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #28
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.q = load ptr, ptr %6, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA28_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19ExtractRegexOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.472", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !819
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !821  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ExtractRegexOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.483", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !823 ; 6 uses
  invoke void @_ZN5arrow7compute19ExtractRegexOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !823

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !823
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !826
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !819
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !828
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.486", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !819
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !829
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !831
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !832
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ExtractRegexOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.493", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !835 ; 8 uses
  invoke void @_ZN5arrow7compute19ExtractRegexOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !835

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !835
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !838
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ExtractRegexOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !828
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ExtractRegexOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !828
  br label %_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute19ExtractRegexOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute19ExtractRegexOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_19ExtractRegexOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %4) #28
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(20) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #28
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.q = load ptr, ptr %6, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA20_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
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
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute23ExtractRegexSpanOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.505", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !873
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !875  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_23ExtractRegexSpanOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.516", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !877 ; 6 uses
  invoke void @_ZN5arrow7compute23ExtractRegexSpanOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !877

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !877
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !880
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !873
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_23ExtractRegexSpanOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !882
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.519", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !873
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !883
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !885
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ExtractRegexSpanOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !886
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ExtractRegexSpanOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.526", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !889 ; 8 uses
  invoke void @_ZN5arrow7compute23ExtractRegexSpanOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !889

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !889
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !892
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ExtractRegexSpanOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute23ExtractRegexSpanOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute23ExtractRegexSpanOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute23ExtractRegexSpanOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute23ExtractRegexSpanOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !882
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ExtractRegexSpanOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute23ExtractRegexSpanOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !882
  br label %_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute23ExtractRegexSpanOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute23ExtractRegexSpanOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_23ExtractRegexSpanOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  %i.q = load ptr, ptr %6, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA24_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11JoinOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.540", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !927
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11JoinOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !929  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !931
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !931
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !932  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i4.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i5.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !52
  %i.l = icmp eq i64 %.val3.i5.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.l, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %.val3.i5.i.i.i.i, 0
  br i1 %i.m, label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i4.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i5.i.i.i.i)
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %3 = and i1 %i.e, %i.n
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11JoinOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ %3, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::CopyImpl.551", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !934 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !47, !noalias !934
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !52, !noalias !934
  store i8 0, ptr %i.b, align 8, !tbaa !53, !noalias !934
  invoke void @_ZN5arrow7compute11JoinOptionsC1ENS1_20NullHandlingBehaviorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef 0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c, !noalias !934

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !50, !noalias !934 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !934
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30, !noalias !934
  br label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !50, !noalias !934 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !934
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #30, !noalias !934
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.t, %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !934
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !937
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.n, align 8, !tbaa !927
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !929  ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %2, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !931
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 %i.p
  store i32 %i.r, ptr %i.s, align 4, !tbaa !931
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !939
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISD_SaISD_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.554", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !927
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !940
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !942
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !943
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11JoinOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11JoinOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.561", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !946 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !47, !noalias !946
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !52, !noalias !946
  store i8 0, ptr %i.b, align 8, !tbaa !53, !noalias !946
  invoke void @_ZN5arrow7compute11JoinOptionsC1ENS1_20NullHandlingBehaviorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef 0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c, !noalias !946

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !50, !noalias !946 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !946
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30, !noalias !946
  br label %_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !50, !noalias !946 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.c
  %i.k = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !946
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #30, !noalias !946
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute11JoinOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !946
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11JoinOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.a, ptr %5, align 8, !tbaa !949
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.m, align 8, !tbaa !201
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.n, align 8, !tbaa !343
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11JoinOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_20NullHandlingBehaviorEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc.i unwind label %bb.d

end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal13StringifyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m:bb.a
  %i.im = load i64, ptr %i.hy, align 8, !tbaa !53
  store ptr %i.ia, ptr %i.hw, align 8, !tbaa !50
  %i.in = load i64, ptr %i.hc, align 8, !tbaa !52
  %i.io = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %i.in, ptr %i.io, align 8, !tbaa !52
  %i.ip = load i64, ptr %i.hb, align 8, !tbaa !53
  store i64 %i.ip, ptr %i.hy, align 8, !tbaa !53
  %.not.i16 = icmp eq ptr %i.hx, null
  br i1 %.not.i16, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hx, ptr %9, align 8, !tbaa !50
  store i64 %i.im, ptr %i.hb, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hb, ptr %9, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ar, %bb.as
  %i.iq = phi ptr [ %i.hx, %bb.ar ], [ %i.hb, %bb.as ], [ %i.ia, %bb.an ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hc, align 8, !tbaa !52
  store i8 0, ptr %i.iq, align 1, !tbaa !53
  %i.ir = load ptr, ptr %9, align 8, !tbaa !50    ; 2 uses
  %i.is = icmp eq ptr %i.ir, %i.hb
  br i1 %i.is, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.it = load i64, ptr %i.hb, align 8, !tbaa !53
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  store ptr %i.fy, ptr %7, align 8, !tbaa !43
  %i.iv = load i64, ptr %i.ga, align 8
  %i.iw = getelementptr inbounds i8, ptr %7, i64 %i.iv
  store ptr %i.fz, ptr %i.iw, align 8, !tbaa !43
  store ptr %i.gd, ptr %i.e, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ix, align 8, !tbaa !43
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !50 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.jb = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jb, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !53
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jd) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ix, align 8, !tbaa !43
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.je) #28
  store ptr %i.gn, ptr %7, align 8, !tbaa !43
  %i.jf = load i64, ptr %i.gp, align 8
  %i.jg = getelementptr inbounds i8, ptr %7, i64 %i.jf
  store ptr %i.go, ptr %i.jg, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.jh, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ji) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.at:                                            ; preds = %bb.c, %bb.b, %bb.a
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.d
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i26.i
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jm = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.ff
  br i1 %i.jn, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.av
  %i.jo = load i64, ptr %i.ff, align 8, !tbaa !53
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #30
  br label %.body

.body:                                            ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.au, %.body23.i
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %.body23.i ], [ %i.jk, %bb.au ], [ %i.jl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.jl, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aw

.body14:                                          ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aw

bb.aw:                                            ; preds = %.body14, %.body, %bb.at
  %.pn8 = phi { ptr, i32 } [ %i.ho, %.body14 ], [ %.pn, %.body ], [ %i.jj, %bb.at ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn8
}

declare void @_ZNK5arrow16KeyValueMetadata12sorted_pairsB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.586") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1107   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1109 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !53
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !53
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1110

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1107
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1111
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal22ForEachTupleMemberImplIJLm0ELm1ELm2EEJNS0_18DataMemberPropertyINS_7compute17MakeStructOptionsESt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISB_EEEENS2_IS4_S5_IbSaIbEEEENS2_IS4_S5_ISt10shared_ptrIKNS_16KeyValueMetadataEESaISL_EEEEERNS3_8internal11CompareImplIS4_EEEEvRKSt5tupleIJDpT0_EEOT1_St16integer_sequenceImJXspT_EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1136, !nonnull !37, !align !368 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1049 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1137, !nonnull !37, !align !368 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !77 ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load ptr, ptr %i.h, align 8, !tbaa !76 ; 2 uses
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !77 ; 2 uses
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val5.i = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.j = ptrtoint ptr %.val3.i to i64
  %i.k = ptrtoint ptr %.val.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 5
  %i.n = ptrtoint ptr %.val5.i to i64
  %i.o = ptrtoint ptr %.val4.i to i64
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i = icmp eq i64 %i.l, %i.p
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

.preheader.i.i:                                   ; preds = %bb.a
  %i.q = icmp eq ptr %.val3.i, %.val.i
  br i1 %i.q, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i
  %.0106.i.i = phi i64 [ %i.y, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.0106.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.val4.i, i64 %.0106.i.i ; 2 uses
  %.val.i.i = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.r, i64 8
  %.val12.i.i = load i64, ptr %i.t, align 8, !tbaa !52 ; 3 uses
  %.val13.i.i = load ptr, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %.val14.i.i = load i64, ptr %i.u, align 8, !tbaa !52
  %i.v = icmp eq i64 %.val12.i.i, %.val14.i.i
  br i1 %i.v, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq i64 %.val12.i.i, 0
  br i1 %i.w, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i: ; preds = %bb.b
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i, ptr readonly %.val13.i.i, i64 %.val12.i.i)
  %i.x = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.x, label %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit

_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %bb.b
  %i.y = add nuw i64 %.0106.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.m
  br i1 %exitcond.not.i.i, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !1138

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit: ; preds = %.lr.ph.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i, %bb.a, %.preheader.i.i
  %.1.i.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i.i ], [ false, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.i.i ], [ false, %.lr.ph.i.i ], [ true, %_ZN5arrow7compute8internalL13GenericEqualsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_SB_.exit.thread.i.i ]
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %3 = load i8, ptr %2, align 8, !tbaa !1022, !range !36, !noundef !37
  %4 = icmp ne i8 %3, 0
  %5 = and i1 %.1.i.i, %4                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1070 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.a, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.f, i64 %i.aa ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !81
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 2 uses
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = zext i32 %i.ag to i64
  %i.an = add nsw i64 %i.al, %i.am                ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !81
  %i.as = load ptr, ptr %i.ac, align 8, !tbaa !78 ; 2 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = zext i32 %i.ar to i64
  %i.ay = add nsw i64 %i.aw, %i.ax
  %.not.i.i6 = icmp eq i64 %i.an, %i.ay
  br i1 %.not.i.i6, label %.preheader.i.i8, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

.preheader.i.i8:                                  ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit
  %i.az = icmp eq i64 %i.an, 0
  br i1 %i.az, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit, label %.lr.ph.i.i9

bb.c:                                             ; preds = %.lr.ph.i.i9
  %i.ba = add nuw i64 %.01016.i.i, 1              ; 2 uses
  %.not19.i.i = icmp ult i64 %i.ba, %i.an
  br i1 %.not19.i.i, label %.lr.ph.i.i9, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit, !llvm.loop !1139

.lr.ph.i.i9:                                      ; preds = %.preheader.i.i8, %bb.c
  %.01016.i.i = phi i64 [ %i.ba, %bb.c ], [ 0, %.preheader.i.i8 ] ; 4 uses
  %i.bb = sdiv i64 %.01016.i.i, 64                ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = and i64 %.01016.i.i, -9223372036854775745
  %i.be = icmp ugt i64 %i.bd, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.be, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.bc, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bf = and i64 %.01016.i.i, 63
  %i.bg = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bb
  %storemerge.i.i.i.i.i14.i.i = getelementptr inbounds i8, ptr %i.bh, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.bi = load i64, ptr %storemerge.i.i.i.i.i14.i.i, align 8, !tbaa !352
  %i.bj = xor i64 %i.bi, %i.bg
  %i.bk = shl nuw i64 1, %i.bf
  %i.bl = and i64 %i.bj, %i.bk
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.c, label %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit

_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m.exit: ; preds = %bb.c, %.lr.ph.i.i9, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit, %.preheader.i.i8
  %.1.i.i7 = phi i1 [ false, %_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m.exit ], [ %5, %.preheader.i.i8 ], [ false, %.lr.ph.i.i9 ], [ %5, %bb.c ]
  %6 = zext i1 %.1.i.i7 to i8
  store i8 %6, ptr %2, align 8, !tbaa !1022
  tail call void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11CompareImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorISt10shared_ptrIKNS_16KeyValueMetadataEESaISC_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1136, !nonnull !37, !align !368
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1093 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1137, !nonnull !37, !align !368
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !85   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %.not.i = icmp eq i64 %i.m, %i.s
  br i1 %.not.i, label %.preheader.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

.preheader.i:                                     ; preds = %bb.a
  %i.t = icmp eq ptr %i.i, %i.j
  br i1 %i.t, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i
  %i.u = phi ptr [ %i.al, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ %i.j, %.preheader.i ]
  %.01015.i = phi i64 [ %i.aj, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.01015.i ; 3 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.01015.i ; 3 uses
  %.val9.i.i = load ptr, ptr %i.v, align 8, !tbaa !1102 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val9.i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i: ; preds = %.lr.ph.i
  %i.y = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val9.i.i)
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val8.i.i = load ptr, ptr %i.x, align 8, !tbaa !1102 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i10.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i: ; preds = %bb.b
  %i.aa = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val8.i.i)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, label %bb.c

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i, %bb.b, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit.i.i
  %.val7.pr.i.i = load ptr, ptr %i.v, align 8, !tbaa !1102 ; 2 uses
  %.not.i12.i.i = icmp eq ptr %.val7.pr.i.i, null
  br i1 %.not.i12.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i
  %i.ac = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val7.pr.i.i)
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.thread.i.i, %.lr.ph.i
  %.val.i.i = load ptr, ptr %i.x, align 8, !tbaa !1102 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i14.i.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i

bb.c:                                             ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit11.i.i
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !1102
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !1102
  %i.ag = tail call noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.af)
  br i1 %i.ag, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.ah = tail call noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %.val.i.i)
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit

_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i: ; preds = %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %bb.c, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.thread.i.i
  %i.aj = add nuw i64 %.01015.i, 1                ; 2 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %.not20.i = icmp ult i64 %i.aj, %i.ap
  br i1 %.not20.i, label %.lr.ph.i, label %_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit, !llvm.loop !1140

_ZN5arrow7compute8internalL13GenericEqualsISt10shared_ptrIKNS_16KeyValueMetadataEEEEbRKSt6vectorIT_SaIS8_EESC_.exit: ; preds = %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i, %bb.c, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i, %bb.a, %.preheader.i
  %.1.i = phi i1 [ false, %bb.a ], [ true, %.preheader.i ], [ true, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.thread.i ], [ false, %_ZN5arrow7compute8internalL7IsEmptyERKSt10shared_ptrIKNS_16KeyValueMetadataEE.exit13.i.i ], [ false, %bb.c ], [ false, %_ZN5arrow7compute8internalL13GenericEqualsERKSt10shared_ptrIKNS_16KeyValueMetadataEES7_.exit.i ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %4 = load i8, ptr %3, align 8, !tbaa !1022, !range !36, !noundef !37
  %5 = icmp ne i8 %4, 0
  %6 = and i1 %.1.i, %5
  %7 = zext i1 %6 to i8
  store i8 %7, ptr %3, align 8, !tbaa !1022
  ret void
}

declare noundef zeroext i1 @_ZNK5arrow16KeyValueMetadata6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

declare noundef i64 @_ZNK5arrow16KeyValueMetadata4sizeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1141, !nonnull !37, !align !368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1049
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.l, 9223372036854775776
  br i1 %i.m, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !59

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.n, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.i, ptr %i.h, ptr noundef %i.o)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.l) #30
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.s = load i64, ptr %i.d, align 8, !tbaa !1049
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  store ptr %i.o, ptr %i.t, align 8, !tbaa !77
  store ptr %i.p, ptr %i.v, align 8, !tbaa !76
  store ptr %i.r, ptr %i.x, align 8, !tbaa !70
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ] ; 3 uses
  %i.z = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !53
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.w
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.u to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ah) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal8CopyImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1141, !nonnull !37, !align !368
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1070 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.g to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.k to i64                     ; 2 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.r = add i64 %i.q, 63                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 2305843009213693944
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 3 uses
  %i.v = lshr i64 %i.r, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  %i.x = sdiv i64 %i.q, 64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  %i.z = and i64 %i.q, -9223372036854775745
  %i.aa = icmp ugt i64 %i.z, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.aa, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.y, i64 %storemerge.idx.i.i.i.i.i
  %i.ab = trunc i64 %i.q to i32
  %i.ac = and i32 %i.ab, 63
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i:     ; preds = %.noexc.i, %bb.a
  %.sroa.11.0 = phi i32 [ 0, %bb.a ], [ %i.ac, %.noexc.i ]
  %.sroa.84.0 = phi ptr [ null, %bb.a ], [ %storemerge.i.i.i.i.i, %.noexc.i ]
  %.sroa.145.0 = phi ptr [ null, %bb.a ], [ %i.w, %.noexc.i ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.u, %.noexc.i ] ; 4 uses
  %i.ad = icmp sgt i64 %i.n, 8
  br i1 %i.ad, label %bb.b, label %bb.c, !prof !204

bb.b:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0, ptr align 8 %i.g, i64 %i.n, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  %i.ae = icmp eq i64 %i.n, 8
  br i1 %i.ae, label %bb.d, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr %i.g, align 8, !tbaa !352
  store i64 %i.af, ptr %.sroa.0.0, align 8, !tbaa !352
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.d, %bb.c, %bb.b
  %.not.i28.i = icmp eq i32 %i.k, 0
  br i1 %.not.i28.i, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0, i64 %i.n
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.aw, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.512.019.i.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.018.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.017.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.016.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.ah = zext nneg i32 %.sroa.512.019.i.i.i.i.i.i.i to i64
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = load i64, ptr %.sroa.09.018.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ak = and i64 %i.aj, %i.ai
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i.i to i64
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ao = or i64 %i.an, %i.am
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ap = xor i64 %i.am, -1
  %i.aq = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !352
  %i.ar = and i64 %i.aq, %i.ap
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i:     ; preds = %bb.f, %bb.e
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.f ], [ %i.ao, %bb.e ]
end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !1497

_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !87, !alias.scope !1501, !noalias !1498
  store ptr null, ptr %i.y, align 8, !tbaa !88, !alias.scope !1501, !noalias !1498
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !87, !alias.scope !1498, !noalias !1501
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !1102, !alias.scope !1501, !noalias !1498
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !1497

_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIKN5arrow16KeyValueMetadataEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !85
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !86
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !74
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16MapLookupOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.731", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !1503
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16MapLookupOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1505 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !1507
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !1507
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1508 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %2, i64 %i.f
  %.val.i4.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !97 ; 3 uses
  %.val3.i5.i.i.i.i = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.i = icmp ne ptr %.val.i4.i.i.i.i, null
  %i.j = icmp ne ptr %.val3.i5.i.i.i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.k, align 8, !alias.scope !1510
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1513, !alias.scope !1510
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !1515, !alias.scope !1510
  %i.m = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %.val.i4.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(41) %.val3.i5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  br label %_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_16MapLookupOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_10OccurrenceEEENS8_IS3_St10shared_ptrINS_6ScalarEEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi i1 [ %i.m, %bb.b ], [ %i.n, %bb.c ]
  %i.o = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %4 = and i1 %i.o, %.0.i.i.i.i.i.i
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !1516 ; 5 uses
  invoke void @_ZN5arrow7compute16MapLookupOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1516

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !1516
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1505 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1507
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !1507
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1508 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !1508
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.s = phi i64 [ %i.i, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %i.i, %bb.d ], [ %.pre.i.i.i.i.i, %bb.e ]
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 8 uses
  store <2 x ptr> %i.m, ptr %i.t, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.w, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !93
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28, !inline_history !1519
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28, !inline_history !1519
  br label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.k, label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, !prof !59

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_ISA_SaISA_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.745", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !1503
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1520
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1522
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1523
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16MapLookupOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEENS5_IS3_St10shared_ptrINS_6ScalarEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.746", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !1526 ; 8 uses
  invoke void @_ZN5arrow7compute16MapLookupOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1526

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute16MapLookupOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !1526
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !1529
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_10OccurrenceEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16MapLookupOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute16MapLookupOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_16MapLookupOptions10OccurrenceEjEENS_6ResultIT_EET0_:.critedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1603
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1603
  call void @_ZN5arrow6ResultINS_7compute16MapLookupOptions10OccurrenceEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.r = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !204

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205, !range !36, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !53
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute21MatchSubstringOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.760", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !1608
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_21MatchSubstringOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1610 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_21MatchSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1612 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !322, !range !36, !noundef !37
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %i.p = and i1 %i.j, %i.o
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.771", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !1614 ; 6 uses
  invoke void @_ZN5arrow7compute21MatchSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1614

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.l, %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !1614
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1617
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1608
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !1617
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1619, !nonnull !37, !align !368
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1612 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !322, !range !36, !noundef !37
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i8 %i.j, ptr %i.k, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(49) %i.a) #28, !inline_history !1620
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.774", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !1608
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1621
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1623
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1624
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_21MatchSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.775", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !1627 ; 8 uses
  invoke void @_ZN5arrow7compute21MatchSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(49) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1627

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !1627
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !1630
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute21MatchSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_21MatchSubstringOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute21MatchSubstringOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute21MatchSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11NullOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute10PadOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.806", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1725
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_10PadOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1727 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1729 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i6.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i7.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !52
  %i.l = icmp eq i64 %.val3.i7.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.l, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %.val3.i7.i.i.i.i, 0
  br i1 %i.m, label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %3 = and i1 %i.e, %i.n
  br label %_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_10PadOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ %3, %bb.c ], [ %i.e, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1731 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !322, !range !36, !noundef !37
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %4 = and i1 %i.o, %i.t
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.817", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !1733 ; 7 uses
  invoke void @_ZN5arrow7compute10PadOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1733

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !1733
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1736
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1725
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1727 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !352
  %i.h = getelementptr inbounds i8, ptr %i.a, i64 %i.e
  store i64 %i.g, ptr %i.h, align 8, !tbaa !352
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !1736
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !1738, !nonnull !37, !align !368
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !1731 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !322, !range !36, !noundef !37
  %i.p = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #28, !inline_history !1739
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISC_SaISC_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.820", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1725
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1740
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1742
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1743
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_10PadOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_10PadOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.840", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !1746 ; 8 uses
  invoke void @_ZN5arrow7compute10PadOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1746

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !1746
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1749
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute10PadOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_10PadOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute10PadOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute10PadOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute10PadOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute10PadOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_7
begin_hunk_8_@_ZN5arrow6ResultIlEC2ERKNS_6StatusE:bb.a
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !53
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15ZeroFillOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.858", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !1840
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15ZeroFillOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1842 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1844 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i4.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i5.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !52
  %i.l = icmp eq i64 %.val3.i5.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.l, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %.val3.i5.i.i.i.i, 0
  br i1 %i.m, label %_ZN5arrow7compute8internal11CompareImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i4.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i5.i.i.i.i)
  %i.n = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %3 = and i1 %i.e, %i.n
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15ZeroFillOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i1 [ false, %bb.a ], [ %3, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.869", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !1846 ; 7 uses
  invoke void @_ZN5arrow7compute15ZeroFillOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1846

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.j, %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !1846
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !1849
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !1840
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1842 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !352
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store i64 %i.h, ptr %i.i, align 8, !tbaa !352
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !1851
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISC_SaISC_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.872", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !1840
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !1852
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !1854
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1855
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15ZeroFillOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.879", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !1858 ; 8 uses
  invoke void @_ZN5arrow7compute15ZeroFillOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1858

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !1858
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !1861
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute15ZeroFillOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15ZeroFillOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute15ZeroFillOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute15ZeroFillOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute15ZeroFillOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !1851
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15ZeroFillOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !345
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_:bb.a
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.q = load ptr, ptr %6, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA16_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19ReplaceSliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.895", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1912
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19ReplaceSliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1914 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1914 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !352
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !352
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = and i1 %i.e, %i.j                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1916 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l ; 2 uses
  %.val.i8.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val3.i9.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !52
  %i.q = icmp eq i64 %.val3.i9.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.q, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %.val3.i9.i.i.i.i, 0
  br i1 %i.r, label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i8.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i9.i.i.i.i)
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  %4 = and i1 %3, %i.s
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19ReplaceSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_NS8_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SJ_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.t = phi i1 [ false, %bb.a ], [ %4, %bb.c ], [ %3, %bb.b ]
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.906", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !1918 ; 8 uses
  invoke void @_ZN5arrow7compute19ReplaceSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1918

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.o, %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !1918
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !1921
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !1912
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1914 ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8, !tbaa !352
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.f
  store i64 %i.h, ptr %i.i, align 8, !tbaa !352
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1914 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !352
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  store i64 %i.m, ptr %i.n, align 8, !tbaa !352
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #28, !inline_history !1923
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISC_SaISC_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.909", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1912
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1924
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1926
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1927
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19ReplaceSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_NS5_IS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.910", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !1930 ; 8 uses
  invoke void @_ZN5arrow7compute19ReplaceSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1930

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !1930
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !1933
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute19ReplaceSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute19ReplaceSliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19ReplaceSliceOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute19ReplaceSliceOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute19ReplaceSliceOptionsEEclEPS2_.exit.i17
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_19ReplaceSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m:bb.a
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ez, %bb.bc ], [ %i.fj, %bb.bd ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fk, label %bb.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ba, %bb.ay
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i48, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.ax
  %i.fl = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.es, %bb.ax ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !205, !range !36, !noundef !37
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.cc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.bh ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bi
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bi ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute23ReplaceSubstringOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.920", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !1978
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_23ReplaceSubstringOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESO_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1980 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i

_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1980 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l ; 2 uses
  %.val.i6.i.i.i.i = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val3.i7.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !52 ; 3 uses
  %.val4.i8.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val5.i9.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !52
  %i.q = icmp eq i64 %.val3.i7.i.i.i.i, %.val5.i9.i.i.i.i
  br i1 %i.q, label %bb.d, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit

bb.d:                                             ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i
  %i.r = icmp eq i64 %.val3.i7.i.i.i.i, 0
  br i1 %i.r, label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %bcmp.i.i.i10.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i6.i.i.i.i, ptr readonly %.val4.i8.i.i.i.i, i64 %.val3.i7.i.i.i.i)
  %i.s = icmp eq i32 %bcmp.i.i.i10.i.i.i.i, 0
  %i.t = and i1 %i.j, %i.s
  br label %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESF_NS8_IS3_lEEEEEEERKS3_SJ_RKT_.exit: ; preds = %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i, %bb.d, %bb.e
  %i.u = phi i1 [ false, %_ZN5arrow7compute8internal11CompareImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m.exit.i.i.i.i ], [ %i.t, %bb.e ], [ %i.j, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1982 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.w
  %.val.i12.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !352
  %.val3.i13.i.i.i.i = load i64, ptr %i.y, align 8, !tbaa !352
  %i.z = icmp eq i64 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %i.aa = and i1 %i.u, %i.z
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.931", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29, !noalias !1984 ; 6 uses
  invoke void @_ZN5arrow7compute23ReplaceSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1984

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.m, %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #30, !noalias !1984
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !1987
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !1978
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 1)
          to label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6

_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc
  %i.f = load ptr, ptr %3, align 8, !tbaa !1987
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !1989, !nonnull !37, !align !368
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1982 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !352
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !352
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit6: ; preds = %.noexc, %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(88) %i.a) #28, !inline_history !1990
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSP_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.934", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !1978
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !1991
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !1993
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !1994
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_23ReplaceSubstringOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESC_NS5_IS3_lEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.935", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29, !noalias !1997 ; 8 uses
  invoke void @_ZN5arrow7compute23ReplaceSubstringOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1997

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #30, !noalias !1997
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute23ReplaceSubstringOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute23ReplaceSubstringOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute23ReplaceSubstringOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_23ReplaceSubstringOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
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
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIlED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12RoundOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.943", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !2044
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2046 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2048 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2050
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2050
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2051 ; 5 uses
  invoke void @_ZN5arrow7compute12RoundOptionsC1ElNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef 0, i8 noundef signext 8)
          to label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2051

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !2051
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2046 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !352
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2048 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !2050
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !2050
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.957", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !2044
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2054
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2057
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12RoundOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12RoundOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.976", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2060 ; 8 uses
  invoke void @_ZN5arrow7compute12RoundOptionsC1ElNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef 0, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2060

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !2060
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !2063
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute12RoundOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #28, !inline_history !2065
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12RoundOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #28, !inline_history !2065
  br label %_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute12RoundOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute12RoundOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_12RoundOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_11
begin_hunk_12_@_ZNK5arrow6Status11WithMessageIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEES0_DpOT_:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(26) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(19) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(26) %1) #28
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(26) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !352
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !353
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #28
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %4) #28
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(19) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #28
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !37, !align !368
  %i.q = load ptr, ptr %6, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA26_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA19_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
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
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn18
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute20RoundTemporalOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1044", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !53
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESK_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2205 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2207 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i10.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !2209
  %.val3.i11.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !2209
  %i.j = icmp eq i8 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %3 = and i1 %i.e, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2210 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i12.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i13.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !322, !range !36, !noundef !37
  %i.o = icmp eq i8 %.val.i12.i.i.i.i, %.val3.i13.i.i.i.i
  %4 = and i1 %3, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2210 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i14.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i15.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !322, !range !36, !noundef !37
  %i.t = icmp eq i8 %.val.i14.i.i.i.i, %.val3.i15.i.i.i.i
  %i.u = and i1 %4, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !2210 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.w
  %.val.i16.i.i.i.i = load i8, ptr %i.x, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i17.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !322, !range !36, !noundef !37
  %i.z = icmp eq i8 %.val.i16.i.i.i.i, %.val3.i17.i.i.i.i
  %i.aa = and i1 %i.u, %i.z
  ret i1 %i.aa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !2212 ; 8 uses
  invoke void @_ZN5arrow7compute20RoundTemporalOptionsC1EiNS0_12CalendarUnitEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1, i8 noundef signext 6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2212

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30, !noalias !2212
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2205 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2207 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !2209
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !2209
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2210 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !322, !range !36, !noundef !37
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i8 %i.p, ptr %i.q, align 1, !tbaa !322
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2210 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !322, !range !36, !noundef !37
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.s
  store i8 %i.u, ptr %i.v, align 1, !tbaa !322
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !2210 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !322, !range !36, !noundef !37
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISR_EEPSL_ISt10shared_ptrINS_6ScalarEESaISX_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1059", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_PSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %3, ptr noundef %4)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2215
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_20RoundTemporalOptionsEJNS_8internal18DataMemberPropertyIS3_iEENS5_IS3_NS0_12CalendarUnitEEENS5_IS3_bEES9_S9_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1077", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !noalias !2218 ; 8 uses
  invoke void @_ZN5arrow7compute20RoundTemporalOptionsC1EiNS0_12CalendarUnitEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef 1, i8 noundef signext 6, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2218

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.k, %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #30, !noalias !2218
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEEPS3_RKNS_12StructScalarERKT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(120) %i.c)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.c, !prof !204

bb.c:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.g = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i14, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i14, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i14

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute20RoundTemporalOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28, !inline_history !2221
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_20RoundTemporalOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = ptrtoint ptr %i.a to i64
  store i64 %i.p, ptr %i.o, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit15

_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i14: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28, !inline_history !2221
  br label %_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit15

_ZNSt10unique_ptrIN5arrow7compute20RoundTemporalOptionsESt14default_deleteIS2_EED2Ev.exit15: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute20RoundTemporalOptionsEEclEPS2_.exit.i14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_iEENS8_IS3_NS0_12CalendarUnitEEENS8_IS3_bEESC_SC_EEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(120) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr %1, ptr %0, align 8, !tbaa !2222
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #29 ; 18 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %i.l, align 8, !tbaa !52
  store i8 0, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 0, ptr %i.o, align 8, !tbaa !52
  store i8 0, ptr %i.n, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !47
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i64 0, ptr %i.r, align 8, !tbaa !52
  store i8 0, ptr %i.q, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_20RoundTemporalOptionsEEclINS_8internal18DataMemberPropertyIS3_iEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0)
          to label %.noexc7 unwind label %bb.a

end_hunk_12
begin_hunk_13_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_12CalendarUnitEaEENS_6ResultIT_EET0_:.critedge

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !53
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute22RoundToMultipleOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1102", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !2343
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_22RoundToMultipleOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::EqualOptions", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2345 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !97 ; 3 uses
  %.val3.i.i.i.i.i = load ptr, ptr %i.d, align 8  ; 3 uses
  %i.e = icmp ne ptr %.val.i.i.i.i.i, null
  %i.f = icmp ne ptr %.val3.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 16777472, ptr %i.g, align 8, !alias.scope !2347
  store double 1.000000e-05, ptr %3, align 8, !tbaa !1513, !alias.scope !2347
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !1515, !alias.scope !2347
  %i.i = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %.val.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(41) %.val3.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  br label %_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_22RoundToMultipleOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS8_IS3_NS0_9RoundModeEEEEEEEERKS3_SH_RKT_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2350 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i4.i.i.i.i = load i8, ptr %i.m, align 1, !tbaa !2050
  %.val3.i5.i.i.i.i = load i8, ptr %i.n, align 1, !tbaa !2050
  %i.o = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %4 = and i1 %.0.i.i.i.i.i.i, %i.o
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2352 ; 5 uses
  invoke void @_ZN5arrow7compute22RoundToMultipleOptionsC1EdNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, double noundef 1.000000e+00, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2352

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !2352
  resume { ptr, i32 } %i.b

_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2345 ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88   ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !2345
  br label %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.n = phi i64 [ %i.d, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ], [ %i.d, %bb.d ], [ %.pre.i.i.i.i.i, %bb.e ]
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !88   ; 8 uses
  store <2 x ptr> %i.h, ptr %i.o, align 8, !tbaa !87
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 8, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !93
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !2355
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !2355
  br label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.u, %bb.i ], [ %i.ae, %bb.j ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.af, label %bb.k, label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, !prof !59

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6ScalarEEC2ERKS2_.exit.i.i.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !2350 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !2050
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.ah
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !2050
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_IS8_SaIS8_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1116", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !2343
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2356
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2358
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2359
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_22RoundToMultipleOptionsEJNS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEENS5_IS3_NS0_9RoundModeEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1123", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2362 ; 8 uses
  invoke void @_ZN5arrow7compute22RoundToMultipleOptionsC1EdNS0_9RoundModeE(ptr noundef nonnull align 8 dereferenceable(33) %i.a, double noundef 1.000000e+00, i8 noundef signext 8)
          to label %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2362

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute22RoundToMultipleOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !2362
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !2365
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_St10shared_ptrINS_6ScalarEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEEclINS_8internal18DataMemberPropertyIS3_NS0_9RoundModeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_22RoundToMultipleOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute22RoundToMultipleOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
end_hunk_13
begin_hunk_14_@_ZN5arrow7compute8internal17ValidateEnumValueINS0_16SetLookupOptions20NullMatchingBehaviorEjEENS_6ResultIT_EET0_:.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !2558
  call void @_ZN5arrow6ResultINS_7compute16SetLookupOptions20NullMatchingBehaviorEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.r = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !204

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205, !range !36, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.v = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.b
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.x = load i64, ptr %i.b, align 8, !tbaa !53
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.aa = load ptr, ptr %4, align 8, !tbaa !50    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.b
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12SliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1172", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2563
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEES9_S9_EEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12SliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESH_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2565 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2565 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i6.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !352
  %.val3.i7.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !352
  %i.j = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = and i1 %i.e, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2565 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i8.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !352
  %.val3.i9.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !352
  %i.o = icmp eq i64 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %4 = and i1 %3, %i.o
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2567 ; 6 uses
  invoke void @_ZN5arrow7compute12SliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2567

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !2567
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2565 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !352
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2565 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !352
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !352
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !2565 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !352
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i64 %i.p, ptr %i.q, align 8, !tbaa !352
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISO_EEPSI_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1186", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2563
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2570
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2572
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2573
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEES6_S6_EEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1187", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2576 ; 8 uses
  invoke void @_ZN5arrow7compute12SliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2576

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #30, !noalias !2576
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2579
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute12SliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28, !inline_history !2581
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = ptrtoint ptr %i.a to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute12SliceOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute12SliceOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
end_hunk_14
begin_hunk_15_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m:bb.a
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !88 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.dk, align 8, !tbaa !91
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !93
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
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
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIlED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute16ListSliceOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1199", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_St8optionalIlEEES9_NS8_IS3_SA_IbEEEEEEEERKS3_RKT_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(50) %2, ptr noundef nonnull align 8 dereferenceable(96) %i.a)
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !53
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_16ListSliceOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESM_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2608 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2610 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g ; 2 uses
  %.val.i8.i.i.i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val3.i9.i.i.i.i = load i8, ptr %i.j, align 8, !tbaa !2612, !range !36, !noundef !37 ; 2 uses
  %.val4.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val5.i.i.i.i.i = load i8, ptr %i.k, align 8, !tbaa !2612, !range !36, !noundef !37
  %i.l = trunc nuw i8 %.val3.i9.i.i.i.i to i1
  %i.m = icmp eq i8 %.val3.i9.i.i.i.i, %.val5.i.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.m, %i.l
  %i.n = icmp eq i64 %.val.i8.i.i.i.i, %.val4.i.i.i.i.i
  %i.o = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.n, i1 %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2608 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i10.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !352
  %.val3.i11.i.i.i.i = load i64, ptr %i.s, align 8, !tbaa !352
  %i.t = icmp eq i64 %.val.i10.i.i.i.i, %.val3.i11.i.i.i.i
  %3 = and i1 %i.o, %i.t
  %4 = and i1 %i.e, %3
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !2613 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %2, i64 %i.v ; 2 uses
  %.val.i12.i.i.i.i = load i8, ptr %i.w, align 1
  %i.y = getelementptr i8, ptr %i.w, i64 1
  %.val3.i13.i.i.i.i = load i8, ptr %i.y, align 1, !tbaa !33, !range !36, !noundef !37 ; 2 uses
  %.val4.i14.i.i.i.i = load i8, ptr %i.x, align 1
  %i.z = getelementptr i8, ptr %i.x, i64 1
  %.val5.i15.i.i.i.i = load i8, ptr %i.z, align 1, !tbaa !33, !range !36, !noundef !37
  %i.aa = trunc nuw i8 %.val3.i13.i.i.i.i to i1
  %i.ab = icmp eq i8 %.val3.i13.i.i.i.i, %.val5.i15.i.i.i.i ; 2 uses
  %brmerge.not.i.i.i16.i.i.i.i = and i1 %i.ab, %i.aa
  %i.ac = icmp eq i8 %.val.i12.i.i.i.i, %.val4.i14.i.i.i.i
  %i.ad = select i1 %brmerge.not.i.i.i16.i.i.i.i, i1 %i.ac, i1 %i.ab
  %5 = and i1 %4, %i.ad
  ret i1 %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2615 ; 7 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2615

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2615
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2608 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !352
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2610 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.j, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 %i.i ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %.sroa.2.0.copyload.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2608 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !352
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 %i.m
  store i64 %i.o, ptr %i.p, align 8, !tbaa !352
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !2613 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  %.sroa.0.0.copyload.i8.i.i.i.i = load i16, ptr %i.s, align 1
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 %i.r
  store i16 %.sroa.0.0.copyload.i8.i.i.i.i, ptr %i.t, align 1
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EEPSN_ISt10shared_ptrINS_6ScalarEESaISZ_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1214", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2618
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2620
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2622
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIlEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 2)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %.noexc6.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 noundef 3)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc7.i, %.noexc6.i, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.h

_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc7.i
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2623
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_16ListSliceOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_St8optionalIlEEES6_NS5_IS3_S7_IbEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1215", align 8 ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2626 ; 8 uses
  invoke void @_ZN5arrow7compute16ListSliceOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(50) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2626

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.i, %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2626
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2629
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIlEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 2)
          to label %.noexc6.i unwind label %bb.c

.noexc6.i:                                        ; preds = %.noexc5.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef 3)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc6.i, %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute16ListSliceOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !205, !range !36, !noundef !37
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute16ListSliceOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.p = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !205, !range !36, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute16ListSliceOptionsEEclEPS2_.exit.i17

end_hunk_15
begin_hunk_16_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_16ListSliceOptionsEEclINS_8internal18DataMemberPropertyIS3_St8optionalIbEEEEEvRKT_m:bb.a
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.bc ], [ %i.en, %bb.bd ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dz) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ba, %bb.ay
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !201  ; 2 uses
  %.not.i.i46 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i46, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.ax
  %i.ep = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dw, %bb.ax ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !205, !range !36, !noundef !37
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultISt8optionalIbEED2Ev.exit:        ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.pn11 = phi { ptr, i32 } [ %i.cs, %bb.aj ], [ %i.ct, %bb.ak ], [ %i.ct, %bb.al ], [ %i.ct, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN5arrow6ResultISt8optionalIbEED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultISt8optionalIbEED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bh
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bh ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute19SplitPatternOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1234", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2725
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_19SplitPatternOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESP_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2727 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_19SplitPatternOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_lEENS8_IS3_bEEEEEEERKS3_SK_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2729 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !352
  %.val3.i7.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !352
  %i.o = icmp eq i64 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = and i1 %i.j, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2731 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !322, !range !36, !noundef !37
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.u = and i1 %3, %i.t
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1245", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !2733 ; 6 uses
  invoke void @_ZN5arrow7compute19SplitPatternOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2733

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !2733
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !2736
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !2725
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !2736   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !2738, !nonnull !37, !align !368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2729 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !352
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i64 %i.j, ptr %i.k, align 8, !tbaa !352
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2731 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !322, !range !36, !noundef !37
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(57) %i.a) #28, !inline_history !2739
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSQ_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1248", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2725
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2740
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2742
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2743
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_19SplitPatternOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1249", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29, !noalias !2746 ; 8 uses
  invoke void @_ZN5arrow7compute19SplitPatternOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(57) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2746

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #30, !noalias !2746
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2749
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute19SplitPatternOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute19SplitPatternOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute19SplitPatternOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute19SplitPatternOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute19SplitPatternOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_16
begin_hunk_17_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_19SplitPatternOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
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
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute12SplitOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1257", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !2812
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_lEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2814 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !352
  %.val3.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !352
  %i.e = icmp eq i64 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2816 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i8, ptr %i.h, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i5.i.i.i.i = load i8, ptr %i.i, align 1, !tbaa !322, !range !36, !noundef !37
  %i.j = icmp eq i8 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2818 ; 5 uses
  invoke void @_ZN5arrow7compute12SplitOptionsC1Elb(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef -1, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2818

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !2818
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2814 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !352
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i64 %i.f, ptr %i.g, align 8, !tbaa !352
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2816 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !322, !range !36, !noundef !37
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.k, ptr %i.l, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1271", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !2812
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !2821
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !2823
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2824
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_12SplitOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_12SplitOptionsEJNS_8internal18DataMemberPropertyIS3_lEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1272", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !2827 ; 8 uses
  invoke void @_ZN5arrow7compute12SplitOptionsC1Elb(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i64 noundef -1, i1 noundef zeroext false)
          to label %_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2827

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !2827
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !2830
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_lEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute12SplitOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #28, !inline_history !2832
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(25) %i.a) #28, !inline_history !2832
  br label %_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute12SplitOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute12SplitOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_12SplitOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
end_hunk_17
begin_hunk_18_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_12SplitOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  store i32 0, ptr %i.do, align 4, !tbaa !93
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28, !inline_history !395
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
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
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15StrftimeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1278", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2878
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2880 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrftimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1289", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29, !noalias !2882 ; 6 uses
  invoke void @_ZN5arrow7compute15StrftimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2882

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #30, !noalias !2882
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !2885
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !2878
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #28, !inline_history !2887
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1292", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2878
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2888
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2890
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2891
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrftimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1293", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29, !noalias !2894 ; 8 uses
  invoke void @_ZN5arrow7compute15StrftimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2894

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #30, !noalias !2894
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2897
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrftimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #28, !inline_history !2887
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #28, !inline_history !2887
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute15StrftimeOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute15StrftimeOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrftimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_18
begin_hunk_19_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrftimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m:bb.a
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ez, %bb.bc ], [ %i.fj, %bb.bd ]
  %i.fk = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fk, label %bb.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ba, %bb.ay
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i48 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i48, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.ax
  %i.fl = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.es, %bb.ax ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !205, !range !36, !noundef !37
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cd, %bb.ag ], [ %i.cc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.bh ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bi
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bi ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute15StrptimeOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1303", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !2926
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29 ; 11 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %i.j, align 8, !tbaa !52
  store i8 0, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 0, ptr %i.m, align 8, !tbaa !52
  store i8 0, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8TimeUnit4typeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef 1)
          to label %.noexc8.i unwind label %bb.b

.noexc8.i:                                        ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.b ], [ %i.ae, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc8.i, %.noexc7.i, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit: ; preds = %.noexc8.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.z = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_RKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_15StrptimeOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESR_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2928 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_15StrptimeOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS8_IS3_NS_8TimeUnit4typeEEENS8_IS3_bEEEEEEERKS3_SM_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2930 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.l
  %.val.i6.i.i.i.i = load i32, ptr %i.m, align 4, !tbaa !2932
  %.val3.i7.i.i.i.i = load i32, ptr %i.n, align 4, !tbaa !2932
  %i.o = icmp eq i32 %.val.i6.i.i.i.i, %.val3.i7.i.i.i.i
  %3 = and i1 %i.j, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !2933 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.q
  %.val.i8.i.i.i.i = load i8, ptr %i.r, align 1, !tbaa !322, !range !36, !noundef !37
  %.val3.i9.i.i.i.i = load i8, ptr %i.s, align 1, !tbaa !322, !range !36, !noundef !37
  %i.t = icmp eq i8 %.val.i8.i.i.i.i, %.val3.i9.i.i.i.i
  %i.u = and i1 %3, %i.t
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1314", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2935 ; 6 uses
  invoke void @_ZN5arrow7compute15StrptimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(53) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2935

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.q, %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2935
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %3, align 8, !tbaa !2938
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !2926
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !2938   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !2940, !nonnull !37, !align !368 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2930 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2932
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  store i32 %i.j, ptr %i.k, align 4, !tbaa !2932
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !2933 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !322, !range !36, !noundef !37
  %i.p = getelementptr inbounds i8, ptr %i.e, i64 %i.m
  store i8 %i.o, ptr %i.p, align 1, !tbaa !322
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(53) %i.a) #28, !inline_history !2941
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSS_ISt10shared_ptrINS_6ScalarEESaISY_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1317", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !2926
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !2942
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !2944
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8TimeUnit4typeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 1)
          to label %.noexc6.i unwind label %bb.b

.noexc6.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 noundef 2)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc6.i, %.noexc.i, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %.noexc6.i
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !2945
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_15StrptimeOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_IS3_NS_8TimeUnit4typeEEENS5_IS3_bEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1318", align 8 ; 9 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !2948 ; 8 uses
  invoke void @_ZN5arrow7compute15StrptimeOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(53) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !2948

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.h, %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !2948
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !2951
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8TimeUnit4typeEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1)
          to label %.noexc5.i unwind label %bb.c

.noexc5.i:                                        ; preds = %.noexc.i
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef 2)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc5.i, %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute15StrptimeOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !205, !range !36, !noundef !37
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit: ; preds = %.noexc5.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_15StrptimeOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.o = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute15StrptimeOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205, !range !36, !noundef !37
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNKSt14default_deleteIN5arrow7compute15StrptimeOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute15StrptimeOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute15StrptimeOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
end_hunk_19
begin_hunk_20_@_ZN5arrow7compute8internal17ValidateEnumValueINS_8TimeUnit4typeEjEENS_6ResultIT_EET0_:.critedge
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !50, !noalias !3029 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53, !noalias !3029
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3029
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3029
  call void @_ZN5arrow6ResultINS_8TimeUnit4typeEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.q = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !204

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !205, !range !36, !noundef !37
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.e, %bb.f
  %i.u = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !53
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !50     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.b
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.body
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !53
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %eh.lpad-body

bb.h:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute18StructFieldOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1330", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !3034
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS_8FieldRefEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESI_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %class.anon.1333, align 8           ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !3036 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.a, ptr %3, align 8, !tbaa !3038
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.d, ptr %i.f, align 8, !tbaa !3040
  call void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZSteqIJN5arrow9FieldPathENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorINS4_8FieldRefESaISD_EEEEbRKSt7variantIJDpT_EESL_EUlOT_T0_E_JRKSG_IJS5_SB_SF_EEEEDcOSO_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.e), !inline_history !3042
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.g = load i8, ptr %i.a, align 1, !tbaa !322, !range !36, !noundef !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %4 = trunc nuw i8 %i.g to i1
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1346", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !3043 ; 6 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3043

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !3043
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !3046
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !3034
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISP_EEPSJ_ISt10shared_ptrINS_6ScalarEESaISV_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1355", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !3034
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !3049
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !3051
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !3052
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_18StructFieldOptionsEJNS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1356", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29, !noalias !3055 ; 8 uses
  invoke void @_ZN5arrow7compute18StructFieldOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3055

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #30, !noalias !3055
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !3058
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEEclINS_8internal18DataMemberPropertyIS3_NS_8FieldRefEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute18StructFieldOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_18StructFieldOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #28, !inline_history !3048
  br label %_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute18StructFieldOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute18StructFieldOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_18StructFieldOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_20
begin_hunk_21_@_ZN5arrow6ResultINS_8FieldRefEEC2ERKNS_6StatusE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.223, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !53
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !53
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !50     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !53
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #31
  unreachable
}

declare void @_ZN5arrow8FieldRef11FromDotPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.1357") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute11TrimOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1366", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %3, align 8, !tbaa !3140
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !52
  store i8 0, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !76
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.w, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit: ; preds = %bb.a
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !77   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !53
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_RKT_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3142 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val5.i.i.i.i.i = load i64, ptr %i.f, align 8, !tbaa !52
  %i.g = icmp eq i64 %.val3.i.i.i.i.i, %.val5.i.i.i.i.i
  br i1 %i.g, label %bb.b, label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %.val3.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val.i.i.i.i.i, ptr readonly %.val4.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit

_ZN5arrow7compute8internal11CompareImplINS0_11TrimOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEEERKS3_SI_RKT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::CopyImpl.1377", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !3144 ; 6 uses
  invoke void @_ZN5arrow7compute11TrimOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3144

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.e, %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !3144
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %3, align 8, !tbaa !3147
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !3140
  invoke void @_ZN5arrow7compute8internal8CopyImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit5: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !3149
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorISB_SaISB_EEPSO_ISt10shared_ptrINS_6ScalarEESaISU_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1380", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %5, align 8, !tbaa !3140
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !3150
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.d, align 8, !tbaa !3152
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !205, !range !36, !noundef !37
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.e

_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !201  ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !3153
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_11TrimOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_11TrimOptionsEJNS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1381", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !noalias !3156 ; 8 uses
  invoke void @_ZN5arrow7compute11TrimOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3156

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.f, %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #30, !noalias !3156
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.a, ptr %4, align 8, !tbaa !3159
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8, !tbaa !201
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.e, align 8, !tbaa !343
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEEclINS_8internal18DataMemberPropertyIS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow7compute11TrimOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !205, !range !36, !noundef !37
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !3149
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_11TrimOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = ptrtoint ptr %i.a to i64
  store i64 %i.u, ptr %i.t, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #28, !inline_history !3149
  br label %_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute11TrimOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute11TrimOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_11TrimOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_21
begin_hunk_22_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_11WeekOptionsEEclINS_8internal18DataMemberPropertyIS3_bEEEEvRKT_m:bb.a
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !53
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
  br i1 %i.dy, label %bb.az, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !59

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.av, %bb.at
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !201  ; 2 uses
  %.not.i.i43 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i43, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !396

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.as
  %i.dz = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i ], [ %i.dg, %bb.as ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !205, !range !36, !noundef !37
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit
  ret void

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.pn11 = phi { ptr, i32 } [ %i.cb, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.ah ], [ %i.cc, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit, %bb.x
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %_ZN5arrow6ResultIbED2Ev.exit ], [ %i.bn, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZN5arrow8FieldRefD2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.bc
  %.pn11.pn.pn = phi { ptr, i32 } [ %.pn11.pn, %bb.bc ], [ %i.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.bg, %_ZN5arrow8FieldRefD2Ev.exit26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn11.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute19FunctionOptionsTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_EN11OptionsTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9type_nameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr @_ZN5arrow7compute13RandomOptions9kTypeNameE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType9StringifyB5cxx11ERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::compute::internal::StringifyImpl.1441", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %2, ptr %3, align 8, !tbaa !3302
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29 ; 8 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !52
  store i8 0, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %i.i, align 8, !tbaa !52
  store i8 0, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 0)
          to label %.noexc7.i unwind label %bb.b

.noexc7.i:                                        ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_mEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef 1)
          to label %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.e, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.b ], [ %i.aa, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %.noexc7.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #28
  br label %common.resume

_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit: ; preds = %.noexc7.i
  invoke void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !53
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !95

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.c
  %i.v = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #30
  br label %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit

_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.e:                                             ; preds = %_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEEC2INS_8internal13PropertyTupleIJNS6_18DataMemberPropertyIS3_NS3_11InitializerEEENS8_IS3_mEEEEEEERKS3_RKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType7CompareERKNS0_15FunctionOptionsESJ_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !3304 ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 %i.b
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.b
  %.val.i.i.i.i.i = load i32, ptr %i.c, align 4, !tbaa !3306
  %.val3.i.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !3306
  %i.e = icmp eq i32 %.val.i.i.i.i.i, %.val3.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !3307 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %2, i64 %i.g
  %.val.i4.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !352
  %.val3.i5.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !352
  %i.j = icmp eq i64 %.val.i4.i.i.i.i, %.val3.i5.i.i.i.i
  %3 = and i1 %i.e, %i.j
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType4CopyERKNS0_15FunctionOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.223") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !3309 ; 5 uses
  invoke void @_ZN5arrow7compute13RandomOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !3309

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !3309
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !3304 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3306
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  store i32 %i.f, ptr %i.g, align 4, !tbaa !3306
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3307 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !352
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i64 %i.k, ptr %i.l, align 8, !tbaa !352
  store ptr %i.a, ptr %0, align 8, !tbaa !326
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType14ToStructScalarERKNS0_15FunctionOptionsEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEPSK_ISt10shared_ptrINS_6ScalarEESaISW_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.arrow::compute::internal::ToStructScalarImpl.1455", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %2, ptr %5, align 8, !tbaa !3302
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !201
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !3312
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !3314
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_mEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 1)
          to label %_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.c, !prof !204

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !205, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.f

_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !201  ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !201, !alias.scope !3315
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow7compute8internal18ToStructScalarImplINS0_13RandomOptionsEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN5arrow7compute8internal22GetFunctionOptionsTypeINS0_13RandomOptionsEJNS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEENS5_IS3_mEEEEEPKNS0_19FunctionOptionsTypeEDpRKT0_ENK11OptionsType16FromStructScalarERKNS_12StructScalarE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.219") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %4 = alloca %"struct.arrow::compute::internal::FromStructScalarImpl.1473", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29, !noalias !3318 ; 8 uses
  invoke void @_ZN5arrow7compute13RandomOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !3318

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.g, %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #30, !noalias !3318
  br label %common.resume

_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.a, ptr %4, align 8, !tbaa !3321
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !201
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_NS3_11InitializerEEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef 0)
          to label %.noexc.i unwind label %bb.c

.noexc.i:                                         ; preds = %_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEEclINS_8internal18DataMemberPropertyIS3_mEEEEvRKT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 noundef 1)
          to label %_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.i, %_ZSt11make_uniqueIN5arrow7compute13RandomOptionsEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.d, !prof !204

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !205, !range !36, !noundef !37
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit: ; preds = %.noexc.i
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  store ptr %i.l, ptr %3, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread, label %bb.f, !prof !204

bb.f:                                             ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  %i.n = load ptr, ptr %3, align 8, !tbaa !201    ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i17, label %bb.g, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !205, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i17, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i17

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28, !inline_history !3323
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow7compute8internal20FromStructScalarImplINS0_13RandomOptionsEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr null, ptr %0, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = ptrtoint ptr %i.a to i64
  store i64 %i.v, ptr %i.u, align 8, !tbaa !345
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i17: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #28, !inline_history !3323
  br label %_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit18

_ZNSt10unique_ptrIN5arrow7compute13RandomOptionsESt14default_deleteIS2_EED2Ev.exit18: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow7compute13RandomOptionsEEclEPS2_.exit.i17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal13StringifyImplINS0_13RandomOptionsEE6FinishB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
end_hunk_22
